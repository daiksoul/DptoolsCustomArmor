#roll to determine if two is selected
execute if predicate dptools:2_1perc run tag @s add carm.twoo

#if two is selected, mend first one
execute if entity @s[tag=carm.twoo] run function dptools:armor/mend/one

#else discard first and mend first one
execute if entity @s[tag=!carm.twoo] run function dptools:armor/by_count/remove
execute if entity @s[tag=!carm.twoo] run function dptools:armor/mend/one

tag @s remove carm.twoo