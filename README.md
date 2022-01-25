# DptoolsCustomArmor

This is a fork of TheMoneyRaider's datapack tools custom armor.  
All credits for the original idea and the resourcepack
Original pmc page : https://www.planetminecraft.com/data-pack/custom-armor-method/  
This datapack still needs the original resourcepack to properly function.  

## Added Features

### Mending
Mending armors with custom durability is now available.  
If you have mending armor on, gained xp points will be converted to armor durability.  
  
### Anvil Repair
You can now repair custom armors on anvils.  
Throw your custom armor and the required item on the anvil.  
This will fix 25% of the max durability and require 1 xp level.  
***Important note*** : *You will have to specify which item is needed by adding an extra NBT tag.*  
  
For example, if I want iron ingots to fix my armor, the extra required tag would be like this;  
`repair_item:"minecraft:iron_ingot"`  
So the give command would look something like this;  
`/give @p minecraft:leather_helmet{carmor:1b,current_d:1,max_d:300,repair_item:"minecraft:iron_ingot",display:{Lore:["\"foo var\"","\"\""]}}`  
  
### Things that are not supported
Fixing custom armor with custom armor is not implemented.  
Fixing custom armor with custom item is not implemented.  
*I might update on the custom item repair*
