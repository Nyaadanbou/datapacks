# 剑气移动方向，对碰撞到的敌人造成伤害。
execute at @e[type=minecraft:villager,limit=1] as @e[type=minecraft:villager,limit=1] run data merge entity @e[type=minecraft:item_display,limit=1,tag=marker_3] {transformation:{translation:[0f,0f,6f]},start_interpolation:0,interpolation_duration:10}

# 删除第三段剑气实体
schedule function mewcraft:triple/end_attack_3 10t append