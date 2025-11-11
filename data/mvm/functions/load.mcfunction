#Created by redstone3_in_mc.
execute in minecraft:overworld run forceload add -1 -4 101 54
gamerule maxEntityCramming 0
gamerule maxCommandChainLength 2147483647
team add enemy
team modify enemy color blue
team add alliance
team modify alliance color red
title @a times 0 40 20
scoreboard objectives add health dummy
scoreboard players set @a health 0
scoreboard objectives add health_max dummy
scoreboard players set @a health_max 0
scoreboard objectives add num dummy
scoreboard players set @a num 0
scoreboard objectives add enemy dummy
scoreboard players set @a enemy 0
scoreboard objectives add alliance dummy
scoreboard players set @a alliance 0
scoreboard objectives add c1 dummy
scoreboard players set @a c1 0
scoreboard objectives add c2 dummy
scoreboard players set @a c2 0
scoreboard objectives add int_max dummy
scoreboard players set @a int_max 2147483647
bossbar add mvm [{"bold": true,"color":"red","text":"alliance = "},{"color":"red","score":{"name":"@p","objective":"alliance"}},{"color":"black","text":" | "},{"color":"blue","text":"Enemy = "},{"color":"blue","score":{"name":"@p","objective":"enemy"}}]
bossbar set mvm color red
bossbar set mvm max 2147483647
bossbar set mvm value 0
bossbar set mvm style progress
bossbar set mvm players @a[x=-100,dx=300,y=-64,dy=384,z=-100,dz=250]
bossbar add health [{"bold": true,"color":"red","text":""},{"color":"red","score":{"name":"@p","objective":"health"}},{"color":"black","text":"/"},{"color":"blue","text":""},{"color":"blue","score":{"name":"@p","objective":"health_max"}}]
bossbar set health color red
bossbar set health max 2147483647
bossbar set health value 0
bossbar set health style progress
bossbar set health players @a[x=-100,dx=300,y=-64,dy=384,z=-100,dz=250,gamemode=spectator]
execute in minecraft:overworld run fill 0 100 0 100 105 50 minecraft:bedrock hollow
execute in minecraft:overworld run fill 1 105 1 99 105 49 minecraft:air replace
execute in minecraft:overworld run fill 0 106 0 100 106 50 minecraft:barrier replace
execute in minecraft:overworld run fill 50 101 1 50 105 49 minecraft:bedrock replace
execute in minecraft:overworld run fill 51 100 53 49 103 51 minecraft:sea_lantern hollow
execute in minecraft:overworld run fill 50 101 52 50 102 50 minecraft:air hollow
execute in minecraft:overworld run fill 49 100 -3 51 103 -1 minecraft:glowstone hollow
execute in minecraft:overworld run fill 50 101 -2 50 102 0 minecraft:air hollow
execute as @a[gamemode=!creative,gamemode=!spectator] at @s in overworld run tp @s 50.5 101.5 -1.5 0 0
execute as @a[gamemode=!creative,gamemode=!spectator] at @s in overworld run function pvm:pvm
execute as @a[gamemode=!creative,gamemode=!spectator] run advancement grant @s only mvm:mvm
schedule function mvm:start 2s append
function mvm:time/5
schedule function mvm:time/4 1s
schedule function mvm:time/3 2s
schedule function mvm:time/2 3s
schedule function mvm:time/1 4s
schedule function mvm:time/0 5s