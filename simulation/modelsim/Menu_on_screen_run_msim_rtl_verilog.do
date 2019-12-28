transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Ruslan/Desktop/Projects/Menu_on_screen-master {C:/Users/Ruslan/Desktop/Projects/Menu_on_screen-master/VGA_TOP.v}
vlog -vlog01compat -work work +incdir+C:/Users/Ruslan/Desktop/Projects/Menu_on_screen-master {C:/Users/Ruslan/Desktop/Projects/Menu_on_screen-master/VGA.v}
vlog -vlog01compat -work work +incdir+C:/Users/Ruslan/Desktop/Projects/Menu_on_screen-master {C:/Users/Ruslan/Desktop/Projects/Menu_on_screen-master/Text_on_screen.v}
vlog -vlog01compat -work work +incdir+C:/Users/Ruslan/Desktop/Projects/Menu_on_screen-master {C:/Users/Ruslan/Desktop/Projects/Menu_on_screen-master/In_dec.v}
vlog -vlog01compat -work work +incdir+C:/Users/Ruslan/Desktop/Projects/Menu_on_screen-master {C:/Users/Ruslan/Desktop/Projects/Menu_on_screen-master/Chars V2.v}

vlog -vlog01compat -work work +incdir+C:/Users/Ruslan/Desktop/Projects/Menu_on_screen-master/simulation/modelsim {C:/Users/Ruslan/Desktop/Projects/Menu_on_screen-master/simulation/modelsim/vga_TOP.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  vga_TOP_vlg_tst

add wave *
view structure
view signals
run -all
