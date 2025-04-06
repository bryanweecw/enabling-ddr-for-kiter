# Capstone Project – DRAM Buffer Experiments  
**Wee Chin Wei, Bryan**
**Mathematical, Computational, and Statistical Sciences**  
**Yale-NUS College – Final Year Undergraduate Capstone**

This repository contains implementations and experimental files for my capstone project investigating FPGA-based audio processing using DRAM-based buffering systems. The focus is on experimenting with different buffer architectures and exploring their synthesizability and performance in Vivado and Vitis environments.

---

## Overview

The project includes:

- Custom implementations of DRAM FIFO buffers.
- A static delay audio processor using DRAM.
- An extended version of the `tapiir` audio application with DRAM support.
- Audio codec initialization code for Vitis applications.

---

## Project Structure

```
.
├── dram_fifo_buffer/               # Vivado project implementing the DRAM FIFO buffer
├── vhdl_files/                    # Raw VHDL files for the FIFO implementation
├── static_delay_with_dram/       # Vivado project implementing static delay using DRAM
├── tapiir_with_dram/             # Vivado project integrating DRAM into the Tapiir app (modified)
└── ssm_2603_init.c               # Audio codec initialization for Vitis
```

---

## Usage

### 1. **Vivado Projects**
Each Vivado project (`dram_fifo_buffer/`, `static_delay_with_dram/`, and `tapiir_with_dram/`) can be opened directly in Vivado.

- Open Vivado
- Use `File > Open Project` and navigate to the respective project directory, and select the relevant .xpr file
- Open the block design you desire to implement, and run Generate Bitstream.

### 2. **VHDL Files**
- The `vhdl_files/` directory contains standalone VHDL source files for the DRAM FIFO buffer. These can be reused or re-integrated into new or existing Vivado projects as needed.
- The directory contains two files `axi_fifo_v3.vhd` and `axi_fifo_n3.vhd`. The former file is the wrapper for the buffer, and the latter file contains the logical implementation of the buffer.
- A subdirectory `libraries` contains files needed to be imported together with the buffer into a new project. Some are in further subdirectories which are named according to the library they should be assigned to within your project (i.e. axi_master_burst_v2_0_7).
- If they are not contained in a further subdirectory, they can be in the main/ working library that the buffer is in.

### 3. **Vitis Integration**
To initialize the SSM2203 audio codec:

- Export the hardware from the Vivado project (e.g., from `static_delay_with_dram/` or `tapiir_with_dram/`)
- Create a new Vitis application project using the exported `.xsa` file
- Add `ssm_2603_init.c` to the `src/` folder in your Vitis project
- Build and program the FPGA + PS
- This step ensures the audio codec is properly initialized for audio input/output

---

## Notes

- The `tapiir_with_dram` implementation includes an **untested** modified DRAM buffer with a variable write index. This is primarily to test synthesizability for larger buffer sizes.
- All hardware is targeted for synthesis and implementation on the Zybo Z7-20.
