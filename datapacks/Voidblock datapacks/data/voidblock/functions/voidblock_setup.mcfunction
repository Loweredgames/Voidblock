#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Function Setup
function voidblock:islands/default
function voidblock:islands/large
function voidblock:islands/small
function voidblock:islands/very_small
function voidblock:import
function voidblock:setup_global
function voidblock:structures_test/generated_test_structures
function voidblock:structures/generated_biome
function voidblock_legacy:voidblock_legacy_setup
function voidblock:versions/changelog/building
function voidblock:versions/legacy_pid_converter/legacy_converter
function voidblock:versions/version_pvn
function voidblock:versions/debug
function voidblock:multiplayer_setup


##Setup
setblock 0 62 0 minecraft:bedrock keep


##Scoreboard
scoreboard objectives add Voidblock_install dummy
scoreboard objectives add Voidblock_islands dummy
scoreboard objectives add Voidblock_tp dummy
scoreboard players add @a Voidblock_id 1
scoreboard players add @a Voidblock_install 1
scoreboard objectives add Voidblock_multiplayer dummy
scoreboard players add @a Voidblock_multiplayer 1


##Scoreboard Reset
execute as @a[scores={Voidblock_id=2000000..}] run scoreboard players set @a Voidblock_id 10000
execute as @a[scores={Voidblock_large=2000000..}] run scoreboard players set @a Voidblock_large 10000
execute as @a[scores={Voidblock_default=2000000..}] run scoreboard players set @a Voidblock_default 10000
execute as @a[scores={Voidblock_small=2000000..}] run scoreboard players set @a Voidblock_small 10000
execute as @a[scores={Voidblock_very_small=2000000..}] run scoreboard players set @a Voidblock_very_small 10000
execute as @a[scores={Voidblock_import=2000000..}] run scoreboard players set @a Voidblock_import 10000


##Gamerules Setup
execute as @a[scores={Voidblock_id=..1000}] run gamerule mobGriefing true
execute as @a[scores={Voidblock_id=..1000}] run gamerule reducedDebugInfo false
execute as @a[scores={Voidblock_id=..1000}] run gamerule waterSourceConversion true
execute as @a[scores={Voidblock_id=..1000}] run gamerule lavaSourceConversion true
execute as @a[scores={Voidblock_id=..1000}] run gamerule spectatorsGenerateChunks true
execute as @a[scores={Voidblock_id=..1000}] run gamerule fallDamage true
execute as @a[scores={Voidblock_id=..1000}] run gamerule fireDamage true
execute as @a[scores={Voidblock_id=..1000}] run gamerule freezeDamage true
execute as @a[scores={Voidblock_id=..1000}] run gamerule forgiveDeadPlayers true
execute as @a[scores={Voidblock_id=..1000}] run gamerule commandModificationBlockLimit 1000000
execute as @a[scores={Voidblock_id=..1000}] run gamerule maxCommandChainLength 1000000
execute as @a[scores={Voidblock_id=..1000}] run gamerule maxEntityCramming 24
execute as @a[scores={Voidblock_id=..1000}] run gamerule randomTickSpeed 3
execute as @a[scores={Voidblock_id=..1000}] run gamerule snowAccumulationHeight 3
execute as @a[scores={Voidblock_id=..1000}] run gamerule showDeathMessages true
execute as @a[scores={Voidblock_id=..1000}] run gamerule doEntityDrops true
execute as @a[scores={Voidblock_id=..1000}] run gamerule naturalRegeneration true
execute as @a[scores={Voidblock_id=..1000}] run gamerule doVinesSpread true
execute as @a[scores={Voidblock_id=..1000}] run gamerule doMobSpawning true
execute as @a[scores={Voidblock_id=..1000}] run gamerule doWardenSpawning true
execute as @a[scores={Voidblock_id=..1000}] run gamerule doPatrolSpawning true
execute as @a[scores={Voidblock_id=..1000}] run gamerule doTraderSpawning true


