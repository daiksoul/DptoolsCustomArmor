#discarding only the first from the equiped id

#Since there is no "break" code in minecraft functions,
#I added tags for every if statements

#if score>=8
execute if score $CARMOREQUTEMP1 carm.equ matches 8.. run tag @s add carm.feet
execute if entity @s[tag=carm.feet] run scoreboard players remove $CARMOREQUTEMP1 carm.equ 8
#if score>=4
execute if entity @s[tag=!carm.feet] if score $CARMOREQUTEMP1 carm.equ matches 4.. run tag @s add carm.legs
execute if entity @s[tag=carm.legs] run scoreboard players remove $CARMOREQUTEMP1 carm.equ 4
#if score>=2
execute if entity @s[tag=!carm.feet,tag=!carm.legs] if score $CARMOREQUTEMP1 carm.equ matches 2.. run tag @s add carm.ches
execute if entity @s[tag=carm.ches] run scoreboard players remove $CARMOREQUTEMP1 carm.equ 2
#else
execute if entity @s[tag=!carm.feet,tag=!carm.legs,tag=!carm.ches] if score $CARMOREQUTEMP1 carm.equ matches 1.. run scoreboard players remove $CARMOREQUTEMP1 carm.equ 1
tag @s remove carm.feet
tag @s remove carm.legs
tag @s remove carm.ches