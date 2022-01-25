#Run a data function for each armor piece.
#Helmet.
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{carmor:1b}}]}] run function dptools:armor/per_slot/helmet
#Chestplate.
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{carmor:1b}}]}] run function dptools:armor/per_slot/chest
#Leggings.
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{carmor:1b}}]}] run function dptools:armor/per_slot/leggings
#Feet.
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{carmor:1b}}]}] run function dptools:armor/per_slot/feet

data remove storage dptools:armor TMPLORESTR
data remove storage dptools:armor TMPDUR