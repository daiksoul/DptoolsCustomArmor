#mend by equiped id
execute if score $CARMOREQUTEMP1 carm.equ matches 1 run function dptools:mend/head
execute if score $CARMOREQUTEMP1 carm.equ matches 2 run function dptools:mend/chest
execute if score $CARMOREQUTEMP1 carm.equ matches 4 run function dptools:mend/legs
execute if score $CARMOREQUTEMP1 carm.equ matches 8 run function dptools:mend/feet