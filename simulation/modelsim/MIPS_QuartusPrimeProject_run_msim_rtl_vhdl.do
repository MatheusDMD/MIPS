transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/parallels/Documents/MIPS/registrador32.vhd}
vcom -93 -work work {/home/parallels/Documents/MIPS/mux32.vhd}
vcom -93 -work work {/home/parallels/Documents/MIPS/mux5.vhd}
vcom -93 -work work {/home/parallels/Documents/MIPS/add32.vhd}
vcom -93 -work work {/home/parallels/Documents/MIPS/ext16to32.vhd}
vcom -93 -work work {/home/parallels/Documents/MIPS/shifter2_32to32.vhd}
vcom -93 -work work {/home/parallels/Documents/MIPS/shifter2_26to32.vhd}
vcom -93 -work work {/home/parallels/Documents/MIPS/registerBank32.vhd}
vcom -93 -work work {/home/parallels/Documents/MIPS/nor32.vhd}
vcom -93 -work work {/home/parallels/Documents/MIPS/and32.vhd}
vcom -93 -work work {/home/parallels/Documents/MIPS/or32.vhd}
vcom -93 -work work {/home/parallels/Documents/MIPS/mux32_4.vhd}
vcom -93 -work work {/home/parallels/Documents/MIPS/andoverf.vhd}
vcom -93 -work work {/home/parallels/Documents/MIPS/ALUControl.vhd}
vcom -93 -work work {/home/parallels/Documents/MIPS/instructionMemory.vhd}
vcom -93 -work work {/home/parallels/Documents/MIPS/dataMemory.vhd}
vcom -93 -work work {/home/parallels/Documents/MIPS/inversor32.vhd}
vcom -93 -work work {/home/parallels/Documents/MIPS/UnidadeDeControle.vhd}
vcom -93 -work work {/home/parallels/Documents/MIPS/xor32.vhd}
vcom -93 -work work {/home/parallels/Documents/MIPS/debounce.vhd}
vcom -93 -work work {/home/parallels/Documents/MIPS/conversorHex7Seg.vhd}
vcom -93 -work work {/home/parallels/Documents/MIPS/overflow.vhd}
vcom -93 -work work {/home/parallels/Documents/MIPS/ULA.vhd}
vcom -93 -work work {/home/parallels/Documents/MIPS/FluxoDeDados.vhd}
vcom -93 -work work {/home/parallels/Documents/MIPS/MIPS.vhd}

