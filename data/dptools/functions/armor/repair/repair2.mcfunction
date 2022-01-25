#Update durability.
#Move item to entity.
#Get values.
execute store result score $TEMP_DURABILITY carm.val run data get entity @s Item.tag.current_d
execute store result score $TEMP_DURABILITY2 carm.val run data get entity @s Item.tag.max_d
execute store result score $TEMP_DURABILITY3 carm.val run data get entity @s Item.tag.max_d
#Get damage to values.
scoreboard players operation $TEMP_DURABILITY3 carm.val /= $REP_4 carm.val
scoreboard players operation $TEMP_DURABILITY carm.val += $TEMP_DURABILITY3 carm.val
execute if score $TEMP_DURABILITY carm.val > $TEMP_DURABILITY2 carm.val run scoreboard players operation $TEMP_DURABILITY carm.val = $TEMP_DURABILITY2 carm.val
#Set lore and new values to item.
summon armor_stand ~ 0 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,HandItems:[{id:"minecraft:stone",Count:1}],Tags:["carm.temp"]}
data modify entity @e[tag=carm.temp,limit=1,sort=nearest] HandItems[0] set from entity @s Item
data modify storage dptools:armor TMPLORESTR set from entity @e[tag=carm.temp,limit=1,sort=nearest] HandItems[0].tag.display.Lore
data remove storage dptools:armor TMPLORESTR[-1]
execute store result storage dptools:armor TMPDUR int 1 run scoreboard players get $TEMP_DURABILITY carm.val

item modify entity @e[tag=carm.temp,limit=1,sort=nearest] weapon dptools:copylore
item modify entity @e[tag=carm.temp,limit=1,sort=nearest] weapon dptools:setlore
data modify entity @s Item set from entity @e[tag=carm.temp,limit=1,sort=nearest] HandItems[0]

kill @e[tag=carm.temp]