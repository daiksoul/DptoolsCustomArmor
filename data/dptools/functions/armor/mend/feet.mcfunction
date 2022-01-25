#Update durability.
#Get values.
execute store result score $TEMP_DURABILITY carm.val run data get entity @s Inventory[{Slot:100b}].tag.current_d
execute store result score $TEMP_DURABILITY2 carm.val run data get entity @s Inventory[{Slot:100b}].tag.max_d
#Get damage to values.
scoreboard players add $TEMP_DURABILITY carm.val 2
execute if score $TEMP_DURABILITY carm.val > $TEMP_DURABILITY2 carm.val run scoreboard players operation $TEMP_DURABILITY carm.val = $TEMP_DURABILITY2 carm.val
#Create the lore.
data modify storage dptools:armor TMPLORESTR set from entity @s Inventory[{Slot:100b}].tag.display.Lore
data remove storage dptools:armor TMPLORESTR[-1]
execute store result storage dptools:armor TMPDUR int 1 run scoreboard players get $TEMP_DURABILITY carm.val
#Set lore and new values to item.
#Set item to player.
item modify entity @s armor.feet dptools:copylore
item modify entity @s armor.feet dptools:setlore