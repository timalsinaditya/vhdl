# VHDL Setup with Wave Visualization and Circuit Synthesis

This repository provides a setup for VHDL development with wave visualization and circuit synthesis. It includes scripts for wave visualization and circuit synthesis using popular tools like GHDL, GTKWave, Yosys, ghdl-yosys-plugin, and netlistsvg.

## Requirements (Install all this)

- [GHDL](https://github.com/ghdl/ghdl) for VHDL
- [GTKWave](https://github.com/gtkwave/gtkwave.git) for wave visualization
- [Yosys](https://github.com/YosysHQ/yosys.git) for circuit synthesis
- [ghdl-yosys-plugin](https://github.com/ghdl/ghdl-yosys-plugin.git)  for circuit synthesis
- [netlistsvg](https://github.com/nturley/netlistsvg.git)  for circuit synthesis

## Needed Directory Structure 
- `<your_directory>/`
  - `codes/`
    - `<file_name>.vhdl`
    - `<file_name_tb>.vhdl`
    - `wave.sh` find content below
    - `circuit_synthesize.sh` find content below

In the `codes` directory, create VHDL files with the naming convention `<file_name>.vhdl` for the main code and `<file_name_tb>.vhdl` for its test bench.

## Scripts

These scripts should be placed in `codes` directory.

### Wave Visualization Script (wave.sh)

```bash
#!/bin/zsh

set -e 

if [ $# -ne 1 ] || [[ "$1" == *.* || -e "$1" ]]; then
    echo "Command format: $0 <file_name_without_extension>"
    exit 1
fi

if [ ! -d "../waves" ]; then
    mkdir "../waves"
fi

module=$1."vhdl"
top_entity=$1"_tb.vhdl"

ghdl -a $module
ghdl -a $top_entity

ghdl -e $1"_tb"
ghdl -r $1"_tb" --vcd=../waves/$1."vcd"

gtkwave ../waves/$1."vcd"
```
### Circuit Synthesis Script (circuit_synthesize.sh)
```bash
#!/bin/bash

set -e

if [ $# -ne 1 ] || [[ "$1" == *.* || -e "$1" ]]; then
    echo "Command format: $0 <file_name_without_extension>"
    exit 1
fi

if [ ! -d "../images" ]; then
    mkdir "../images"
    mkdir "../images/jsons"
fi

ghdl -a "$1.vhdl"

yosys -m ghdl.so -p "ghdl --latches $1; synth; prep -top $1; write_json ../images/jsons/$1.json"

netlistsvg ../images/jsons/$1.json -o ../images/$1.svg

xdg-open ../images/$1.svg
```

## Usage

1. Ensure that the scripts are in the `codes` directory.

2. Run the following commands in the terminal in the `codes` directory:

```zsh
chmod +x wave.sh circuit_synthesize.sh
```

## Visualizing the Wave and Synthesizing the Circuit

First make sure there is no error on your main code and its test bench:
```bash
ghdl -a <file_name>.vhdl
ghdl -a <file_name_tb>.vhdl
```

To visualize the wave and synthesize the circuit, use the following commands in the `codes` directory:

```bash
./wave.sh <file_name_without_extension>
./circuit_synthesize.sh <file_name_without_extension>
```
The circuit will be generated and placed in the `images` folder within the same directory where the `codes` directory is present.
