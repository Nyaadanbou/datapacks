# 改变模型的空间位置 Y 90 P -135 R -135
execute at @e[type=minecraft:villager,limit=1] as @e[type=minecraft:villager,limit=1] run data merge entity @e[type=minecraft:item_display,limit=1,tag=ready] {transformation:{right_rotation:[0.7071f,0f,-0.5f,-0.5001f],translation:[-0.5f,-0.5f,0f]}}

# 执行第二段的攻击动画
schedule function mewcraft:triple/attack_2 2t append