#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Default (Normal)


execute as @a[scores={Voidblock_islands_fools=1}] run scoreboard objectives add Voidblock_fools minecraft.custom:minecraft.play_time
execute as @a[scores={Voidblock_islands_fools=1}] run tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nLoading...."}
execute as @a[scores={Voidblock_fools=1..}] run scoreboard players set @a Voidblock_install_fools -2
execute as @a[scores={Voidblock_fools=1..}] run scoreboard players set @a Voidblock_islands_fools -2


##START GENERATED FUNCTION
execute in minecraft:overworld as @a[scores={Voidblock_fools=1}] run kill @e[type=!minecraft:player]
execute in minecraft:overworld as @a[scores={Voidblock_fools=1}] run difficulty normal
execute in minecraft:overworld as @a[scores={Voidblock_fools=1}] run gamerule command_block_output false
execute in minecraft:overworld as @a[scores={Voidblock_fools=1}] run gamerule immediate_respawn true
execute in minecraft:overworld as @a[scores={Voidblock_fools=1}] run title @a title {"text":"Loading..."}
execute in minecraft:overworld as @a[scores={Voidblock_fools=1}] run title @a subtitle {"text":"World"}
execute in minecraft:overworld as @a[scores={Voidblock_fools=1}] run title @a times 30 200 20
execute in minecraft:overworld as @a[scores={Voidblock_fools=1}] run gamerule show_advancement_messages false


##Overworld


#?????
execute in minecraft:overworld as @a[scores={Voidblock_fools=1}] run scoreboard players set @a Voidblock_tp_fools 1
execute in minecraft:overworld as @a[scores={Voidblock_fools=1}] run fill 7 110 -13 -7 -60 5 minecraft:air
execute in minecraft:overworld as @a[scores={Voidblock_fools=20}] run place template voidblock:classic -4 61 -6
execute in minecraft:overworld as @a[scores={Voidblock_fools=35}] run setblock 1 66 -2 minecraft:air


#Mushroom House
execute in minecraft:overworld as @a[scores={Voidblock_fools=60}] run scoreboard players set @a Voidblock_tp_fools 2
execute in minecraft:overworld as @a[scores={Voidblock_fools=100}] run fill -2 110 1000 27 -7 1024 minecraft:air
execute in minecraft:overworld as @a[scores={Voidblock_fools=105}] run place template voidblock:mushroom_house 0 61 1000


##FINAL GENERATED FUNCTION
execute as @a[scores={Voidblock_fools=400}] run scoreboard players set @a Voidblock_tp_fools 1
execute as @a[scores={Voidblock_fools=450..}] run scoreboard objectives add Voidblock_structures_id_fools dummy
execute as @a[scores={Voidblock_fools=500}] run spawnpoint @a 0 65 0
execute as @a[scores={Voidblock_fools=500}] run weather clear 1000s
execute as @a[scores={Voidblock_fools=500}] run scoreboard objectives remove 1.21.4_PVN_FOOLS2025
execute as @a[scores={Voidblock_fools=500}] run scoreboard objectives add kills deathCount
execute as @a[scores={Voidblock_fools=500}] run scoreboard objectives setdisplay list kills