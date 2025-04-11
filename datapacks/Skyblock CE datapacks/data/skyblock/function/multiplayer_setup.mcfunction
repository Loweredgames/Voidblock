#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##MULTIPLAYER SETUP
execute store result score SkyblockCE_PlayerOnline SkyblockCE_multiplayer if entity @a
execute if score SkyblockCE_PlayerOnline SkyblockCE_multiplayer matches 2.. run scoreboard players set @a SkyblockCE_multiplayer_join 2


##MULTIPLAYER JOIN PLAYERS
scoreboard objectives add SkyblockCE_multiplayer_join dummy
execute as @a[scores={SkyblockCE_multiplayer_join=2}] run scoreboard objectives add SkyblockCE_import minecraft.custom:minecraft.play_time
execute as @a[scores={SkyblockCE_multiplayer_join=2}] run scoreboard players set @a SkyblockCE_large -2
execute as @a[scores={SkyblockCE_multiplayer_join=2}] run scoreboard players set @a SkyblockCE_default -2
execute as @a[scores={SkyblockCE_multiplayer_join=2}] run scoreboard players set @a SkyblockCE_small -2
execute as @a[scores={SkyblockCE_multiplayer_join=2}] run scoreboard players set @a SkyblockCE_very_small -2
execute as @a[scores={SkyblockCE_import=50..}] run scoreboard players set @a SkyblockCE_islands -2


##MULTIPLAYER LOOP
execute as @a[scores={SkyblockCE_multiplayer_join=100..}] run scoreboard players set @a SkyblockCE_multiplayer_join 3
execute as @a[scores={SkyblockCE_multiplayer=2000000..}] run scoreboard players set @a SkyblockCE_multiplayer 1000