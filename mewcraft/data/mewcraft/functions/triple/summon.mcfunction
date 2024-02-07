# 依据玩家视线指向生成剑模型
execute at @e[type=minecraft:villager,limit=1] as @e[type=minecraft:villager,limit=1] anchored eyes run summon minecraft:item_display ^ ^-0.25 ^0.5 {item:{id:"minecraft:iron_sword",Count:1b},Tags:["ready"]}

# 读取玩家视线的Y值，应用在剑实体上
execute at @e[type=minecraft:villager,limit=1] as @e[type=minecraft:villager,limit=1] run data modify entity @e[type=item_display,limit=1,tag=ready] Rotation[0] set from entity @e[type=minecraft:villager,limit=1] Rotation[0]

# 执行第一段的准备阶段
function mewcraft:triple/attack_1_ready