#Check if armor has mending
execute if entity @s[nbt={Inventory:[{tag:{carmor:1b,Enchantments:[{id:"minecraft:mending"}]}}]}] run tag @s add carm.mend
execute if entity @s[tag=carm.mend] run function dptools:mending

#If no mending, update xp checker
execute if entity @s[tag=!carm.mend] run scoreboard players operation @s carm.xp2 = @s carm.xp1

tag @s remove carm.mend

data remove storage dptools:cdur TMPLORESTR
data remove storage dptools:cdur TMPDUR