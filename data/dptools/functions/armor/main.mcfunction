#Check if a player has a custom armor piece.
execute as @a[nbt={Inventory:[{tag:{carmor:1b}}]}] at @s run function dptools:armor/test

#Check if a player has a custom armor piece with mending.
execute as @a at @s unless score @s carm.xp1 = @s carm.xp2 run function dptools:armor/mend_test

#Check if an thrown item is a custom armor and is on a anvil
execute as @e[type=item,nbt={Item:{tag:{carmor:1b}}}] at @s if block ~ ~-1 ~ #minecraft:anvil run function dptools:armor/repair_test