#Check for material

#checker
scoreboard players set $TMP_REPAIR carm.val -1
scoreboard players set $TMP_REPAIR2 carm.val -1

tag @s add carm.checked

execute if data entity @s Item.tag.repair_item.id run tag @s add carm.idReq
execute if data entity @s Item.tag.repair_item.tag run tag @s add carm.tagReq

#Compare item id with repair_item tag
execute if entity @s[tag=carm.idReq] run data modify entity @s Item.tag.repair_item2.id set from entity @s Item.tag.repair_item.id
execute if entity @s[tag=carm.idReq] if entity @e[type=item,sort=furthest,tag=!carm.checked,distance=..1] store success score $TMP_REPAIR carm.val run data modify entity @s Item.tag.repair_item2.id set from entity @e[type=item,sort=furthest,tag=!carm.checked,limit=1,distance=..1] Item.id

execute if entity @s[tag=carm.tagReq] run data modify entity @s Item.tag.repair_item2.tag set from entity @s Item.tag.repair_item.tag
execute if entity @s[tag=carm.tagReq] if entity @e[type=item,sort=furthest,tag=!carm.checked,distance=..1] if data entity @e[type=item,sort=furthest,tag=!carm.checked,distance=..1,limit=1] Item.tag.cmat store success score $TMP_REPAIR2 carm.val run data modify entity @s Item.tag.repair_item2.tag set from entity @e[type=item,sort=furthest,tag=!carm.checked,limit=1,distance=..1] Item.tag.cmat

#If success count is 0 (=the item ids are the same therefore data command fail)
#Tag the item entity
#Run for xp check
execute if entity @s[tag=carm.idReq,tag=!carm.tagReq] if score $TMP_REPAIR carm.val matches 0 run tag @s add carm.repa1
execute if entity @s[tag=!carm.idReq,tag=carm.tagReq] if score $TMP_REPAIR2 carm.val matches 0 run tag @s add carm.repa1
execute if entity @s[tag=carm.idReq,tag=carm.tagReq] if score $TMP_REPAIR carm.val matches 0 if score $TMP_REPAIR2 carm.val matches 0 run tag @s add carm.repa1

execute if entity @s[tag=carm.repa1] run tag @e[type=item,sort=furthest,tag=!carm.checked,limit=1,distance=..1] add carm.repair_mat
execute if entity @s[tag=carm.repa1] run tag @e[type=item,sort=furthest,tag=!carm.checked,limit=1,distance=..1] add carm.checked
execute if entity @s[tag=carm.repa1] run function dptools:armor/repair/exp_check

#Iteration for all nearby entities
#If all the entities are checked, but none matches, end iteration
execute if entity @e[tag=!carm.repa1] run tag @e[type=item,sort=furthest,tag=!carm.checked,limit=1,distance=..1] add carm.checked
execute if entity @e[tag=!carm.repa1] if entity @e[type=item,tag=!carm.checked,distance=..1] run function dptools:armor/repair/mat_check

scoreboard players reset $TMP_REPAIR carm.val
scoreboard players reset $TMP_REPAIR2 carm.val
data remove entity @s Item.tag.repair_item2
tag @s remove carm.repa1
tag @s remove carm.idReq
tag @s remove carm.tagRqe
tag @e[tag=carm.checked] remove carm.checked