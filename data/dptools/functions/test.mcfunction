#Run a data function for each armor piece.

#Mainhand
execute if data entity @s SelectedItem.tag.cdur run function dptools:per_slot/mainhand
#Offhand
execute if data entity @s Inventory[{Slot:-106b}].tag.cdur run function dptools:per_slot/offhand
#Helmet.
execute if data entity @s Inventory[{Slot:103b}].tag.cdur run function dptools:per_slot/helmet
#Chestplate.
execute if data entity @s Inventory[{Slot:102b}].tag.cdur run function dptools:per_slot/chest
#Leggings.
execute if data entity @s Inventory[{Slot:101b}].tag.cdur run function dptools:per_slot/leggings
#Feet.
execute if data entity @s Inventory[{Slot:100b}].tag.cdur run function dptools:per_slot/feet

data remove storage dptools:cdur TMPLORESTR
data remove storage dptools:cdur TMPDUR