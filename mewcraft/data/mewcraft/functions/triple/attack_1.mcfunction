# 改变模型位置
execute at @e[type=minecraft:villager,limit=1] as @e[type=minecraft:villager,limit=1] run data merge entity @e[type=minecraft:item_display,limit=1,tag=ready] {transformation:{right_rotation:[0.3535f,-0.3536f,-0.1465f,-0.8536f],translation:[-1.2f,0.7f,0.2f]},start_interpolation:0,interpolation_duration:3}

# 依据玩家视线生成剑气，对碰撞生物造成伤害
execute at @e[type=minecraft:villager,limit=1] as @e[type=minecraft:villager,limit=1] anchored eyes run summon minecraft:item_display ^ ^-0.5 ^1.8 {item:{id:"minecraft:black_dye",Count:1b},Tags:["marker_1"]}

# 读取玩家视线的Y值，应用在剑气上。
execute at @e[type=minecraft:villager,limit=1] as @e[type=minecraft:villager,limit=1] run data modify entity @e[type=item_display,limit=1,tag=marker_1] Rotation[0] set from entity @e[type=minecraft:villager,limit=1] Rotation[0]

# 将剑气倾斜并拉伸X轴 Yaw 90 Pitch 135 Roll 90
execute at @e[type=minecraft:villager,limit=1] as @e[type=minecraft:villager,limit=1] run data merge entity @e[type=minecraft:item_display,limit=1,tag=marker_1] {transformation:{right_rotation:[0.6532f,-0.2706f,-0.2706f,0.6532f],scale:[3f,1f,1f]}}

# 2t后执行剑气移动方向
schedule function mewcraft:triple/attack_1_move 2t append

# 5t后开始第二段准备阶段
schedule function mewcraft:triple/attack_2_ready 5t append