# Reading C:/altera/11.1sp2/modelsim_ase/tcl/vsim/pref.tcl 
# do Exercicio_1_run_msim_gate_vhdl.do 
# if {[file exists gate_work]} {
# 	vdel -lib gate_work -all
# }
# vlib gate_work
# vmap work gate_work
# Copying C:\altera\11.1sp2\modelsim_ase\win32aloem/../modelsim.ini to modelsim.ini
# Modifying modelsim.ini
# ** Warning: Copied C:\altera\11.1sp2\modelsim_ase\win32aloem/../modelsim.ini to modelsim.ini.
#          Updated modelsim.ini.
# 
# vcom -93 -work work {Exercicio_1.vho}
# Model Technology ModelSim ALTERA vcom 10.1d Compiler 2012.11 Nov  2 2012
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Loading package VITAL_Timing
# -- Loading package VITAL_Primitives
# -- Loading package dffeas_pack
# -- Loading package altera_primitives_components
# -- Loading package cycloneiv_atom_pack
# -- Loading package cycloneiv_components
# -- Compiling entity Exercicio_1
# -- Compiling architecture structure of Exercicio_1
# 
vsim work.exercicio_1
# vsim work.exercicio_1 
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading ieee.vital_timing(body)
# Loading ieee.vital_primitives(body)
# Loading altera.dffeas_pack
# Loading altera.altera_primitives_components
# Loading cycloneiv.cycloneiv_atom_pack(body)
# Loading cycloneiv.cycloneiv_components
# Loading work.exercicio_1(structure)
# Loading cycloneiv.cycloneiv_io_ibuf(arch)
# Loading cycloneiv.cycloneiv_clkctrl(vital_clkctrl)
# Loading cycloneiv.cycloneiv_ena_reg(behave)
# Loading ieee.std_logic_arith(body)
# Loading cycloneiv.cycloneiv_io_obuf(arch)
# Loading cycloneiv.cycloneiv_lcell_comb(vital_lcell_comb)
# Loading altera.dffeas(vital_dffeas)
vsim work.exercicio_1
# vsim work.exercicio_1 
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading ieee.vital_timing(body)
# Loading ieee.vital_primitives(body)
# Loading altera.dffeas_pack
# Loading altera.altera_primitives_components
# Loading cycloneiv.cycloneiv_atom_pack(body)
# Loading cycloneiv.cycloneiv_components
# Loading work.exercicio_1(structure)
# Loading cycloneiv.cycloneiv_io_ibuf(arch)
# Loading cycloneiv.cycloneiv_clkctrl(vital_clkctrl)
# Loading cycloneiv.cycloneiv_ena_reg(behave)
# Loading ieee.std_logic_arith(body)
# Loading cycloneiv.cycloneiv_io_obuf(arch)
# Loading cycloneiv.cycloneiv_lcell_comb(vital_lcell_comb)
# Loading altera.dffeas(vital_dffeas)
add wave -position insertpoint  \
sim:/exercicio_1/Y3 \
sim:/exercicio_1/Y2 \
sim:/exercicio_1/Y1 \
sim:/exercicio_1/Y0 \
sim:/exercicio_1/CLK \
sim:/exercicio_1/H
force -freeze sim:/exercicio_1/CLK 1 0, 0 {100000 ps} -r {200 ns}
force -freeze sim:/exercicio_1/H 0 0
run 1400ns
run 500ns
force -freeze sim:/exercicio_1/H 1 0
2000ns
# invalid command name "2000ns"
run 200ns
run 2000ns
run 1500ns
force -freeze sim:/exercicio_1/H 0 0
run 2000ns
restart
write format wave -window .main_pane.wave.interior.cs.body.pw.wf E:/ViniciusRamon/Digital/Exercicio_1/simulation/modelsim/wave.do
