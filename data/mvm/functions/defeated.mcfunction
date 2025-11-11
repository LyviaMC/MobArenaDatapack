#Created by redstone3_in_mc.
title @s times 20 60 20
title @s title {"color":"dark_blue","bold":true,"italic":true,"text":"DEFEATED"}
title @s subtitle {"color": "dark_blue","text":"Enemy: ","extra": [{"score": {"name": "*","objective": "enemy"}}]}
execute in minecraft:overworld run kill @e[team=enemy]
execute in minecraft:overworld run kill @e[team=enemy]
execute in minecraft:overworld run kill @e[team=enemy]
execute in minecraft:overworld run kill @e[type=item]
xp set @s 0 points
xp set @s 0 levels
clear @s
kill @e[type=vex]
advancement grant @s only mvm:defeated
advancement revoke @s only mvm:lost
kill @s[gamemode=!creative,gamemode=!spectator]