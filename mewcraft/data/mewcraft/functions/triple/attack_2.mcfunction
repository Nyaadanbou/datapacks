# 改变模型位置Y 90 P -135 R 60
data merge entity @e[type=minecraft:item_display,limit=1,tag=ready] {transformation:{right_rotation:[-0.0923f,0.701f,0.5609f,-0.4305f],translation:[1.2f,0.7f,0.2f]},start_interpolation:0,interpolation_duration:3}

# 依据玩家视线生成剑气，对碰撞生物造成伤害
execute at @e[type=minecraft:villager,limit=1] as @e[type=minecraft:villager,limit=1] anchored eyes run summon minecraft:item_display ^ ^-0.5 ^1.8 {item:{id:"minecraft:black_dye",Count:1b},Tags:["marker_2"]}

# 读取玩家视线的Y值，应用在剑气上。
execute at @e[type=minecraft:villager,limit=1] as @e[type=minecraft:villager,limit=1] run data modify entity @e[type=item_display,limit=1,tag=marker_2] Rotation[0] set from entity @e[type=minecraft:villager,limit=1] Rotation[0]

# 将剑气倾斜并拉伸X轴 Yaw 90 Pitch -135 Roll 90
execute at @e[type=minecraft:villager,limit=1] as @e[type=minecraft:villager,limit=1] run data merge entity @e[type=minecraft:item_display,limit=1,tag=marker_2] {transformation:{right_rotation:[-0.2706f,0.6532f,0.6532f,-0.2706f],scale:[3f,1f,1f]}}

# 2t后执行剑气移动方向
schedule function mewcraft:triple/attack_2_move 2t append

# 5t后开始第三段准备阶段
schedule function mewcraft:triple/attack_3_ready 5t append
