#roll to determine if three is selected
execute if predicate dptools:3_1perc run tag @s add carm.thre

#if three is selected, mend the first one
execute if entity @s[tag=carm.thre] run function dptools:mend/one

#else discard first, and roll to determine two is selected
execute if entity @s[tag=!carm.thre] run function dptools:by_count/remove
execute if entity @s[tag=!carm.thre] if predicate dptools:2_1perc run tag @s add carm.twoo

#if two is selected, mend the first one
execute if entity @s[tag=carm.twoo] run function dptools:mend/one

#else discard first, mend the first one
execute if entity @s[tag=!carm.thre,tag=!carm.twoo] run function dptools:by_count/remove
execute if entity @s[tag=!carm.thre,tag=!carm.twoo] run function dptools:mend/one

tag @s remove carm.thre
tag @s remove carm.twoo