##Islands Choices Setup
execute as @a[scores={Voidblock_install=2}] run tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
execute as @a[scores={Voidblock_install=3}] run tellraw @a ["",{"text":"Welcome to the Voidblock","bold":true},{"text":" - "},{"text":"Version:","bold":true},{"text":" 7.3.0 [Rebranding Update] - JE-1.19.4-7.3.0-Voidblock:7.3.0","italic":true},{"text":"\n\n"},{"text":"for","bold":true},{"text":" Minecraft Java Edition: ","bold":true},{"text":"1.19.4 The Wild Update","italic":true},{"text":"\n\n"},{"text":"Choose the languages in the Minecraft options menu","italic":true},{"text":"\n\n"},{"text":"Translated by the Crowdin Translations Community Project, Thanks you.","italic":true,"color":"#FFE28B"},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"text":"Choose the islands:","italic":true},{"text":"\n\n"},{"text":"▶Large (Easy)","color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set @a Voidblock_islands 1"}},{"text":" ","color":"dark_green"},{"text":"[?]","color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"This island is made especially for beginners. This island is the only island not inspired by the original skyblock."}]}},{"text":"\n\n"},{"text":"▶Default (Normal)","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @a Voidblock_islands 2"}},{"text":" ","color":"gold"},{"text":"[?]","color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"This island is the classic island that everyone knows but modernized for new versions of Minecraft. Recommended for those unfamiliar with the original skyblock."}]}},{"text":"\n\n"},{"text":"▶Small (Hard)","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @a Voidblock_islands 3"}},{"text":" ","color":"red"},{"text":"[?]","color":"red","hoverEvent":{"action":"show_text","value":[{"text":"This island is very reminiscent of the original skyblock 2.0 but modernized for new versions of Minecraft. For those who love difficult challenges and know all the tricks and technical notions of the vanilla survival mode."}]}},{"text":"\n\n"},{"text":"▶Very Small (Extreme)","color":"dark_red","clickEvent":{"action":"run_command","value":"/scoreboard players set @a Voidblock_islands 4"}},{"text":" ","color":"dark_red"},{"text":"[?]","color":"dark_red","hoverEvent":{"action":"show_text","value":[{"text":"This island is extreme and not suitable for new players, but only for those who are looking for the thrill of pure vanilla technical and who know Minecraft to the extreme of technical. It is recommended to play with hardcore mode turned on."}]}},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"text":"▶Import World","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @a Voidblock_islands 5"}},{"text":" ","color":"blue"},{"text":"[?]","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Allows you to import a world other than the Voidblock, which can be another Skyblock. adds all the necessary scoreboards without damaging the world and pre-existing structures, also creates a small glass platform if there is nothing. USE WITH CAUTION: THE FUNCTION DOES NOT GENERATE ANY ISLAND, MAKING THE MAP ITSELF AND THE RESOURCES IMPOSSIBLE. IF NO BIOME/STRUCTURE IS GENERATED, IT IS A BUG: MAKE A BACKUP, PUT THE ITEMS IN A CHEST AND REPLACE THE LEVEL.DAT WITH THE OLD ONE."}]}},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"text":"From version:","italic":true},{"text":" "},{"text":"7.3.0","italic":true},{"text":" "},{"text":"to","italic":true},{"text":" "},{"text":"7.3.0","italic":true},{"text":" "},{"text":"is compatible with the datapack.","italic":true},""]
execute as @a[scores={Voidblock_install=1000..}] run scoreboard players set @a Voidblock_install 1
execute as @a[scores={Voidblock_install=1..1000}] run title @a actionbar {"text":"Open the chat/command with ","extra":[{"keybind":"key.chat"},{"text":"/","extra":[{"keybind":"key.command"}]}]}
execute as @a[scores={Voidblock_install=1..}] run gamemode spectator @a
execute as @a[scores={Voidblock_install=1..}] run tp @a 0 0 0 0 90
execute as @a[scores={Voidblock_install=1}] run gamerule doDaylightCycle false
execute as @a[scores={Voidblock_install=1}] run gamerule doWeatherCycle false
execute as @a[scores={Voidblock_install=1}] run time set 0
execute as @a[scores={Voidblock_install=1}] run weather clear 5001s
execute as @a[scores={Voidblock_install=1}] run effect give @a saturation 6 255 true
execute as @a[scores={Voidblock_install=1}] run effect give @a blindness 61 0 true
execute in minecraft:overworld as @a[scores={Voidblock_install=1}] run setworldspawn 0 63 0
execute as @a[scores={Voidblock_install=1}] run xp set @a 0 points
execute as @a[scores={Voidblock_install=1}] run xp set @a 0 levels
execute as @a[scores={Voidblock_install=1}] run difficulty normal
execute as @a[scores={Voidblock_install=3}] run tellraw @a ["",{"text":"If the resource pack is not in the world and can cause damage to the text: add the resource pack in the world folder or ","italic":true,"color":"gray"},{"text":"reinstall the map here","italic":true,"underlined":true,"color":"gray","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases"}},{"text":" and add manually in the world folder.","italic":true,"color":"gray"}]


##Quit Game
scoreboard objectives add Voidblock_quit_game minecraft.custom:minecraft.leave_game
execute as @a[scores={Voidblock_quit_game=1..}] run scoreboard players set @a Voidblock_install 1
execute as @a[scores={Voidblock_quit_game=1..}] run scoreboard objectives remove Voidblock_quit_game


##Teleports Setup
execute as @a[scores={Voidblock_tp=1..6}] run effect give @a minecraft:regeneration 64 250 true
execute in minecraft:overworld run tp @a[scores={Voidblock_tp=1}] 0 64 0 0 90
execute in minecraft:overworld run tp @a[scores={Voidblock_tp=2}] 67 60 -3 0 90
execute in minecraft:the_nether run tp @a[scores={Voidblock_tp=3}] 0 50 0 0 90
execute in minecraft:the_nether run tp @a[scores={Voidblock_tp=4}] 4 55 33 0 90
execute in minecraft:the_nether run tp @a[scores={Voidblock_tp=5}] -2 50 -50 0 90
execute in minecraft:overworld run tp @a[scores={Voidblock_tp=6}] 25 70 1022 0 90