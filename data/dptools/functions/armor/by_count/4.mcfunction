#roll to determine if four is selected
execute if predicate dptools:4_1perc run tag @s add carm.four

#if four selected, mend head
execute if entity @s[tag=carm.four] run function dptools:armor/mend/head

#else roll to determine if three is selected
execute if entity @s[tag=!carm.four] if predicate dptools:3_1perc run tag @s add carm.thre

#if three selected, mend chest
execute if entity @s[tag=carm.thre] run function dptools:armor/mend/chest

#else roll to determine if two is selected
execute if entity @s[tag=!carm.four,tag=!carm.thre] if predicate dptools:2_1perc run tag @s add carm.twoo

#if two selected, mend legs
execute if entity @s[tag=carm.twoo] run function dptools:armor/mend/legs

#else, mend feet
execute if entity @s[tag=!carm.four,tag=!carm.thre,tag=!carm.twoo] run function dptools:armor/mend/feet

tag @s remove carm.four
tag @s remove carm.thre
tag @s remove carm.twoo