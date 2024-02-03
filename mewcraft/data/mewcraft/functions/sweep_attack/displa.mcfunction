
# data merge entity @e[type=item_display,limit=1,tag=sweep_attack_summon] {transformation:{scale:[1f,1f,1f]},Rotation:[0.0f,90.0f]}

# execute anchored eyes run summon minecraft:item_display ^ ^ ^1.5 {item:{id:"minecraft:iron_sword",Count:1b},Tags:["sweep_attack_summon"]}

# 插值
data merge entity @e[type=item_display,limit=1,tag=sweep_attack_summon] {start_interpolation:0,interpolation_duration:100}

# 虚拟点
execute positioned 0.0 0.0 0.0 run summon minecraft:marker ^ ^ ^10 {Tags:["sweep_attack_summon"]}

# 右旋
# data modify entity @e[type=item_display,limit=1,tag=sweep_attack_summon] transformation.right_rotation set value [1f,0f,0f,0f]

# 缩放
# data modify entity @e[type=item_display,limit=1,tag=sweep_attack_summon] transformation.scale set value [0f,1f,0f]

# 左旋
# data modify entity @e[type=item_display,limit=1,tag=sweep_attack_summon] transformation.left_rotation set value [0f,0f,1f,0f]

# 位移
data modify entity @e[type=item_display,limit=1,tag=sweep_attack_summon] transformation.translation set from entity @e[type=minecraft:marker,limit=1,tag=sweep_attack_summon] Pos

# data merge entity @e[type=item_display,limit=1,tag=sweep_attack_summon] {transformation:[1,0,0,0,0,1,0,0,0,0,1,10,0,0,0,1]}

# 处理删除
schedule function mewcraft:sweep_attack/kill 100t append