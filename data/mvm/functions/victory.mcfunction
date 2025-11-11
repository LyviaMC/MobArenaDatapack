#Created by redstone3_in_mc.
title @s times 20 60 20
title @s title {"color":"red","bold":true,"italic":true,"text":"VICTORY"}
title @s subtitle {"color": "red","text":"Alliance: ","extra": [{"score": {"name": "*","objective": "alliance"}}]}
execute in minecraft:overworld run kill @e[team=alliance]
execute in minecraft:overworld run kill @e[type=item]
xp add @s 100 levels
advancement grant @s only mvm:victory
advancement revoke @s only mvm:win
fill 50 102 53 50 101 53 air
kill @e[type=vex]
spreadplayers 50.5 55.5 0.0 1.0 true @a[gamemode=!creative,gamemode=!spectator]