#Created by redstone3_in_mc.
summon witch 45.5 101.0 25.5
summon ravager 43.5 101.0 25.5
summon vindicator 41.5 101.0 25.5
summon pillager 39.5 101.0 25.5
summon illusioner 37.5 101.0 25.5
summon evoker 35.5 101.0 25.5
team join enemy @e[type=!player,x=0,dx=49,y=100,dy=5,z=0,dz=49]
scoreboard players add @p num 1
execute if score @p num matches ..149 run function mvm:mob1
scoreboard players set @p num 0