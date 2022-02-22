#Check if armor needs fixing
execute store result score $REP_DUR carm.val run data get entity @s Item.tag.cdur.current_d 1
execute store result score $REP_DUR2 carm.val run data get entity @s Item.tag.cdur.max_d 1

execute if score $REP_DUR carm.val < $REP_DUR2 carm.val run tag @s add carm.repa
execute if entity @s[tag=carm.repa] if data entity @s Item.tag.cdur.repair_item run tag @s add carm.repa0

#If armor needs fixing, check if there's a material nearby
execute if entity @e[tag=carm.repa0] run function dptools:repair/mat_check

scoreboard players reset $REP_DUR carm.val
scoreboard players reset $REP_DUR2 carm.val
tag @s remove carm.repa0
tag @s remove carm.repa