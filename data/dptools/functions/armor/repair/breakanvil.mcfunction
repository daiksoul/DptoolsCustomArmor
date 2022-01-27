execute if block ~ ~-1 ~ minecraft:anvil run tag @s add carm.an1
execute if block ~ ~-1 ~ minecraft:chipped_anvil run tag @s add carm.an2
execute if block ~ ~-1 ~ minecraft:damaged_anvil run tag @s add carm.an3

execute if entity @s[tag=carm.an1] if block ~ ~-1 ~ #minecraft:anvil[facing=east] run setblock ~ ~-1 ~ chipped_anvil[facing=east]
execute if entity @s[tag=carm.an1] if block ~ ~-1 ~ #minecraft:anvil[facing=west] run setblock ~ ~-1 ~ chipped_anvil[facing=west]
execute if entity @s[tag=carm.an1] if block ~ ~-1 ~ #minecraft:anvil[facing=south] run setblock ~ ~-1 ~ chipped_anvil[facing=south]
execute if entity @s[tag=carm.an1] if block ~ ~-1 ~ #minecraft:anvil[facing=north] run setblock ~ ~-1 ~ chipped_anvil[facing=north]
execute if entity @s[tag=carm.an1] if block ~ ~-1 ~ #minecraft:anvil[facing=east] run setblock ~ ~-1 ~ damaged_anvil[facing=east]
execute if entity @s[tag=carm.an1] if block ~ ~-1 ~ #minecraft:anvil[facing=west] run setblock ~ ~-1 ~ damaged_anvil[facing=west]
execute if entity @s[tag=carm.an1] if block ~ ~-1 ~ #minecraft:anvil[facing=south] run setblock ~ ~-1 ~ damaged_anvil[facing=south]
execute if entity @s[tag=carm.an1] if block ~ ~-1 ~ #minecraft:anvil[facing=north] run setblock ~ ~-1 ~ damaged_anvil[facing=north]
execute if entity @s[tag=carm.an3] run setblock ~ ~-1 ~ air

execute if block ~ ~-1 ~ air run playsound block.anvil.break block @a[distance=..4] ~ ~ ~
execute if block ~ ~-1 ~ air run particle block anvil ~ ~ ~ 0.5 0.5 0.5 0 20 normal

tag @s remove carm.an1
tag @s remove carm.an2
tag @s remove carm.an3