# DptoolsCustomArmor

This is a fork of TheMoneyRaider's datapack tools custom armor.  
All rights for the original datapack belongs to them  
Original pmc page : https://www.planetminecraft.com/data-pack/custom-armor-method/  
This datapack still needs the original resourcepack to properly function.  

## Added Features

### Translation  
The lore for the durability now properly works with any language that is supported by mojang.  
  
### Mending
Mending armors with custom durability is now available.  
If you have mending armor on, gained xp points will be converted to armor durability.  
  
### Anvil Repair
You can now repair custom armors on anvils.  
Throw your custom armor and the required item on the anvil.  
This will fix 25% of the max durability and require 1 xp level.  
***Important note*** : *You will have to specify which item is needed by adding an extra NBT tag.*  
Chance of anvil being damaged is implemented.  
  
#### Repair item specification  
You can specify the id or/and NBT tags.  
  
#### Examples  

Specifying an id  
```
give @p leather_chestplate{carmor:1b,current_d:300,max_d:300,repair_item:{id:"minecraft:amethyst_shard"},display:{Lore:['""']}}
```  

Specifying NBT tags
```
give @p leather_chestplate{carmor:1b,current_d:300,max_d:300,repair_item:{tag:{foo:"var",Slow:1b}},display:{Lore:['""']}}  
and the repair item would be  
give @p clay_ball{cmat:{foo:"var",Slow:1b}}
```

If only one is given, the check will only happen for the given one.  
If both are given, the check will happen for both.  
  
### Things that are not supported
Fixing custom armor with custom item is not implemented.  
*I might update on the custom item repair*
