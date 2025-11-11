#Created by redstone3_in_mc.
execute in minecraft:overworld run fill 50 101 1 50 105 49 minecraft:bedrock hollow
execute in minecraft:overworld run kill @e[team=enemy]
execute in minecraft:overworld run kill @e[team=enemy]
execute in minecraft:overworld run kill @e[team=enemy]
execute in minecraft:overworld run kill @e[team=alliance]
execute in minecraft:overworld run kill @e[type=item]
execute in minecraft:overworld run function mvm:mob1
execute in minecraft:overworld run function mvm:mob2
schedule function mvm:walless 3s append