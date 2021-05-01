onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /exercicio_1/Y3
add wave -noupdate /exercicio_1/Y2
add wave -noupdate /exercicio_1/Y1
add wave -noupdate /exercicio_1/Y0
add wave -noupdate /exercicio_1/CLK
add wave -noupdate /exercicio_1/H
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1484519 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 67
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {10801152 ps}
