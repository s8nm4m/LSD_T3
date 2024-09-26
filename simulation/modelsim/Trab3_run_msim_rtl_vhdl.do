transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ammit/Desktop/ISEL/2223/LEIC/s1/LSD/Labs/Trab3/LSD_T3/ASM_L.vhd}
vcom -93 -work work {C:/Users/ammit/Desktop/ISEL/2223/LEIC/s1/LSD/Labs/Trab3/LSD_T3/Terminal_Count.vhd}
vcom -93 -work work {C:/Users/ammit/Desktop/ISEL/2223/LEIC/s1/LSD/Labs/Trab3/LSD_T3/Registry.vhd}
vcom -93 -work work {C:/Users/ammit/Desktop/ISEL/2223/LEIC/s1/LSD/Labs/Trab3/LSD_T3/MUX2x1.vhd}
vcom -93 -work work {C:/Users/ammit/Desktop/ISEL/2223/LEIC/s1/LSD/Labs/Trab3/LSD_T3/full_adder.vhd}
vcom -93 -work work {C:/Users/ammit/Desktop/ISEL/2223/LEIC/s1/LSD/Labs/Trab3/LSD_T3/CC.vhd}
vcom -93 -work work {C:/Users/ammit/Desktop/ISEL/2223/LEIC/s1/LSD/Labs/Trab3/LSD_T3/adder_subtractor.vhd}
vcom -93 -work work {C:/Users/ammit/Desktop/ISEL/2223/LEIC/s1/LSD/Labs/Trab3/LSD_T3/adder.vhd}
vcom -93 -work work {C:/Users/ammit/Desktop/ISEL/2223/LEIC/s1/LSD/Labs/Trab3/LSD_T3/int7seg.vhd}
vcom -93 -work work {C:/Users/ammit/Desktop/ISEL/2223/LEIC/s1/LSD/Labs/Trab3/LSD_T3/decoderHex.vhd}
vcom -93 -work work {C:/Users/ammit/Desktop/ISEL/2223/LEIC/s1/LSD/Labs/Trab3/LSD_T3/bin2dec_int.vhd}
vcom -93 -work work {C:/Users/ammit/Desktop/ISEL/2223/LEIC/s1/LSD/Labs/Trab3/LSD_T3/Data_Path.vhd}
vcom -93 -work work {C:/Users/ammit/Desktop/ISEL/2223/LEIC/s1/LSD/Labs/Trab3/LSD_T3/FFD.vhd}
vcom -93 -work work {C:/Users/ammit/Desktop/ISEL/2223/LEIC/s1/LSD/Labs/Trab3/LSD_T3/divisor.vhd}

