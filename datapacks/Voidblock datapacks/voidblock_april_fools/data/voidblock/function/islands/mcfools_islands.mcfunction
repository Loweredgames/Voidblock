#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Voidblock April Fools - Minecraft (26.1 - 26w14a)
execute as @a[scores={Voidblock_islands_fools=1}] run scoreboard objectives add Voidblock_fools minecraft.custom:minecraft.play_time
execute as @a[scores={Voidblock_islands_fools=1}] run tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nLoading...."}
execute as @a[scores={Voidblock_fools=1..}] run scoreboard players set @a Voidblock_install_fools -2
execute as @a[scores={Voidblock_fools=1..}] run scoreboard players set @a Voidblock_islands_fools -2


##START GENERATED FUNCTION
execute in minecraft:overworld as @a[scores={Voidblock_fools=1}] run kill @e[type=!minecraft:player]
execute in minecraft:overworld as @a[scores={Voidblock_fools=1..5}] run difficulty normal
execute in minecraft:overworld as @a[scores={Voidblock_fools=1}] run gamerule command_block_output false
execute in minecraft:overworld as @a[scores={Voidblock_fools=1}] run gamerule immediate_respawn true
execute in minecraft:overworld as @a[scores={Voidblock_fools=1}] run title @a title {"text":"Loading..."}
execute in minecraft:overworld as @a[scores={Voidblock_fools=1}] run title @a subtitle {"text":"World"}
execute in minecraft:overworld as @a[scores={Voidblock_fools=1}] run title @a times 30 200 20
execute in minecraft:overworld as @a[scores={Voidblock_fools=1}] run gamerule show_advancement_messages false


##Overworld


#Classic
execute in minecraft:overworld as @a[scores={Voidblock_fools=1}] run scoreboard players set @a Voidblock_tp_fools 1
execute in minecraft:overworld as @a[scores={Voidblock_fools=1}] run fill 7 110 -13 -7 -60 5 minecraft:air
execute in minecraft:overworld as @a[scores={Voidblock_fools=20}] run place template voidblock:islands/classic -4 61 -6
execute in minecraft:overworld as @a[scores={Voidblock_fools=35}] run setblock 1 66 -2 minecraft:air


#Classic Desert
execute in minecraft:overworld as @a[scores={Voidblock_fools=40}] run scoreboard players set @a Voidblock_tp_fools 2
execute in minecraft:overworld as @a[scores={Voidblock_fools=40}] run fill 58 110 7 79 -60 -18 minecraft:air
execute in minecraft:overworld as @a[scores={Voidblock_fools=50}] run place template voidblock:islands/classic_desert 66 61 -4


#Mushroom House
execute in minecraft:overworld as @a[scores={Voidblock_fools=60}] run scoreboard players set @a Voidblock_tp_fools 6
execute in minecraft:overworld as @a[scores={Voidblock_fools=100}] run fill -2 110 1000 27 -7 1024 minecraft:air
execute in minecraft:overworld as @a[scores={Voidblock_fools=105}] run place template voidblock:islands/mushroom_house 0 61 1000


##The Nether


#Nether Classic
execute in minecraft:overworld as @a[scores={Voidblock_fools=130}] run scoreboard players set @a Voidblock_tp_fools 3
execute in minecraft:the_nether as @a[scores={Voidblock_fools=150}] run fill 17 1 43 -12 255 -8 minecraft:air
execute in minecraft:the_nether as @a[scores={Voidblock_fools=155}] run place template voidblock:nether/nether_classic 2 50 3


#Nether Classic Bastion
execute as @a[scores={Voidblock_fools=200}] run scoreboard players set @a Voidblock_tp_fools 4
execute in minecraft:the_nether as @a[scores={Voidblock_fools=250}] run place template voidblock:nether/nether_classic_bastion 4 55 33


#Nether Classic Forest
execute as @a[scores={Voidblock_fools=300}] run scoreboard players set @a Voidblock_tp_fools 5
execute in minecraft:the_nether as @a[scores={Voidblock_fools=350}] run fill -4 1 -52 11 255 -44 minecraft:air
execute in minecraft:the_nether as @a[scores={Voidblock_fools=355}] run place template voidblock:nether/nether_classic_forest -2 50 -50


##The End (???)


##FINAL GENERATED FUNCTION
execute as @a[scores={Voidblock_fools=400}] run scoreboard players set @a Voidblock_tp_fools 1
execute as @a[scores={Voidblock_fools=500}] run spawnpoint @a 0 65 0
execute as @a[scores={Voidblock_fools=500}] run weather clear 1000s
execute as @a[scores={Voidblock_fools=500}] run scoreboard objectives add kills deathCount
execute as @a[scores={Voidblock_fools=500}] run scoreboard objectives setdisplay list kills