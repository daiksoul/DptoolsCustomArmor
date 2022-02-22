#Check if thrower has enough xp

scoreboard players set $PLAYERCHECK carm.val -1

#Check if player's uuid matches with Thrower uuid
data modify storage dptools:cdur PLAYERTMP set from entity @s Thrower
execute store success score $PLAYERCHECK carm.val run data modify storage dptools:cdur PLAYERTMP set from entity @p[tag=!carm.checked] UUID

#If matched, tag the player
#run repair
execute if score $PLAYERCHECK carm.val matches 0 run tag @s add carm.exp_s
execute if entity @s[tag=carm.exp_s] run tag @p[tag=!carm.checked] add carm.repair_own
execute if entity @s[tag=carm.exp_s] if entity @p[tag=carm.repair_own,level=1..] run function dptools:repair/repair

#Iteration for all players
#If all the players are checked, but none matches, end iteration
execute if entity @s[tag=!carm.exp_s] run tag @p[tag=!carm.checked] add carm.checked
execute if entity @s[tag=!carm.exp_s] if entity @p[tag=!carm.checked] run function dptools:repair/exp_check

scoreboard players reset $PLAYERCHECK carm.val
tag @s remove carm.exp_s
tag @a[tag=carm.checked] remove carm.checked
data remove storage dptools:cdur PLAYERTMP