transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/simon/Desktop/ENSC350/project/my_uart/simulation/tb_my_uart.vhd}
vcom -2008 -work work {C:/Users/simon/Desktop/ENSC350/project/my_uart/simulation/tb2_my_uart.vhd}
vcom -2008 -work work {C:/Users/simon/Desktop/ENSC350/project/my_uart/rtl/uart_tx.vhd}
vcom -2008 -work work {C:/Users/simon/Desktop/ENSC350/project/my_uart/rtl/uart_rx.vhd}
vcom -2008 -work work {C:/Users/simon/Desktop/ENSC350/project/my_uart/rtl/my_uart.vhd}

