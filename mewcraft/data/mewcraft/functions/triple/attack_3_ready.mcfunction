
# Y -90 P 0 R -90
execute at @e[type=minecraft:villager,limit=1] as @e[type=minecraft:villager,limit=1] run data merge entity @e[type=minecraft:item_display,limit=1,tag=ready] {transformation:{right_rotation:[0.5f,-0.5f,-0.5f,0.4999f],translation:[0f,0.7f,0.2f],scale:[1.2f,1.2f,1.2f]}}

schedule function mewcraft:triple/attack_3 2t append
