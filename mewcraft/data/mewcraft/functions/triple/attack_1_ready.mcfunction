# 改变模型的空间位置
execute at @e[type=minecraft:villager,limit=1] as @e[type=minecraft:villager,limit=1] run data merge entity @e[type=minecraft:item_display,limit=1,tag=ready] {transformation:{right_rotation:[-0.3535f,-0.3536f,-0.8536f,0.1464f],translation:[0.5f,-0.5f,0f]}}

# 执行第一段的攻击动画
schedule function mewcraft:triple/attack_1 2t append