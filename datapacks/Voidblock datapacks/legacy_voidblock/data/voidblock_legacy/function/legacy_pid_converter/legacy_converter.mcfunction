#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


###Voidblock PID Import Converter


##Skyblock Classic Edition Legacy (1.x.x)
execute as @a[scores={skyblock=140..}] run scoreboard objectives add Voidblock_import minecraft.custom:minecraft.play_time
execute as @a[scores={skyblock=140..}] run effect give @a minecraft:slow_falling 180 0 false
execute as @a[scores={Voidblock_import=100..}] run scoreboard objectives remove skyblock


##Skyblock Classic Edition Legacy (2.x.x/3.x.x/4.x.x)
execute as @a[scores={skyblock_large=140..}] run scoreboard objectives add Voidblock_import minecraft.custom:minecraft.play_time
execute as @a[scores={skyblock_large=140..}] run effect give @a minecraft:slow_falling 180 0 false
execute as @a[scores={Voidblock_import=100..}] run scoreboard objectives remove skyblock_large
execute as @a[scores={skyblock_normal=140..}] run scoreboard objectives add Voidblock_import minecraft.custom:minecraft.play_time
execute as @a[scores={skyblock_normal=140..}] run effect give @a minecraft:slow_falling 180 0 false
execute as @a[scores={Voidblock_import=100..}] run scoreboard objectives remove skyblock_normal
execute as @a[scores={skyblock_small=140..}] run scoreboard objectives add Voidblock_import minecraft.custom:minecraft.play_time
execute as @a[scores={skyblock_small=140..}] run effect give @a minecraft:slow_falling 180 0 false
execute as @a[scores={Voidblock_import=100..}] run scoreboard objectives remove skyblock_small


##Skyblock Classic Edition Legacy (5.x.x/6.x.x)
execute as @a[scores={SkyblockCE_large=140..}] run scoreboard objectives add Voidblock_import minecraft.custom:minecraft.play_time
execute as @a[scores={SkyblockCE_large=140..}] run effect give @a minecraft:slow_falling 180 0 false
execute as @a[scores={Voidblock_import=100..}] run scoreboard objectives remove SkyblockCE_large
execute as @a[scores={SkyblockCE_default=140..}] run scoreboard objectives add Voidblock_import minecraft.custom:minecraft.play_time
execute as @a[scores={SkyblockCE_default=140..}] run effect give @a minecraft:slow_falling 180 0 false
execute as @a[scores={Voidblock_import=100..}] run scoreboard objectives remove SkyblockCE_default
execute as @a[scores={SkyblockCE_small=140..}] run scoreboard objectives add Voidblock_import minecraft.custom:minecraft.play_time
execute as @a[scores={SkyblockCE_small=140..}] run effect give @a minecraft:slow_falling 180 0 false
execute as @a[scores={Voidblock_import=100..}] run scoreboard objectives remove SkyblockCE_small
execute as @a[scores={SkyblockCE_very_small=140..}] run scoreboard objectives add Voidblock_import minecraft.custom:minecraft.play_time
execute as @a[scores={SkyblockCE_very_small=140..}] run effect give @a minecraft:slow_falling 180 0 false
execute as @a[scores={Voidblock_import=100..}] run scoreboard objectives remove SkyblockCE_very_small