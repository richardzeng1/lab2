# Set the working dir, where all compiled Verilog goes.
vlib work

# Compile all Verilog modules in mux.v to working dir;
# could also have multiple Verilog files.
# The timescale argument defines default time unit
# (used when no unit is specified), while the second number
# defines precision (all times are rounded to this value)
vlog -timescale 1ns/1ns mux.v

# Load simulation using mux as the top level simulation module.
vsim mux

# Log all signals and add some signals to waveform window.
log {/*}
# add wave {/*} would add all items in top level simulation module.
add wave {/*}

#First test case
#S0 and S1 is set to 0, should be the value of u
force {SW[9]} 0
force {SW[8]} 0
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 0
run 10ns

#First test case
#S0 and S1 is set to 0, should be the value of u
force {SW[9]} 0
force {SW[8]} 0
force {SW[0]} 0
force {SW[1]} 1
force {SW[2]} 1
force {SW[3]} 1
run 10ns

force {SW[9]} 0
force {SW[8]} 0
force {SW[0]} 1
force {SW[1]} 1
force {SW[2]} 1
force {SW[3]} 1
run 10ns

#Second test, s0 is 1 and s1 is 0, should be v
force {SW[9]} 0
force {SW[8]} 1
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 0
run 10ns

force {SW[9]} 0
force {SW[8]} 1
force {SW[0]} 1
force {SW[1]} 0
force {SW[2]} 1
force {SW[3]} 1
run 10ns
               
force {SW[9]} 0  
force {SW[8]} 1
force {SW[0]} 1
force {SW[1]} 1
force {SW[2]} 1
force {SW[3]} 1
run 10ns

# Third test, s0 is 0 and s1 is 1, should be w
force {SW[9]} 1
force {SW[8]} 0
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 0
run 10ns

force {SW[9]} 1
force {SW[8]} 0
force {SW[0]} 1
force {SW[1]} 1
force {SW[2]} 0
force {SW[3]} 1
run 10ns
  
force {SW[9]} 1
force {SW[8]} 0
force {SW[0]} 1
force {SW[1]} 1
force {SW[2]} 1
force {SW[3]} 1
run 10ns

#Fouth test, s1 and s0 is 1, should be x
force {SW[9]} 1
force {SW[8]} 1
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 0
run 10ns

force {SW[9]} 1
force {SW[8]} 1
force {SW[0]} 1
force {SW[1]} 1
force {SW[2]} 1
force {SW[3]} 0
run 10ns

force {SW[9]} 1
force {SW[8]} 1
force {SW[0]} 1
force {SW[1]} 1
force {SW[2]} 1
force {SW[3]} 1
run 10ns



