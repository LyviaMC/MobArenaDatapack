#Created by redstone3_in_mc.
team leave @a[gamemode=spectator]
execute if score @p alliance matches ..10 as @e[team=enemy,type=!player] at @s unless entity @e[team=alliance,type=!player,distance=..10] facing entity @e[team=alliance,sort=nearest,limit=1] eyes run tp @s ^ ^ ^0.05 ~ ~
execute if score @p enemy matches ..10 as @e[team=alliance,type=!player] at @s unless entity @e[team=enemy,type=!player,distance=..10] facing entity @e[team=enemy,sort=nearest,limit=1] eyes run tp @s ^ ^ ^0.05 ~ ~
execute as @e[type=chest_minecart] at @s run function mvm:cart
execute as @e[x=-100,dx=300,y=-64,dy=384,z=-100,dz=250] at @s unless entity @s[team=!enemy,team=!alliance] unless entity @e[x=0,dx=100,y=100,dy=6,z=0,dz=50] facing 50 101 25 run tp @s ^ ^ ^0.1 ~ ~
execute store result score @a enemy run execute if entity @e[team=enemy]
execute store result score @a alliance run execute if entity @e[team=alliance]
execute as @a[scores={enemy=0,alliance=1..}] run advancement grant @s only mvm:win
execute as @a[scores={enemy=1..,alliance=0}] run advancement grant @s only mvm:lost
scoreboard players operation @a c1 = @p enemy
scoreboard players operation @a c1 += @p alliance
scoreboard players operation @a c2 = @p int_max
scoreboard players operation @a c2 /= @p c1
scoreboard players operation @a c1 = @p alliance
scoreboard players operation @a c2 *= @p c1
execute store result bossbar mvm value run scoreboard players get @p c2
bossbar set mvm name [{"bold": true,"color":"red","text":"Alliance = "},{"color":"red","score":{"name":"@p","objective":"alliance"}},{"color":"black","text":" |    "},{"color":"blue","text":"Enemy = "},{"color":"blue","score":{"name":"@p","objective":"enemy"}}]
bossbar set mvm players @a[x=-100,dx=300,y=-64,dy=384,z=-100,dz=250]
execute as @a[tag=spectator] at @s unless entity @e[team=!,distance=..1] run tag @s remove spectator
execute as @a[x=-100,dx=300,y=-64,dy=384,z=-100,dz=250,gamemode=spectator] at @s if entity @e[team=!,distance=..1] run function mvm:health
execute as @a[x=-100,dx=300,y=-64,dy=384,z=-100,dz=250,gamemode=spectator] at @s if entity @e[team=!,distance=..1] run tag @s add spectator
bossbar set health players @a[tag=spectator]