#roll to determine if five is selected
execute if predicate dptools:5_1perc run tag @s add carm.five

#if five is selected, mend the first one
execute if entity @s[tag=carm.five] run function dptools:mend/one

#else discard first, and roll to determine four is selected
execute if entity @s[tag=!carm.five] run function dptools:by_count/remove
execute if entity @s[tag=!carm.five] if predicate dptools:4_1perc run tag @s add carm.four

#if four is selected, mend the second one
execute if entity @s[tag=carm.four] run function dptools:mend/one

#else discard first, and roll to determine four is selected
execute if entity @s[tag=!carm.five,tag=!carm.four] run function dptools:by_count/remove
execute if entity @s[tag=!carm.five,tag=!carm.four] if predicate dptools:3_1perc run tag @s add carm.thre

#if three is selected, mend the third one
execute if entity @s[tag=carm.thre] run function dptools:mend/one

#else discard first, and roll to determine two is selected
execute if entity @s[tag=!carm.five,tag=!carm.four,tag=!carm.thre] run function dptools:by_count/remove
execute if entity @s[tag=!carm.five,tag=!carm.four,tag=!carm.thre] if predicate dptools:2_1perc run tag @s add carm.twoo

#if two is selected, mend the fourth one
execute if entity @s[tag=carm.twoo] run function dptools:mend/one

#else discard first, mend the last one
execute if entity @s[tag=!carm.five,tag=!carm.four,tag=!carm.thre,tag=!carm.twoo] run function dptools:by_count/remove
execute if entity @s[tag=!carm.five,tag=!carm.four,tag=!carm.thre,tag=!carm.twoo] run function dptools:mend/one

tag @s remove carm.five
tag @s remove carm.four
tag @s remove carm.thre
tag @s remove carm.twoo