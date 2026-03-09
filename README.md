# ARITHMETIC-LOGIC-UNIT-ALU-

**COMPANY** : CODTECH IT SOLUTIONS 
**NAME** : AYUSH RAJ
**INTERN ID** : CTIS6515
**DURATION** : 8 WEEKS 
**MENTOR** : NEELA SANTOSH
#**Description: Design and Simulation of a Basic ALU Using Verilog**

The Arithmetic Logic Unit (ALU) is a fundamental component of any digital system and serves as the core part of a Central Processing Unit (CPU). It performs arithmetic and logical operations on binary data, which are necessary for executing instructions in a processor. In this project, a simple 4-bit ALU was designed using the hardware description language Verilog and simulated with the help of the Xilinx Vivado software. The ALU is capable of performing basic operations including addition, subtraction, AND, OR, and NOT.

The developed ALU uses two 4-bit input operands named A and B. These operands represent binary numbers on which the ALU performs the selected operation. Apart from the operands, a 3-bit control signal called the select line (sel) is used to determine which operation should be executed. Each value of the select signal corresponds to a different function. For instance, when the select signal is 000, the ALU performs addition between A and B. When the signal is 001, subtraction is carried out. Other select values correspond to logical operations such as AND, OR, and NOT.

The ALU was implemented in Verilog using a behavioral modeling technique. A case statement inside an always block was used to choose the required operation based on the value of the select signal. Arithmetic operations such as addition and subtraction generate both a result and a carry output, while logical operations only produce the logical result. The output of the ALU includes a 4-bit result and a carry_out signal that indicates overflow during arithmetic calculations.

To ensure that the ALU functions correctly, a testbench module was created. A testbench is used specifically for simulation and verification. It applies different combinations of input values to the ALU and observes the generated outputs. During simulation, multiple sets of input operands and select signals were applied to confirm that the ALU performs each operation correctly. Time delays were also included in the testbench so that changes in outputs could be clearly observed during simulation.

The behavioral simulation was carried out in the Vivado environment. The waveform viewer in Vivado displayed the input signals (A, B, and sel) along with the corresponding outputs (result and carry_out). The waveform results verified that the ALU executed all operations correctly. For example, when A was 0101 and B was 0011 with the select signal set to 000, the ALU produced the output 1000, which correctly represents the addition of the two numbers. Similar correct results were obtained for subtraction and other logical operations.

Designing a basic ALU helps in understanding how arithmetic and logical operations are performed within digital processors. Implementing such designs in Verilog provides valuable knowledge about digital hardware behavior and prepares students for advanced subjects like processor design, FPGA implementation, and digital system architecture. Overall, this project successfully demonstrates the design, simulation, and verification of a basic ALU using Verilog and simulation tools.

**OUTPUT**:
