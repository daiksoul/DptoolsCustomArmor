#Update durability.
#Get values.
execute store result score $TEMP_DURABILITY carm.val run data get entity @s SelectedItem.tag.cdur.current_d
execute store result score $TEMP_DURABILITY2 carm.val run data get entity @s SelectedItem.tag.cdur.max_d
#Get damage to values.
scoreboard players add $TEMP_DURABILITY carm.val 2
execute if score $TEMP_DURABILITY carm.val > $TEMP_DURABILITY2 carm.val run scoreboard players operation $TEMP_DURABILITY carm.val = $TEMP_DURABILITY2 carm.val
#Create the lore.
data modify storage dptools:cdur TMPLORESTR set from entity @s SelectedItem.tag.display.Lore
data remove storage dptools:cdur TMPLORESTR[-1]
execute store result storage dptools:cdur TMPDUR int 1 run scoreboard players get $TEMP_DURABILITY carm.val
#Set lore and new values to item.
#Set item to player.
item modify entity @s armor.legs dptools:copylore
item modify entity @s armor.legs dptools:setlore