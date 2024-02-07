# 剑气移动方向，对碰撞到的敌人造成伤害。
execute at @e[type=minecraft:villager,limit=1] as @e[type=minecraft:villager,limit=1] run data merge entity @e[type=minecraft:item_display,limit=1,tag=marker_2] {transformation:{translation:[0f,0f,4f]},start_interpolation:0,interpolation_duration:10}

# 删除第二段剑气实体
schedule function mewcraft:triple/end_attack_2 10t append