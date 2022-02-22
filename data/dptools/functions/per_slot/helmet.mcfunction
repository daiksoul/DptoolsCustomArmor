#Get if the armor is damaged.
execute store result score $TEMP_DURABILITY3 carm.val run data get entity @s Inventory[{Slot:103b}].tag.Damage
execute if score $TEMP_DURABILITY3 carm.val matches 1.. run function dptools:per_slot/helmet2