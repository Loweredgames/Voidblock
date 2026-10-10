#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##MULTIPLAYER SETUP
execute store result score Voidblock_PlayerOnline Voidblock_multiplayer if entity @a
execute if score Voidblock_PlayerOnline Voidblock_multiplayer matches 2.. run scoreboard players set @a Voidblock_multiplayer_join 2


##MULTIPLAYER JOIN PLAYERS
scoreboard objectives add Voidblock_multiplayer_join dummy
execute as @a[scores={Voidblock_multiplayer_join=2}] run scoreboard objectives add Voidblock_import minecraft.custom:minecraft.play_time
execute as @a[scores={Voidblock_multiplayer_join=2}] run scoreboard players set @a Voidblock_large -2
execute as @a[scores={Voidblock_multiplayer_join=2}] run scoreboard players set @a Voidblock_default -2
execute as @a[scores={Voidblock_multiplayer_join=2}] run scoreboard players set @a Voidblock_small -2
execute as @a[scores={Voidblock_multiplayer_join=2}] run scoreboard players set @a Voidblock_very_small -2
execute as @a[scores={Voidblock_import=50..}] run scoreboard players set @a Voidblock_islands -2


##MULTIPLAYER LOOP
execute as @a[scores={Voidblock_multiplayer_join=100..}] run scoreboard players set @a Voidblock_multiplayer_join 3
execute as @a[scores={Voidblock_multiplayer=2000000..}] run scoreboard players set @a Voidblock_multiplayer 1000
