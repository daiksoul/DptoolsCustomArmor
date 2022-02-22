#Repairing

#decrease the item count by one
execute store result score $REP_MATCOUNT carm.val run data get entity @e[tag=carm.repair_mat,limit=1,sort=nearest] Item.Count
scoreboard players remove $REP_MATCOUNT carm.val 1
execute store result entity @e[tag=carm.repair_mat,limit=1,sort=nearest] Item.Count byte 1 run scoreboard players get $REP_MATCOUNT carm.val
tag @e[tag=carm.repair_mat] remove repair_mat

#decrease thrower's xp level
xp add @p[tag=carm.repair_own] -1 levels
tag @p[tag=carm.repair_own] remove repair_own

#actual item modification
function dptools:repair/repair2
playsound minecraft:block.anvil.use master @a[distance=..4]
scoreboard players reset $REP_MATCOUNT carm.val

#anvil break
execute if predicate dptools:100_12perc run function dptools:repair/breakanvil