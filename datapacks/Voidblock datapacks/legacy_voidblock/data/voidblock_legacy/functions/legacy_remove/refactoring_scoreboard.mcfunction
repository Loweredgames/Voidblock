#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Refactoring Scoreboard (Aggiornato all'ultima versione: 3.0.0 - 5.3.2 LTS Minecraft: 1.20.6)
execute as @a[scores={refactoring_scoreboard=..20}] run scoreboard objectives add Voidblock_install dummy
execute as @a[scores={skyblock_small=1..}] run scoreboard objectives add Voidblock_small minecraft.custom:minecraft.play_time
execute as @a[scores={skyblock_small=1..}] run scoreboard players add @a Voidblock_small 1000
execute as @a[scores={Voidblock_small=1005..}] run scoreboard objectives remove skyblock_small
execute as @a[scores={skyblock_normal=1..}] run scoreboard objectives add Voidblock_default minecraft.custom:minecraft.play_time
execute as @a[scores={skyblock_normal=1..}] run scoreboard players add @a Voidblock_default 1000
execute as @a[scores={Voidblock_default=1005..}] run scoreboard objectives remove skyblock_normal
execute as @a[scores={skyblock_large=1..}] run scoreboard objectives add Voidblock_large minecraft.custom:minecraft.play_time
execute as @a[scores={skyblock_large=1..}] run scoreboard players add @a Voidblock_large 1000
execute as @a[scores={Voidblock_large=1005..}] run scoreboard objectives remove skyblock_large
execute as @a[scores={structure_skyblock=1..}] run scoreboard players set @a Voidblock_structures_id 1000
execute as @a[scores={structure_skyblock=1..}] run scoreboard players set @a Voidblock_id -2000
execute as @a[scores={structure_skyblock=1..}] run scoreboard players set @a Voidblock_final 5001
execute as @a[scores={Voidblock_structures_id=1..}] run scoreboard objectives remove structure_skyblock
execute as @a[scores={Voidblock_structures=1..}] run scoreboard objectives add Voidblock_test_structures dummy
execute as @a[scores={Voidblock_structures_id=1400..500000}] run scoreboard players set @a Voidblock_custom_structures 100000
execute as @a[scores={Voidblock_structures_id=1..}] run scoreboard objectives remove Voidblock_skip_structures
execute as @a[scores={Voidblock_structures_id=1..}] run scoreboard objectives remove Voidblock_structures
execute as @a[scores={Voidblock_islands=-2..}] run scoreboard objectives remove skyblock_island
execute as @a[scores={Voidblock_id=0..}] run scoreboard objectives remove skyblock_ID
execute as @a[scores={Voidblock_quit_game=0..}] run scoreboard objectives remove skyblock_quit_game
execute as @a[scores={skyblock_quit_game=0..}] run scoreboard objectives remove skyblock_quit_game
execute as @a[scores={Voidblock_tp=0..}] run scoreboard objectives remove tp
execute as @a[scores={Voidblock_legacy_version=1..}] run scoreboard objectives remove legacy


#Scoreboard Remove
scoreboard objectives remove skyblock_install


##Rimozione alla fine
execute as @a[scores={refactoring_scoreboard=900005..}] run scoreboard objectives remove refactoring_scoreboard