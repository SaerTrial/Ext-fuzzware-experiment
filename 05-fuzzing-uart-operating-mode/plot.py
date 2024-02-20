import pandas as pd
import numpy as np
import scipy.stats as stats
import matplotlib.pyplot as plt
import random
import json

fill_color_polling = '#d8dcec'
dot_color_polling = '#4f7ead'
label_polling = 'Polling Mode'
dot_color_interrupt = '#f4861f'
fill_color_interrupt =  '#ffe4c4' #''
label_interrupt = 'Interrupt Mode'

MAX_PW_CHAR = 8
MAX_PROJ = 10
MAX_TIMING = 86400


class DataSet:
    def __init__(self) -> None:
        self.medians = []
        self.computed_medians = []
        self.low_bound = []
        self.upper_bound = []
        self.processed_dataset = []
        self.mode = None

def median_CI(data, ci, p):
	'''
	data: pandas datafame/series or numpy array
	ci: confidence level
	p: percentile' percent, for median it is 0.5
	output: a list with two elements, [lowerBound, upperBound]
	'''
	if type(data) is pd.Series or type(data) is pd.DataFrame:
		#transfer data into np.array
		data = data.values

	#flat to one dimension array
	data = data.reshape(-1)
	data = np.sort(data)
	N = data.shape[0]
	
	lowCount, upCount = stats.binom.interval(ci, N, p, loc=0)
	#given this: https://onlinecourses.science.psu.edu/stat414/node/316
	#lowCount and upCount both refers to  W's value, W follows binomial Dis.
	#lowCount need to change to lowCount-1, upCount no need to change in python indexing
	lowCount -= 1
	# print lowCount, upCount
	return data[int(lowCount)], data[int(upCount)]


def cal_plot_data(processed_dataset, mode):
    dataset = DataSet()
    dataset.processed_dataset = processed_dataset
    for nth_pw_char in range(MAX_PW_CHAR):
        typed_dataset = np.array(processed_dataset[nth_pw_char])
        if len(typed_dataset) == 0:
            break
        median = np.median(typed_dataset)
        dataset.medians.append(median)
        if median not in typed_dataset:
            dataset.computed_medians.append(median)
        else:
            dataset.computed_medians.append(None)
        
        if len(typed_dataset) == 1:
            pass
        if len(typed_dataset) == 2:
            data = np.append(typed_dataset, median)
            data = pd.Series(data)
            low, upper = median_CI(data, 0.66, 0.5)
            if low == upper:
                dataset.low_bound.append(median)
                dataset.upper_bound.append(median) 
            else:   
                dataset.low_bound.append(low)
                dataset.upper_bound.append(upper)
        if len(typed_dataset) > 2:
            data = pd.Series(typed_dataset)
            low, upper = median_CI(data, 0.66, 0.5)
            if low == upper:
                dataset.low_bound.append(median)
                dataset.upper_bound.append(median)
            else:
                dataset.low_bound.append(low)
                dataset.upper_bound.append(upper)
    
    # print(f"medians:{dataset.medians}, low_bound:{dataset.low_bound}, upper_bound:{dataset.upper_bound}")
    assert len(dataset.upper_bound) == len(dataset.low_bound)
    # if len(dataset.low_bound) > 2 or len(dataset.upper_bound) > 2:
    
    #     dataset.upper_bound[-1] = dataset.low_bound[-1] = dataset.medians[-1]
    #    print(f"coverged medians:{dataset.medians}, low_bound:{dataset.low_bound}, upper_bound:{dataset.upper_bound}")
    dataset.mode = mode
    
    return dataset

def import_from_dataset(pw_discovery_timing, target_name="", mode="polling"):
    if target_name == "":
        raise ValueError("target name should not be empty")
    print(f"target_name:{target_name} mode:{mode}")
    processed_dataset = process_raw_timing_data(pw_discovery_timing)

    return cal_plot_data(processed_dataset, mode)
  


def process_raw_timing_data(dataset)->list:
    rows = MAX_PW_CHAR
    processed_dataset = []

    # remove -1 from a list
    for index in range(rows):
        timing = [pw_timing for pw_timing in dataset[index] if pw_timing != -1]
        processed_dataset.append(timing)
    
    pretty_printed_dict = json.dumps(processed_dataset, indent=4)
    print(f"processed_dataset: {pretty_printed_dict}")
    return processed_dataset


