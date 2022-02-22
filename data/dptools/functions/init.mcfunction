gamerule commandBlockOutput false

#Custom Armor
say DP:Custom Armor Reloaded

scoreboard objectives add carm.val dummy
scoreboard objectives add carm.xp1 xp
scoreboard objectives add carm.xp2 dummy
scoreboard objectives add carm.equ dummy

scoreboard players set $REP_4 carm.val 4

data merge storage dptools:cdur {}