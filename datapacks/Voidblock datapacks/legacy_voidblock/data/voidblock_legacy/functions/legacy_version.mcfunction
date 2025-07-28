#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Legacy Setup (Aggiornato all'ultima versione: 5.3.X LTS Minecraft: 1.20.6) Ricordasi di aggiornare "legacy_version", aggiungendo le cose della convesione (il libro,il portale bloccato, ecc.) per le versioni vecchie e incompatibili.
execute as @a[scores={skyblock=1..}] run scoreboard objectives add Voidblock_legacy_version dummy
execute as @a[scores={Voidblock_legacy_version=1..}] run scoreboard objectives add Voidblock_import minecraft.custom:minecraft.play_time
execute as @a[scores={Voidblock_legacy_version=1..}] run summon minecraft:area_effect_cloud ~ ~1 ~
execute as @a[scores={Voidblock_legacy_version=1..}] run effect give @a minecraft:slow_falling 31 0 false
execute as @a[scores={Voidblock_legacy_version=1..7015}] run gamemode spectator @a
execute as @a[scores={Voidblock_legacy_version=..55}] run tellraw @a {"translate":"skyblock_classic_edition.loading.chat"}
execute as @a[scores={Voidblock_legacy_version=6}] run tp @a 0 -1 0 0 0
execute as @a[scores={Voidblock_legacy_version=6}] run setblock 0 -2 0 minecraft:crying_obsidian keep
execute as @a[scores={Voidblock_legacy_version=6}] run effect give @a minecraft:resistance 11 250 true
execute as @a[scores={Voidblock_legacy_version=26..}] run gamerule doDaylightCycle true
execute as @a[scores={Voidblock_legacy_version=26..}] run gamerule doWeatherCycle true
execute as @a[scores={Voidblock_legacy_version=27}] run scoreboard objectives add kills deathCount
execute as @a[scores={Voidblock_legacy_version=27}] run scoreboard objectives setdisplay list kills
execute as @a[scores={Voidblock_legacy_version=50}] run scoreboard players set @a Voidblock_tp 0
execute as @a[scores={Voidblock_legacy_version=51}] run fill 0 -1 0 0 7 0 minecraft:air destroy
execute as @a[scores={Voidblock_legacy_version=52}] run give @p filled_map[map_id=0] 1
execute in minecraft:the_nether as @a[scores={Voidblock_legacy_version=3000}] run tp @a 0 -3 30
execute in minecraft:the_nether as @a[scores={Voidblock_legacy_version=3100}] run fill 2 2 33 -2 2 29 minecraft:infested_cobblestone destroy
execute in minecraft:the_nether as @a[scores={Voidblock_legacy_version=3200}] run setblock 0 3 31 oak_sign[rotation=8,waterlogged=false]{front_text:{color:"black",has_glowing_text:1b,messages:['{"text":"The portal is"}','{"text":"broken sorry.."}','{"text":";("}','{"text":"since: 1.0.0"}']}} destroy
execute in minecraft:overworld at @a[scores={Voidblock_legacy_version=4010}] run execute in minecraft:overworld run tp @a 0 64 0 ~ ~
execute as @a[scores={Voidblock_legacy_version=4015..}] run gamemode survival @a
execute as @a[scores={Voidblock_legacy_version=5000..}] run scoreboard objectives remove skyblock
execute as @a[scores={Voidblock_import=90000..}] run scoreboard objectives remove Voidblock_legacy_version