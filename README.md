Serial Multiplier 
Overview

This project implements unsigned binary multiplication using the repeated addition method in Verilog HDL, following an FSM + datapath architecture. A finite state machine controller sequences the load, accumulate, and decrement operations of the datapath, which integrates an adder, a down-counter, PIPO registers, and a zero-detect comparator. The design is functionally verified using a dedicated Verilog testbench.

Features
Unsigned multiplication via iterative (serial) repeated addition
FSM-based controller (5-state: load multiplicand, load multiplier/counter, accumulate, decrement, done) driving a modular datapath
Datapath built from reusable blocks: adder, PIPO registers, down-counter, zero-detect comparator
Multiplier value loaded into a down-counter; multiplicand repeatedly added into an accumulator once per cycle until the counter reaches zero
Modular, hierarchical RTL design
Functional verification using a Verilog testbench with waveform dump (VCD) for simulation analysis
Tools Used
Verilog HDL
Xilinx Vivado

Author

Pratiksha Upadhye

Electronics & Telecommunication Engineering Student | Aspiring RTL Design & Verification Engineer

GitHub: https://github.com/upadhyepratiiksha-dot

LinkedIn: https://linkedin.com/in/pratiksha-upadhye
