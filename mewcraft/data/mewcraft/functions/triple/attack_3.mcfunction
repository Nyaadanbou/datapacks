
# 改变模型位置 Y 90 P 0 R -30
data merge entity @e[type=minecraft:item_display,limit=1,tag=ready] {transformation:{right_rotation:[0.683f,-0.1831f,-0.6831f,0.183f],translation:[0f,-0.5f,1.2f]},start_interpolation:0,interpolation_duration:3}

# 依据玩家视线生成剑气，对碰撞生物造成伤害
execute at @e[type=minecraft:villager,limit=1] as @e[type=minecraft:villager,limit=1] anchored eyes run summon minecraft:item_display ^ ^-0.3 ^2.3 {item:{id:"minecraft:black_dye",Count:1b},Tags:["marker_3"]}

# 读取玩家视线的Y值，应用在剑气上。
execute at @e[type=minecraft:villager,limit=1] as @e[type=minecraft:villager,limit=1] run data modify entity @e[type=item_display,limit=1,tag=marker_3] Rotation[0] set from entity @e[type=minecraft:villager,limit=1] Rotation[0]

# 将剑气倾斜并拉伸Y轴 Yaw 90 Pitch -135 Roll 90Y
execute at @e[type=minecraft:villager,limit=1] as @e[type=minecraft:villager,limit=1] run data merge entity @e[type=minecraft:item_display,limit=1,tag=marker_3] {transformation:{right_rotation:[0.5f,-0.5f,-0.5f,0.5f],scale:[1f,3f,1f]}}

# 2t后执行剑气移动方向
schedule function mewcraft:triple/attack_3_move 2t append

# 5t删除剑实体
schedule function mewcraft:triple/end_ready 5t append
