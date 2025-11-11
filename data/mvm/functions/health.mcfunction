#Created by redstone3_in_mc.
execute store result score @s health run data get entity @e[team=!,sort=nearest,limit=1] Health
execute store result score @s health_max run attribute @e[team=!,sort=nearest,limit=1] minecraft:generic.max_health base get
bossbar set health name [{"bold": true,"color":"red","text":""},{"color":"red","score":{"name":"@p","objective":"health"}},{"color":"black","text":"/"},{"color":"blue","text":""},{"color":"blue","score":{"name":"@p","objective":"health_max"}}]
execute store result bossbar health max run scoreboard players get @p health_max
execute store result bossbar health value run scoreboard players get @p health