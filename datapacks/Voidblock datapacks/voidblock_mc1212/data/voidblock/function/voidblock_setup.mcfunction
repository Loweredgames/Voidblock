#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Function Setup Lock
function voidblock:islands/default
function voidblock:islands/large
function voidblock:islands/small
function voidblock:islands/very_small
function voidblock:import
function voidblock:voidblock_mc_setup
function voidblock:structures/custom_structures
function voidblock:structures/generated_biome
function voidblock_legacy:voidblock_legacy_setup
function voidblock:versions/changelog/building
function voidblock:versions/version_pvn
function voidblock:versions/debug
function voidblock:multiplayer_setup


##Setup Lock
setblock 0 62 0 minecraft:bedrock keep


##Scoreboard Lock
scoreboard objectives add Voidblock_install dummy
scoreboard objectives add Voidblock_islands dummy
scoreboard objectives add Voidblock_tp dummy
scoreboard players add @a Voidblock_id 1
scoreboard players add @a Voidblock_install 1
scoreboard objectives add Voidblock_multiplayer dummy
scoreboard players add @a Voidblock_multiplayer 1


##Scoreboard Reset Lock
execute as @a[scores={Voidblock_id=2000000..}] run scoreboard players set @a Voidblock_id 10000
execute as @a[scores={Voidblock_large=2000000..}] run scoreboard players set @a Voidblock_large 10000
execute as @a[scores={Voidblock_default=2000000..}] run scoreboard players set @a Voidblock_default 10000
execute as @a[scores={Voidblock_small=2000000..}] run scoreboard players set @a Voidblock_small 10000
execute as @a[scores={Voidblock_very_small=2000000..}] run scoreboard players set @a Voidblock_very_small 10000
execute as @a[scores={Voidblock_import=2000000..}] run scoreboard players set @a Voidblock_import 10000


##Gamerules Setup Lock
gamerule mobGriefing true
gamerule reducedDebugInfo false
gamerule enderPearlsVanishOnDeath true
gamerule waterSourceConversion true
gamerule lavaSourceConversion true
gamerule spectatorsGenerateChunks true
gamerule fallDamage true
gamerule fireDamage true
gamerule freezeDamage true
gamerule forgiveDeadPlayers true
gamerule mobExplosionDropDecay true
gamerule commandModificationBlockLimit 1000000
gamerule maxCommandChainLength 1000000
gamerule playersNetherPortalCreativeDelay 1
gamerule playersNetherPortalDefaultDelay 80
gamerule spawnChunkRadius 2
gamerule projectilesCanBreakBlocks true
gamerule maxEntityCramming 24
gamerule randomTickSpeed 3
gamerule snowAccumulationHeight 3
gamerule showDeathMessages true
gamerule doMobLoot true
gamerule naturalRegeneration true
gamerule doVinesSpread true
gamerule doFireTick true
gamerule doInsomnia true
gamerule doMobSpawning true
gamerule doWardenSpawning true
gamerule doPatrolSpawning true
gamerule doTraderSpawning true


##Islands Choices Setup Lock
execute as @a[scores={Voidblock_install=2}] run tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
execute as @a[scores={Voidblock_install=3}] run tellraw @a ["",{"translate":"skyblock_classic_edition.skyblock_setup.welcome","bold":true},{"text":":","bold":true},{"text":"\n\n"},{"translate":"skyblock_classic_edition.install.hardcore.lock","italic":true,"color":"red"},{"translate":"skyblock_classic_edition.generated_structures.generated.command_block.download","italic":true,"underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Voidblock/releases"}},{"translate":"skyblock_classic_edition.install.hardcore.lock.replace_datapack","italic":true,"color":"red"}]
execute as @a[scores={Voidblock_install=1000..}] run scoreboard players set @a Voidblock_install 1
execute as @a[scores={Voidblock_install=1..1000}] run title @a actionbar {"translate":"skyblock_classic_edition.skyblock_setup.help_keybind","extra":[{"keybind":"key.chat"},{"text":"/","extra":[{"keybind":"key.command"}]}]}
execute as @a[scores={Voidblock_install=1..}] run gamemode spectator @a
execute as @a[scores={Voidblock_install=1..}] run tp @a 0 0 0 0 90
execute as @a[scores={Voidblock_install=1}] run gamerule doDaylightCycle false
execute as @a[scores={Voidblock_install=1}] run gamerule doWeatherCycle false
execute as @a[scores={Voidblock_install=1}] run time set 0
execute as @a[scores={Voidblock_install=1}] run weather clear 5001s
execute as @a[scores={Voidblock_install=1}] run effect give @a saturation 6 255 true
execute as @a[scores={Voidblock_install=1}] run effect give @a blindness 61 0 true
execute as @a[scores={Voidblock_install=1}] run setworldspawn 0 63 0
execute as @a[scores={Voidblock_install=1}] run xp set @a 0 points
execute as @a[scores={Voidblock_install=1}] run xp set @a 0 levels
execute as @a[scores={Voidblock_install=1}] run difficulty normal
execute as @a[scores={Voidblock_install=3}] run tellraw @a ["",{"text":"If the resource pack is not in the world and can cause damage to the text: add the resource pack in the world folder or ","italic":true,"color":"gray"},{"text":"reinstall the map here","italic":true,"underlined":true,"color":"gray","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Voidblock/releases"}},{"text":" and add manually in the world folder.","italic":true,"color":"gray"}]


##Quit Game Lock
scoreboard objectives add Voidblock_quit_game minecraft.custom:minecraft.leave_game
execute as @a[scores={Voidblock_quit_game=1..}] run scoreboard players set @a Voidblock_install 1
execute as @a[scores={Voidblock_quit_game=1..}] run scoreboard objectives remove Voidblock_quit_game


##Teleports Setup Lock
execute as @a[scores={Voidblock_tp=1..6}] run effect give @a minecraft:regeneration 64 250 true
execute in minecraft:overworld run tp @a[scores={Voidblock_tp=1}] 0 64 0 0 90
execute in minecraft:overworld run tp @a[scores={Voidblock_tp=2}] 67 60 -3 0 90
execute in minecraft:the_nether run tp @a[scores={Voidblock_tp=3}] 0 50 0 0 90
execute in minecraft:the_nether run tp @a[scores={Voidblock_tp=4}] 4 55 33 0 90
execute in minecraft:the_nether run tp @a[scores={Voidblock_tp=5}] -2 50 -50 0 90
execute in minecraft:overworld run tp @a[scores={Voidblock_tp=6}] 25 70 1022 0 90