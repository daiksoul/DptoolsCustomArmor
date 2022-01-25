#repair the first armor that is regarded in $CARMOREQUTEMP1

#if carmor >= 8 mend feet
execute if score $CARMOREQUTEMP1 carm.equ matches 8.. run tag @s add carm.feet2
execute if entity @s[tag=carm.feet2] run function dptools:armor/mend/feet
#else if carmor >=4 mend legs
execute if entity @s[tag=!carm.feet2] if score $CARMOREQUTEMP1 carm.equ matches 4.. run tag @s add carm.legs2
execute if entity @s[tag=carm.legs2] run function dptools:armor/mend/legs
#else if carmor >=2 mend chest
execute if entity @s[tag=!carm.feet2,tag=!carm.legs2] if score $CARMOREQUTEMP1 carm.equ matches 2.. run tag @s add carm.ches2
execute if entity @s[tag=carm.ches2] run function dptools:armor/mend/chest
#else if carmor >=1 mend head
execute if entity @s[tag=!carm.feet2,tag=!carm.legs2,tag=!carm.ches2] if score $CARMOREQUTEMP1 carm.equ matches 1.. run function dptools:armor/mend/head

tag @s remove carm.feet2
tag @s remove carm.legs2
tag @s remove carm.ches2