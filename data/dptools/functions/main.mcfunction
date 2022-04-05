#Check if a player has a custom armor piece.
execute as @a at @s if data entity @s Inventory[].tag.cdur run function dptools:test

#Check if a player has a custom armor piece with mending.
execute as @a at @s unless score @s carm.xp1 = @s carm.xp2 run function dptools:mend_test

#Check if an thrown item is a custom armor and is on a anvil
execute as @e[type=item] at @s if data entity @s Item.tag.cdur if block ~ ~-1 ~ #minecraft:anvil run function dptools:repair_test