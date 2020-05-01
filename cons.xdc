
# clk signal
set_property PACKAGE_PIN W5 [get_ports clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
 
# Switches
set_property PACKAGE_PIN V17 [get_ports {RESTART}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {RESTART}]
set_property PACKAGE_PIN V16 [get_ports {SWITCH}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {SWITCH}]


#set_property PACKAGE_PIN W16 [get_ports {sw[2]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[2]}]
#set_property PACKAGE_PIN W17 [get_ports {sw[3]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[3]}]
#set_property PACKAGE_PIN W15 [get_ports {sw[4]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[4]}]
#set_property PACKAGE_PIN V15 [get_ports {sw[5]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[5]}]
#set_property PACKAGE_PIN W14 [get_ports {sw[6]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[6]}]
#set_property PACKAGE_PIN W13 [get_ports {sw[7]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[7]}]
#set_property PACKAGE_PIN V2 [get_ports {sw[8]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[8]}]
#set_property PACKAGE_PIN T3 [get_ports {sw[9]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[9]}]
#set_property PACKAGE_PIN T2 [get_ports {sw[10]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[10]}]
#set_property PACKAGE_PIN R3 [get_ports {sw[11]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[11]}]
set_property PACKAGE_PIN W2 [get_ports {hit_4}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {hit_4}]
set_property PACKAGE_PIN U1 [get_ports {hit_3}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {hit_3}]
set_property PACKAGE_PIN T1 [get_ports {hit_2}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {hit_2}]
set_property PACKAGE_PIN R2 [get_ports {hit_1}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {hit_1}]
 

# Leds
#set_property PACKAGE_PIN U16 [get_ports {Led0}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {Led0}]
#set_property PACKAGE_PIN E19 [get_ports {Led1}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {Led1}]
#set_property PACKAGE_PIN U19 [get_ports {Led2}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {Led2}]
#set_property PACKAGE_PIN V19 [get_ports {Led3}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {Led3}]
#set_property PACKAGE_PIN W18 [get_ports {Led4}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {Led4}]


#set_property PACKAGE_PIN U15 [get_ports {Led5}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {Led5}]
#set_property PACKAGE_PIN U14 [get_ports {Led6}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {Led6}]
#set_property PACKAGE_PIN V14 [get_ports {Led7}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {Led7}]

set_property PACKAGE_PIN P3 [get_ports {level[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {level[0]}]
set_property PACKAGE_PIN N3 [get_ports {level[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {level[1]}]
set_property PACKAGE_PIN P1 [get_ports {level[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {level[2]}]
set_property PACKAGE_PIN L1 [get_ports {level[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {level[3]}]
	
	
	
#7 Cathodesment display
set_property PACKAGE_PIN W7 [get_ports {a}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {a}]
set_property PACKAGE_PIN W6 [get_ports {b}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {b}]
set_property PACKAGE_PIN U8 [get_ports {c}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {c}]
set_property PACKAGE_PIN V8 [get_ports {d}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {d}]
set_property PACKAGE_PIN U5 [get_ports {e}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {e}]
set_property PACKAGE_PIN V5 [get_ports {f}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {f}]
set_property PACKAGE_PIN U7 [get_ports {g}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {g}]


set_property PACKAGE_PIN U2 [get_ports {anode_en[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anode_en[0]}]
set_property PACKAGE_PIN U4 [get_ports {anode_en[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anode_en[1]}]
set_property PACKAGE_PIN V4 [get_ports {anode_en[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anode_en[2]}]
set_property PACKAGE_PIN W4 [get_ports {anode_en[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anode_en[3]}]


##Buttons
#set_property PACKAGE_PIN U18 [get_ports hit_1]						
#	set_property IOSTANDARD LVCMOS33 [get_ports hit_1]
#set_property PACKAGE_PIN T18 [get_ports hit_2]						
#	set_property IOSTANDARD LVCMOS33 [get_ports hit_2]
#set_property PACKAGE_PIN W19 [get_ports hit_3]						
#	set_property IOSTANDARD LVCMOS33 [get_ports hit_3]
#set_property PACKAGE_PIN T17 [get_ports hit_4]						
#	set_property IOSTANDARD LVCMOS33 [get_ports hit_4]

 set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets RESTART_IBUF]


