onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /comp_andares/a
add wave -noupdate /comp_andares/b
add wave -noupdate /comp_andares/result
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {231 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
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
WaveRestoreZoom {502 ps} {1026 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern counter -startvalue 0000 -endvalue 1111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 3 0 -starttime 0ps -endtime 1000ps sim:/comp_andares/a 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 1111 -endvalue 0000 -type Range -direction Down -period 50ps -step 1 -repeat forever -range 3 0 -starttime 0ps -endtime 1000ps sim:/comp_andares/b 
wave create -driver freeze -pattern counter -startvalue 0000 -endvalue 1111 -type Range -direction UpThenDown -period 50ps -step 1 -repeat forever -range 3 0 -starttime 0ps -endtime 1000ps sim:/comp_andares/b 
WaveExpandAll -1
wave modify -driver freeze -pattern counter -startvalue 0000 -endvalue 0000 -type Range -direction UpThenDown -period 50ps -step 1 -repeat forever -range 3 0 -starttime 0ps -endtime 1000ps Edit:/comp_andares/b 
wave modify -driver freeze -pattern counter -startvalue 0000 -endvalue 0100 -type Range -direction UpThenDown -period 50ps -step 1 -repeat forever -range 3 0 -starttime 0ps -endtime 1000ps Edit:/comp_andares/b 
WaveCollapseAll -1
wave clipboard restore