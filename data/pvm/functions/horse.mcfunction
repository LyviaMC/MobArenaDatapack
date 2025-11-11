#Created by redstone3_in_mc.
execute at @s run summon horse ~ ~ ~
item replace entity @e[type=horse,sort=nearest,limit=1] horse.armor with minecraft:diamond_horse_armor
item replace entity @e[type=horse,sort=nearest,limit=1] horse.saddle with minecraft:saddle
gamemode adventure @s