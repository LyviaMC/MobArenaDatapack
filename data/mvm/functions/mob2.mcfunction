#Created by redstone3_in_mc.
summon iron_golem 55.5 101.0 25.5 {PlayerCreated:1b}
summon iron_golem 57.5 101.0 25.5 {PlayerCreated:1b}
summon iron_golem 59.5 101.0 25.5 {PlayerCreated:1b}
summon iron_golem 61.5 101.0 25.5 {PlayerCreated:1b}
summon iron_golem 63.5 101.0 25.5 {PlayerCreated:1b}
team join alliance @e[type=!player,x=50,dx=49,y=100,dy=5,z=0,dz=49]
scoreboard players add @p num 1
execute if score @p num matches ..39 run function mvm:mob2
scoreboard players set @p num 0