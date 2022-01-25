#Check for material

#checker
scoreboard players set $TMP_REPAIR carm.val -1

#Compare item id with repair_item tag
data modify entity @s Item.tag.repair_item2 set from entity @s Item.tag.repair_item
execute store success score $TMP_REPAIR carm.val run data modify entity @s Item.tag.repair_item2 set from entity @e[type=item,sort=furthest,tag=!carm.checked,limit=1,distance=..1] Item.id

#If success count is 0 (=the item ids are the same therefore data command fail)
#Tag the item entity
#Run for xp check
execute if score $TMP_REPAIR carm.val matches 0 run tag @s add carm.repa1
execute if entity @s[tag=carm.repa1] run tag @e[type=item,sort=furthest,tag=!carm.checked,limit=1,distance=..1] add carm.repair_mat
execute if entity @s[tag=carm.repa1] run tag @e[type=item,sort=furthest,tag=!carm.checked,limit=1,distance=..1] add carm.checked
execute if entity @s[tag=carm.repa1] run function dptools:armor/repair/exp_check

#Iteration for all nearby entities
#If all the entities are checked, but none matches, end iteration
execute if entity @e[tag=!carm.repa1] run tag @e[type=item,sort=furthest,tag=!carm.checked,limit=1,distance=..1] add carm.checked
execute if entity @e[tag=!carm.repa1] if entity @e[type=item,tag=!carm.checked,distance=..1] run function dptools:armor/repair/mat_check

scoreboard players reset $TMP_REPAIR carm.val
data remove entity @s Item.tag.repair_item2
tag @s remove carm.repa1
tag @e[tag=carm.checked] remove carm.checked