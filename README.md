# DptoolsCustomArmor - Now with tools!

This is a fork of TheMoneyRaider's datapack tools custom armor.  
All rights for the original datapack belongs to them  
Original pmc page : https://www.planetminecraft.com/data-pack/custom-armor-method/  
This datapack still needs the original resourcepack to properly function.  

## Added Features

### Translation  
The lore for the durability now properly works with any language that is supported by mojang.  
  
### Mending
Mending armor and tool with custom durability is now available.  
If you have mending armor or tools on, gained xp points will be converted to armor and/or tool durability.  
  
### Anvil Repair
You can now repair custom armors and tools on anvils. ("Unit repair" is available)  
Throw your custom armor or tool and the required item on the anvil.  
This will fix 25% of the max durability and require 1 xp level.  
***Important note*** : *You will have to specify which item is needed by adding an extra NBT tag.*  
Chance of anvil being damaged is implemented.  
  
#### Repair item specification  
You can specify the id or/and NBT tags.  
  
#### Examples  

Specifying an id  
```
give @p leather_chestplate{cdur:{current_d:300,max_d:300,repair_item:{id:"minecraft:amethyst_shard"}},display:{Lore:['""']}}
```  

Specifying NBT tags
```
give @p leather_chestplate{cdur:{current_d:300,max_d:300,repair_item:{tag:{foo:"var",Slow:1b}}},display:{Lore:['""']}}  
and the repair item would be  
give @p clay_ball{cmat:{foo:"var",Slow:1b}}
```

If only one is given, the check will only happen for the given one.  
If both are given, the check will happen for both.  
  
### Things that are not supported
Fixing custom item with the same item is not implemented.  
