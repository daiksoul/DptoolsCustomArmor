#mend by equiped id
execute if score $CARMOREQUTEMP1 carm.equ matches 1 run function dptools:armor/mend/head
execute if score $CARMOREQUTEMP1 carm.equ matches 2 run function dptools:armor/mend/chest
execute if score $CARMOREQUTEMP1 carm.equ matches 4 run function dptools:armor/mend/legs
execute if score $CARMOREQUTEMP1 carm.equ matches 8 run function dptools:armor/mend/feet