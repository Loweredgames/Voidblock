#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Voidblock Import
execute as @a[scores={Voidblock_islands=5}] run scoreboard objectives add Voidblock_import minecraft.custom:minecraft.play_time
execute as @a[scores={Voidblock_islands=5}] run tellraw @a {"translate":"skyblock_classic_edition.loading.chat"}
execute as @a[scores={Voidblock_import=1..}] run scoreboard players set @a Voidblock_install -2
execute as @a[scores={Voidblock_import=1..}] run scoreboard players set @a Voidblock_islands -2
execute as @a[scores={Voidblock_import=1..}] run scoreboard objectives add Voidblock_id dummy
execute as @a[scores={Voidblock_import=1..}] run scoreboard players set @a Voidblock_id 24000
execute as @a[scores={Voidblock_import=1..}] run scoreboard players set @a Voidblock_structures_id 24005
execute as @a[scores={Voidblock_import=1..}] run scoreboard players set @a Voidblock_structures 24000
execute as @a[scores={Voidblock_import=1..}] run scoreboard players set @a Voidblock_test_structures 24000
execute as @a[scores={Voidblock_import=1..}] run scoreboard players set @a Voidblock_large 24000
execute as @a[scores={Voidblock_import=1..}] run scoreboard players set @a Voidblock_default 24000
execute as @a[scores={Voidblock_import=1..}] run scoreboard players set @a Voidblock_small 24000
execute as @a[scores={Voidblock_import=1..}] run scoreboard players set @a Voidblock_very_small 24000


##START GENERATED FUNCTION
execute as @a[scores={Voidblock_import=2}] run gamerule commandBlockOutput false
execute as @a[scores={Voidblock_import=2}] run title @a title {"translate":"skyblock_classic_edition.loading.title.chat"}
execute as @a[scores={Voidblock_import=2}] run title @a subtitle {"translate":"skyblock_classic_edition.loading.subtitle.chat"}
execute as @a[scores={Voidblock_import=2}] run title @a times 30 200 20


##Generated Platform
execute in minecraft:overworld as @a[scores={Voidblock_import=2}] run scoreboard players set @a Voidblock_tp 1
execute as @a[scores={Voidblock_import=3}] run give @p map
execute as @a[scores={Voidblock_import=3}] run fill 0 63 0 0 64 0 minecraft:air destroy
execute as @a[scores={Voidblock_import=3}] run fill 1 62 1 -1 62 -1 minecraft:glass keep


##FINAL GENERATED FUNCTION
execute as @a[scores={Voidblock_import=10..}] run scoreboard players set @a Voidblock_tp 0
execute as @a[scores={Voidblock_import=1..24}] run gamerule doImmediateRespawn true
execute as @a[scores={Voidblock_import=10}] run title @a reset
execute as @a[scores={Voidblock_import=11}] run title @a title ["",{"text":"Void","bold":true,"color":"aqua"},{"text":"block","bold":true,"color":"dark_green"}]
execute as @a[scores={Voidblock_import=11}] run title @a times 30 100 30
execute as @a[scores={Voidblock_import=11..24}] run gamerule announceAdvancements true
execute as @a[scores={Voidblock_import=11..24}] run gamerule doDaylightCycle true
execute as @a[scores={Voidblock_import=11..24}] run gamerule doWeatherCycle true
execute as @a[scores={Voidblock_import=11}] run time set 0
execute as @a[scores={Voidblock_import=11}] run execute in minecraft:overworld run tp @p 0 65 0 0.0 0.0
execute as @a[scores={Voidblock_import=15..24}] run gamemode survival @p
execute as @a[scores={Voidblock_import=15}] run spawnpoint @a 0 65 0
execute in minecraft:overworld as @a[scores={Voidblock_import=15}] run setworldspawn 0 65 0
execute as @a[scores={Voidblock_import=15}] run effect clear @a
execute as @a[scores={Voidblock_import=15..24}] run stopsound @a
execute as @a[scores={Voidblock_import=15}] run scoreboard objectives add kills deathCount
execute as @a[scores={Voidblock_import=15}] run scoreboard objectives setdisplay list kills
execute as @a[scores={Voidblock_import=15}] run playsound minecraft:block.note_block.bit ambient @a 0 66 0 100 2
execute as @a[scores={Voidblock_import=24..100}] run effect give @a minecraft:regeneration 11 250 false
execute as @a[scores={Voidblock_import=24..100}] run effect give @a minecraft:resistance 11 250 false
execute as @a[scores={Voidblock_import=24..100}] run gamerule doImmediateRespawn false
