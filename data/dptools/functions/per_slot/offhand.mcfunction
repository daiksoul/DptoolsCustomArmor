execute store result score $TEMP_DURABILITY3 carm.val run data get entity @s Inventory[{Slot:-106b}].tag.Damage
execute if score $TEMP_DURABILITY3 carm.val matches 1.. run function dptools:per_slot/mainhand2