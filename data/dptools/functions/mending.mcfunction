scoreboard players set $CARMOREQUTEMP2 carm.equ 0
scoreboard players set $TMP_DUR carm.val 0
scoreboard players set $TMP_DUR2 carm.val 0

#Helmet
#check if helmet is custom armor has mending has less durability than max 
#ifso add to equiped id 1
execute if data entity @s Inventory[{Slot:103b}].tag.cdur run tag @s add carm.head
execute if entity @s[tag=carm.head] if data entity @s Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:mending"}] run tag @s add carm.head2
execute if entity @s[tag=carm.head2] store result score $TMP_DUR carm.val run data get entity @s Inventory[{Slot:103b}].tag.cdur.current_d 1
execute if entity @s[tag=carm.head2] store result score $TMP_DUR2 carm.val run data get entity @s Inventory[{Slot:103b}].tag.cdur.max_d 1
execute if entity @s[tag=carm.head2] if score $TMP_DUR carm.val < $TMP_DUR2 carm.val run tag @s add carm.head3
execute if entity @e[tag=carm.head3] run scoreboard players add @s carm.equ 1
execute if entity @e[tag=carm.head3] run scoreboard players add $CARMOREQUTEMP2 carm.equ 1

tag @s remove carm.head
tag @s remove carm.head2
tag @s remove carm.head3

#Chestplate
#check if chestplate is custom armor has mending has less durability than max 
#ifso add to equiped id 2
execute if data entity @s Inventory[{Slot:102b}].tag.cdur run tag @s add carm.ches
execute if entity @s[tag=carm.ches] if data entity @s Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:mending"}] run tag @s add carm.ches2
execute if entity @s[tag=carm.ches2] store result score $TMP_DUR carm.val run data get entity @s Inventory[{Slot:102b}].tag.cdur.current_d 1
execute if entity @s[tag=carm.ches2] store result score $TMP_DUR2 carm.val run data get entity @s Inventory[{Slot:102b}].tag.cdur.max_d 1
execute if entity @s[tag=carm.ches2] if score $TMP_DUR carm.val < $TMP_DUR2 carm.val run tag @s add carm.ches3
execute if entity @e[tag=carm.ches3] run scoreboard players add @s carm.equ 2
execute if entity @e[tag=carm.ches3] run scoreboard players add $CARMOREQUTEMP2 carm.equ 1

tag @s remove carm.ches
tag @s remove carm.ches2
tag @s remove carm.ches3

#Leggings
#check if leggings is custom armor has mending has less durability than max 
#ifso add to equiped id 4
execute if data entity @s Inventory[{Slot:101b}].tag.cdur run tag @s add carm.legs
execute if entity @s[tag=carm.legs] if data entity @s Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:mending"}] run tag @s add carm.legs2
execute if entity @s[tag=carm.legs2] store result score $TMP_DUR carm.val run data get entity @s Inventory[{Slot:101b}].tag.cdur.current_d 1
execute if entity @s[tag=carm.legs2] store result score $TMP_DUR2 carm.val run data get entity @s Inventory[{Slot:101b}].tag.cdur.max_d 1
execute if entity @s[tag=carm.legs2] if score $TMP_DUR carm.val < $TMP_DUR2 carm.val run tag @s add carm.legs3
execute if entity @e[tag=carm.legs3] run scoreboard players add @s carm.equ 4
execute if entity @e[tag=carm.legs3] run scoreboard players add $CARMOREQUTEMP2 carm.equ 1

tag @s remove carm.legs
tag @s remove carm.legs2
tag @s remove carm.legs3

#Boots
#check if boots is custom armor has mending has less durability than max 
#ifso add to equiped id 8
execute if data entity @s Inventory[{Slot:100b}].tag.cdur run tag @s add carm.feet
execute if entity @s[tag=carm.feet] if data entity @s Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:mending"}] run tag @s add carm.feet2
execute if entity @s[tag=carm.feet2] store result score $TMP_DUR carm.val run data get entity @s Inventory[{Slot:100b}].tag.cdur.current_d 1
execute if entity @s[tag=carm.feet2] store result score $TMP_DUR2 carm.val run data get entity @s Inventory[{Slot:100b}].tag.cdur.max_d 1
execute if entity @s[tag=carm.feet2] if score $TMP_DUR carm.val < $TMP_DUR2 carm.val run tag @s add carm.feet3
execute if entity @e[tag=carm.feet3] run scoreboard players add @s carm.equ 8
execute if entity @e[tag=carm.feet3] run scoreboard players add $CARMOREQUTEMP2 carm.equ 1

