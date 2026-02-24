#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Function Setup
function voidblock:import
function voidblock:islands/fools2025
function voidblock:versions/changelog/building
function voidblock:versions/version_pvn
function voidblock:multiplayer_setup


##Setup
setblock 0 62 0 minecraft:bedrock keep


##Scoreboard
scoreboard objectives add Voidblock_install_fools dummy
scoreboard objectives add Voidblock_islands_fools dummy
scoreboard objectives add Voidblock_tp_fools dummy
scoreboard players add @a Voidblock_id_fools 1
scoreboard players add @a Voidblock_install_fools 1
scoreboard objectives add Voidblock_multiplayer dummy
scoreboard players add @a Voidblock_multiplayer 1


##Scoreboard Reset
execute as @a[scores={Voidblock_id_fools=2000000..}] run scoreboard players set @a Voidblock_id_fools 10000
execute as @a[scores={Voidblock__fools=2000000..}] run scoreboard players set @a Voidblock__fools 10000


##Islands Choices Setup
execute as @a[scores={Voidblock_install_fools=2}] run tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
execute as @a[scores={Voidblock_install_fools=3}] run tellraw @a ["",{"text":"Welcome to the Voidblock April Fools Edition","bold":true},{"text":" - "},{"text":"Version:","bold":true},{"text":" 7.3.0_Fools [Rebranding Update] - fork_JE-26.1-7.3.0-Voidblock:PRE_RELEASE-1","italic":true},{"text":"\n\n"},{"text":"for","bold":true},{"text":" Minecraft Java Edition: ","bold":true},{"text":"26.1 ???? Drops","italic":true},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"text":"Click Below to Continue:","italic":true},{"text":"\n\n"},{"text":"APRILE 2025???","color":"dark_green","click_event":{"action":"run_command","command":"scoreboard players set @a Voidblock_islands_fools 1"}},{"text":' ',"color":"dark_green"},{"text":"[?]","color":"dark_green","hover_event":{"action":"show_text","value":"ADD INFO APRIL ???"}},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"text":"This version is incompatible and must be used with the correct April release of Minecraft.","italic":true},""]
execute as @a[scores={Voidblock_install_fools=1000..}] run scoreboard players set @a Voidblock_install_fools 1
execute as @a[scores={Voidblock_install_fools=1..}] run gamemode spectator @a
execute as @a[scores={Voidblock_install_fools=1..}] run tp @a 0 0 0 0 90
execute as @a[scores={Voidblock_install_fools=1}] run gamerule advance_time false
execute as @a[scores={Voidblock_install_fools=1}] run gamerule advance_weather false
execute as @a[scores={Voidblock_install_fools=1}] run time set 0
execute as @a[scores={Voidblock_install_fools=1}] run weather clear 5001s
execute as @a[scores={Voidblock_install_fools=1}] run effect give @a saturation 6 255 true
execute as @a[scores={Voidblock_install_fools=1}] run effect give @a blindness 61 0 true
execute as @a[scores={Voidblock_install_fools=1}] run setworldspawn 0 63 0
execute as @a[scores={Voidblock_install_fools=1}] run xp set @a 0 points
execute as @a[scores={Voidblock_install_fools=1}] run xp set @a 0 levels
execute as @a[scores={Voidblock_install_fools=1}] run difficulty normal


##Quit Game
scoreboard objectives add Voidblock_quit_game_fools minecraft.custom:minecraft.leave_game
execute as @a[scores={Voidblock_quit_game_fools=1..}] run scoreboard players set @a Voidblock_install_fools 1
execute as @a[scores={Voidblock_quit_game_fools=1..}] run scoreboard objectives remove Voidblock_quit_game_fools


##Teleports Setup
execute as @a[scores={Voidblock_tp_fools=1}] run effect give @a minecraft:regeneration 64 250 true
execute in minecraft:overworld run tp @a[scores={Voidblock_tp_fools=1}] 0 64 0 0 90
execute in minecraft:overworld run tp @a[scores={Voidblock_tp_fools=2}] -2 64 1000 0 90