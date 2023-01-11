# Physarum SDP Solver

This python package is an SDP solver based on Physarum Polycephalum. For more information on the solver, please check out [the paper](https://arxiv.org/abs/2111.02291).

## Datasets
A set of dummy experiments are currently available in the repository. However, for full access to the data, please check out our dataset available [here](https://drive.google.com/drive/folders/17RYqcK1B8t8l3sgTZVmOghgdRonbeTW0?usp=sharing). You can replace the `data` and `experiment` folder with the ones available here in the repo. Note that `data` contains the raw SDP data for a set of data batches.

The subdirectories of `data` contain different data batches with each batch containing a set of semi-definite programs. The naming convention under each of these data batches is set according to the following:
* `{problem-name}.dat-s`: The SDP problem itself in a standardized `.dat-s` format. For more information on this format, please check out the data format [explanation](./data/FORMAT.md).
* `{problem-name}.dat-s.res`: We are trying to compare the results against ground truth, therefore, we have gathered the results of a standard solver of the corresponding problem in this file. The solver used as ground truth is the [SDPA](https://sdpa.sourceforge.net/) solver.

### How to add your data?
To do that, you can add a new subdirectory under data with the standard `.dat-s` notation introduced in this section. After creating the base data, you can run the SDPA solver. The only version of the solver which is available in the repo is the windows version available at [SDPA/windows](./SDPA/windows/). However, you can also check out the other solver binaries they have and add the `.res` and `.log` files next to the corresponding problem in the data folder.

## Setup

The solver we have implemented runs based on a set of **solver configurations** which is defined as a `yaml` file in [configurations](./configurations/). After picking a configuration, you can run the `main.py` file according to that configuration to obtain a set of results from our solver.

For a simple run, please use the following code:
```
main.py data/dataset0 experiments/dataset0 --cfg=configurations/legacy_cfg_2.yaml
```
It should be 
```
main.py data/dataset0 experiments --cfg=configurations/legacy_cfg_2.yaml
```
The subdirectory ``dataset0`` will be created automatically. 

Run `main.py -h` to get a sense of the arguments that can be passed on to the executable python file.

The first argument will take in a directory containing a bunch of `.dat-s` and `.dat-s.res` files and the second argument will take a directory to pour in the results. Finally, the `--cfg` obtains sets the directory of the configuration file being used. You can also pass on a `--test-regex` option to filter out a set of SDP problems in that subdirectory that match only a given regex. This is good when instead of a whole batch you are trying to run the test on a single problem or a subset of that batch.

## Generic solvers

The SDP solvers implemented here are written in a very generic way to be able to extend it later on with new ideas.

