# Lab-4
Programs for DSD Lab4

· An n-bit asynchronous (ripple) counter
· A 4-bit synchronous counter (using combinational next-state logic)
· An n-bit incrementer circuit
· An n-bit synchronous counter with parallel load input
· A 4-bit synchronous up/down counter
· An 8-bit Comparator
· A modulo-m counter with asynchronous reset
· A modulo-m counter with synchronous reset
· The clothes washer controller sub-components
________________________________________________________________________________________________________________________________________
________________________________________________________________________________________________________________________________________
Hierarchy Design

•	n-bit asynchronous (ripple) counter (to be made)			(nbit_asynRipCount)
  o	T-Flip-flop (provided Lab 3)				(T_flipflop.vhd)

•	4-bit synchronous counter (to be made)				(4bit_syncCount.vhd)
  o	Next state logic (sub component)				(count_nextStateLog.vhd)
  o	4-bit register (lab 3) 					(nbitReg.vhd)
    	D-flip flop					(dFlipFlop.vhd)

•	4-bit synchronous up/down counter (to be made)		(4bit_syncUpDown_count.vhd)
  o	4-bit adder/subtractor (lab 2)			(fourbitAdderSubtractor_VHDL.vhd)
    	Four-bit XOR control				(nbit_xor_contol.vhd)
      •	XOR gate (from lab 1)			(TwoInputXOR_VHDL.vhd)
    	Four-bit LAC adder				(four_bit_LAC.vhd)
      •	Four-bit LAC				(FourBitLACAdder_VHDL.vhd)
      •	n-bit Adder				(nbit_Adder_VHDL.vhd)
        o	Full Adder			(FullAdder_VHDL.vhd)
  o	N-bit register (lab 3)					(nbitReg.vhd)
    	D-flip flop					(dFlipFlop.vhd)

•	Modulo-m counter with asynchronous reset (to be made)		(modm_countAsynRes.vhd)
  o	8-bit comparator (to be made) 				(eightbit_comparator.vhd)
  o	OR gate (lab 1)						(TwoInputOR_VHDL.vhd)
  o	N-bit synchronous counter with enable (provided)		(nbit_count_enable.vhd)
    	N-bit incrementer (to be made) 			(nbit_incrementor.vhd)
    	Half-adder (lab 1)					(HalfAdder_VHDL.vhd)
      •	Two input AND	(lab 1)			(TwoInputAND_VHDL.vhd)
      •	Two input XOR	(lab 1)			(TwoInputXOR_VHDL.vhd)
    	N-bit register (lab 3)				(nbitReg.vhd)
      •	D-flip flop				(dFlipFlop.vhd)


•	Modulo-m counter with synchronous reset (to be made)		(modm_countSyncRes.vhd)
    o	8-bit comparator (to be made)				(eightbit_comparator.vhd)
    o	N-bit synchronous counter parallel load input(to be made)(nbit_syncCount_parLoad.vhd)
      	N-bit incrementer (to be made)			(nbit_incrementor.vhd)
        •	Half-adder (lab 1)				(HalfAdder_VHDL.vhd)
          o	Two input AND	(lab 1)		(TwoInputAND_VHDL.vhd)
          o	Two input XOR	(lab 1)		(TwoInputXOR_VHDL.vhd)
      	N-bit 2 input MUX (lab 2)				(nbitTwoInputMux_VHDL.vhd)
        •	Two input MUX	(lab1)	 	(TwoInputMultiplexor_VHDL.vhd)
      	N-bit register (lab 3) 				(nbitReg.vhd)
        •	D-flip flop				(dFlipFlop.vhd)


•	Clothes washer control state machine (provided)			(washer_controller.vhd)
  o	2 input MUX (lab 1)		(TwoInputMultiplexor_VHDL.vhd)
  o	Next state logic (sub component)				(washer_nextStateLog.vhd)
  o	N-bit register (lab 3) 					(nbitReg.vhd)
    	D-flip flop					(dFlipFlop.vhd)
  o	Output logic (sub component) 				(washer_outputLog.vhd)