tag @s remove carm.feet
tag @s remove carm.feet2
tag @s remove carm.feet3

#Boots
#check if boots is custom durability has mending has less durability than max 
#ifso add to equiped id 8
execute if data entity @s Inventory[{Slot:-106b}].tag.cdur run tag @s add carm.offh
execute if entity @s[tag=carm.offh] if data entity @s Inventory[{Slot:-106b}].tag.Enchantments[{id:"minecraft:mending"}] run tag @s add carm.offh2
execute if entity @s[tag=carm.offh2] store result score $TMP_DUR carm.val run data get entity @s Inventory[{Slot:-106b}].tag.cdur.current_d 1
execute if entity @s[tag=carm.offh2] store result score $TMP_DUR2 carm.val run data get entity @s Inventory[{Slot:-106b}].tag.cdur.max_d 1
execute if entity @s[tag=carm.offh2] if score $TMP_DUR carm.val < $TMP_DUR2 carm.val run tag @s add carm.offh3
execute if entity @e[tag=carm.offh3] run scoreboard players add @s carm.equ 16
execute if entity @e[tag=carm.offh3] run scoreboard players add $CARMOREQUTEMP2 carm.equ 1

tag @s remove carm.offh
tag @s remove carm.offh2
tag @s remove carm.offh3

#Mainhand
#check if boots is custom armor has mending has less durability than max 
#ifso add to equiped id 32
execute if data entity @s SelectedItem.tag.cdur run tag @s add carm.mainh
execute if entity @s[tag=carm.mainh] if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:mending"}] run tag @s add carm.mainh2
execute if entity @s[tag=carm.mainh2] store result score $TMP_DUR carm.val run data get entity @s SelectedItem.tag.cdur.current_d 1
execute if entity @s[tag=carm.mainh2] store result score $TMP_DUR2 carm.val run data get entity @s SelectedItem.tag.cdur.max_d 1
execute if entity @s[tag=carm.mainh2] if score $TMP_DUR carm.val < $TMP_DUR2 carm.val run tag @s add carm.mainh3
execute if entity @e[tag=carm.mainh3] run scoreboard players add @s carm.equ 32
execute if entity @e[tag=carm.mainh3] run scoreboard players add $CARMOREQUTEMP2 carm.equ 1

tag @s remove carm.mainh
tag @s remove carm.mainh2
tag @s remove carm.mainh3

#equiped id makes so you can identify which armor is equiped
#ex) 13 means you have helmet leggings and boots (1+4+8 = 13)
scoreboard players operation $CARMOREQUTEMP1 carm.equ = @s carm.equ

#debugging perposes
#tellraw @s [{"score":{"name":"$CARMOREQUTEMP2","objective": "carm.equ"}},{"text":" "},{"score":{"name":"$CARMOREQUTEMP1","objective": "carm.equ"}}]

#for random selection between armors
#each for counts of custom & mending armor
execute if score $CARMOREQUTEMP2 carm.equ matches 6 run function dptools:by_count/6
execute if score $CARMOREQUTEMP2 carm.equ matches 5 run function dptools:by_count/5
execute if score $CARMOREQUTEMP2 carm.equ matches 4 run function dptools:by_count/4
execute if score $CARMOREQUTEMP2 carm.equ matches 3 run function dptools:by_count/3
execute if score $CARMOREQUTEMP2 carm.equ matches 2 run function dptools:by_count/2
execute if score $CARMOREQUTEMP2 carm.equ matches 1 run function dptools:by_count/1
#if no armor requires mending, update xp dummy score
execute if score $CARMOREQUTEMP2 carm.equ matches 0 run scoreboard players operation @s carm.xp2 = @s carm.xp1

#drain xp from player
execute if score $CARMOREQUTEMP2 carm.equ matches 1.. run xp add @s -1 points

scoreboard players reset $CARMOREQUTEMP2 carm.equ
scoreboard players reset $CARMOREQUTEMP1 carm.equ
scoreboard players reset $TMP_DUR carm.val
scoreboard players reset $TMP_DUR carm.val

scoreboard players set @s carm.equ 0