def plot_path_discovery_testing(ax, datagroup, title="", label=False):
    print("\n")
    for dataset in datagroup:
        processed_dataset, medians, computed_medians, low_bound, upper_bound, mode = dataset.processed_dataset, dataset.medians, dataset.computed_medians, dataset.low_bound, dataset.upper_bound, dataset.mode
        if mode == "polling":
            dot_color = dot_color_polling
            fill_color = fill_color_polling
            marker = "s"
        elif mode == "interrupt":
            dot_color = dot_color_interrupt
            fill_color = fill_color_interrupt            
            marker = "o"
        else:
            raise(ValueError)

        print(f"title:{title} mode:{mode} dataset:{processed_dataset} medians:{medians}")

        cnt = 1
        x_axis = []
        y_axis = []
        for _ in medians:
            timings = list(map(lambda timing: timing/3600, processed_dataset[cnt-1]))
            # x_axis = [cnt] * len(timings)
            x_axis += [cnt] * len(timings)
            y_axis += timings
            #ax.scatter(np.array(x_axis), np.array(timings), marker = marker, color=dot_color, clip_on=False, alpha=0.5, label=mode)
            cnt+=1
        
        # median line
        medians = list(map(lambda median: median/3600, medians))
        
        scattered_medians = []
        for index in range(len(computed_medians)):
            if computed_medians[index] == None:
                scattered_medians.append(medians[index])
        cnt = len(scattered_medians) + 1
        x_axis += range(1,cnt)
        y_axis += scattered_medians
        if label:
            ax.scatter(np.array(x_axis), np.array(y_axis), marker = marker, color=dot_color, clip_on=False, alpha=0.5, label=mode)
        else:
            ax.scatter(np.array(x_axis), np.array(y_axis), marker = marker, color=dot_color, clip_on=False, alpha=0.5)
        # ax.scatter(range(1,cnt), scattered_medians, marker = marker, color=dot_color, clip_on=False, alpha=0.5, label=mode)
        
        cnt = len(medians) + 1
        ax.plot(np.array(range(1,cnt)), np.array(medians), linewidth=1, color=dot_color)


        # fill
        cnt = len(upper_bound)
        upper_bound = list(map(lambda upper: upper/3600, upper_bound))
        low_bound = list(map(lambda lower: lower/3600, low_bound))

        if cnt > 0:
            ax.fill_between(np.array(range(1,cnt+1)), upper_bound, low_bound, alpha=.5, linewidth=0, color=fill_color)
        ax.set_title(title)
        ax.set(xlim=(1, 8), xticks=np.arange(1, 9),
        ylim=(0, 24), yticks=np.arange(0,25,2))
    
def init_plot(nrows=1, ncols=1):
    plt.style.use('seaborn')

    fig, ax = plt.subplots(nrows,ncols, figsize=(10, 8))
    return fig, ax

def wrapper_plot(target_dict):
    ncols = 2
    nrows = int(len(target_dict.keys()) / ncols)
    fig, ax = init_plot(nrows, ncols)

    label_once = False

    for row in range(nrows):
        for col in range(ncols):
            target_name, plot_data = target_dict.popitem()
            if not label_once:
                plot_path_discovery_testing(ax[row][col], plot_data, target_name, True)
                label_once = True
            else:
                plot_path_discovery_testing(ax[row][col], plot_data, target_name, False)

    
        
    fig.legend(loc='upper center', bbox_to_anchor=(0.5, 1.0), ncol=2)
    # Adjust layout for the legend
    plt.tight_layout()
    plt.subplots_adjust(left=0.07, bottom=0.065, top=0.9, right=0.9)

    plt.savefig('Exploration rate.pdf', format='pdf')
    # plt.show()




# if __name__ == '__main__':
#     fig, ax = init_plot(2,2)

#     pic32mx_polling = create_dataset(mode="polling")
#     pic32mx_interrupt = create_dataset(mode="interrupt")

#     handles = plot_path_discovery_testing(ax[0][0], [pic32mx_polling, pic32mx_interrupt], "ChipKit_PIC32MX", True)


#     pic32mx_freertos_polling = create_dataset(mode="polling")
#     pic32mx_freertos_interrupt = create_dataset(mode="interrupt")

#     plot_path_discovery_testing(ax[0][1], [pic32mx_freertos_polling, pic32mx_freertos_interrupt], "Curiosity_PIC32MX_FreeRTOS")


#     pic32mz_polling = create_dataset(mode="polling")
#     pic32mz_interrupt = create_dataset(mode="interrupt")
#     plot_path_discovery_testing(ax[1][0], [pic32mz_polling, pic32mz_interrupt], "StarterKit_PIC32MZ")

#     pic32mz_freertos_polling = create_dataset(mode="polling")
#     pic32mz_freertos_interrupt = create_dataset(mode="interrupt")
#     plot_path_discovery_testing(ax[1][1], [pic32mz_freertos_polling, pic32mz_freertos_interrupt], "StarterKit_PIC32MZ_FreeRTOS")


#     fig.text(0.5, 0.02, 'Solved Characters', ha='center')
#     fig.text(0.02, 0.5, 'Timing Spent in Hours', va='center', rotation='vertical')
#     plt.grid(True, which='both')
  


#     fig.legend(loc='upper center', bbox_to_anchor=(0.5, 1.0), ncol=2)
#     # Adjust layout for the legend
#     plt.tight_layout()
#     plt.subplots_adjust(left=0.07, bottom=0.065, top=0.9, right=0.9)

#     plt.savefig('Exploration rate.pdf', format='pdf')
#     # plt.show()
#     exit(1)
