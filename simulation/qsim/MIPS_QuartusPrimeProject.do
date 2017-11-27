onerror {exit -code 1}
vlib work
vcom -work work MIPS_QuartusPrimeProject.vho
vcom -work work Waveform5.vwf.vht
vsim -novopt -c -t 1ps -sdfmax FluxoDeDados_vhd_vec_tst/i1=MIPS_QuartusPrimeProject_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.FluxoDeDados_vhd_vec_tst
vcd file -direction MIPS_QuartusPrimeProject.msim.vcd
vcd add -internal FluxoDeDados_vhd_vec_tst/*
vcd add -internal FluxoDeDados_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
