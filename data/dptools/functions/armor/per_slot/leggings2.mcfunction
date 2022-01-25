#Update durability.
#Move item to entity.
#Get values.
execute store result score $TEMP_DURABILITY carm.val run data get entity @s Inventory[{Slot:101b}].tag.current_d
execute store result score $TEMP_DURABILITY2 carm.val run data get entity @s Inventory[{Slot:101b}].tag.max_d
execute store result score $TEMP_DURABILITY3 carm.val run data get entity @s Inventory[{Slot:101b}].tag.Damage
#Get damage to values.
scoreboard players operation $TEMP_DURABILITY carm.val -= $TEMP_DURABILITY3 carm.val
#Act like it breaks if it breaks.
execute if score $TEMP_DURABILITY carm.val matches ..0 run item replace entity @s armor.chest with air
execute if score $TEMP_DURABILITY carm.val matches ..0 at @s run playsound minecraft:entity.item.break master @a[distance=..4]
#Create the lore.
data modify storage dptools:armor TMPLORESTR set from entity @s Inventory[{Slot:101b}].tag.display.Lore
data remove storage dptools:armor TMPLORESTR[-1]
execute store result storage dptools:armor TMPDUR int 1 run scoreboard players get $TEMP_DURABILITY carm.val
#Set lore and new values to item.
item modify entity @s armor.legs dptools:copylore
item modify entity @s armor.legs dptools:setlore