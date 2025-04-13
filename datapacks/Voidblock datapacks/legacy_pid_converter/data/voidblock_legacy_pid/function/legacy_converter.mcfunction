#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


###Voidblock PID Import Converter


##Skyblock Classic Edition Legacy (1.x.x)
execute as @a[scores={skyblock=140..}] run scoreboard objectives add Voidblock_import minecraft.custom:minecraft.play_time
execute as @a[scores={skyblock=140..}] run effect give @a minecraft:levitation 180 0 false
execute as @a[scores={Voidblock_import=100..}] run scoreboard objectives remove skyblock


##Skyblock Classic Edition Legacy (2.x.x/3.x.x/4.x.x)
execute as @a[scores={skyblock_large=1400..}] run scoreboard objectives add Voidblock_import minecraft.custom:minecraft.play_time
execute as @a[scores={skyblock_large=1400..}] run effect give @a minecraft:levitation 180 0 false
execute as @a[scores={Voidblock_import=100..}] run scoreboard objectives remove skyblock_large
execute as @a[scores={skyblock_normal=1400..}] run scoreboard objectives add Voidblock_import minecraft.custom:minecraft.play_time
execute as @a[scores={skyblock_normal=1400..}] run effect give @a minecraft:levitation 180 0 false
execute as @a[scores={Voidblock_import=100..}] run scoreboard objectives remove skyblock_normal
execute as @a[scores={skyblock_small=1400..}] run scoreboard objectives add Voidblock_import minecraft.custom:minecraft.play_time
execute as @a[scores={skyblock_small=1400..}] run effect give @a minecraft:levitation 180 0 false
execute as @a[scores={Voidblock_import=100..}] run scoreboard objectives remove skyblock_small


##Skyblock Classic Edition Legacy (5.x.x/6.x.x)
execute as @a[scores={SkyblockCE_large=140..}] run scoreboard objectives add Voidblock_import minecraft.custom:minecraft.play_time
execute as @a[scores={SkyblockCE_large=140..}] run effect give @a minecraft:levitation 180 0 false
execute as @a[scores={Voidblock_import=100..}] run scoreboard objectives remove SkyblockCE_large
#execute as @a[scores={SkyblockCE_default=140..}] run scoreboard objectives add Voidblock_import minecraft.custom:minecraft.play_time
execute as @a[scores={SkyblockCE_default=140..}] run effect give @a minecraft:levitation 180 0 false
execute as @a[scores={Voidblock_import=100..}] run scoreboard objectives remove SkyblockCE_default
execute as @a[scores={SkyblockCE_small=140..}] run scoreboard objectives add Voidblock_import minecraft.custom:minecraft.play_time
execute as @a[scores={SkyblockCE_small=140..}] run effect give @a minecraft:levitation 180 0 false
execute as @a[scores={Voidblock_import=100..}] run scoreboard objectives remove SkyblockCE_small
execute as @a[scores={SkyblockCE_very_small=140..}] run scoreboard objectives add Voidblock_import minecraft.custom:minecraft.play_time
execute as @a[scores={SkyblockCE_very_small=140..}] run effect give @a minecraft:levitation 180 0 false
execute as @a[scores={Voidblock_import=100..}] run scoreboard objectives remove SkyblockCE_very_small

# Da Testare e vedere. forse è install?
execute as @a[scores={SkyblockCE_default=140..}] run scoreboard players set @a Voidblock_islands 5

##Skyblock Classic Edition Legacy PID REMOVE (dalla 1.x.x alla 6.x.x)
scoreboard objectives remove tp
scoreboard objectives remove skyblock_install
scoreboard objectives remove skyblock_island
scoreboard objectives remove ID_1
scoreboard objectives remove fix_end
scoreboard objectives remove ID_2
scoreboard objectives remove skyblock_ID
scoreboard objectives remove structure_skyblock
scoreboard objectives remove ID_3
scoreboard objectives remove ID_4
scoreboard objectives remove ID_5
scoreboard objectives remove multiplayer_popup
scoreboard objectives remove PID_0
scoreboard objectives remove skyblock_quit_game
scoreboard objectives remove PID_OLD
scoreboard objectives remove SkyblockCE_id
scoreboard objectives remove SkyblockCE_install
scoreboard objectives remove SkyblockCE_islands
scoreboard objectives remove SkyblockCE_multiplayer
scoreboard objectives remove SkyblockCE_multiplayer_reset
scoreboard objectives remove SkyblockCE_multiplayer_join
scoreboard objectives remove SkyblockCE_quit_game
scoreboard objectives remove SkyblockCE_tp
scoreboard objectives remove PID_1
scoreboard objectives remove SkyblockCE_custom_structures
scoreboard objectives remove SkyblockCE_debug
scoreboard objectives remove SkyblockCE_structures_id
scoreboard objectives remove SkyblockCE_multiplayer
scoreboard objectives remove SkyblockCE_multiplayer_reset