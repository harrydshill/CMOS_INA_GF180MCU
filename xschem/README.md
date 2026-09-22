# Project Layout

## blocks
Contains each design block in a directory with the name of the block. Within this directory, there should be a .sch and .sym file with the block name.

Testbenches should also exist in this directory and be named tb_[block name]_[parameter].sch, with one test bench for each parameter.

Simulations and netlists from the testbenches go in the simulation directory of each block. Xschem is configured to do this automatically in the xschemrc file.