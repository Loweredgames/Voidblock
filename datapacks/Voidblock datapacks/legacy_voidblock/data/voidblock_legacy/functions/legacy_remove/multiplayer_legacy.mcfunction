#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Multiplayer Legacy (Aggiornato all'ultima versione: 2.0.0 - 5.3.2 Minecraft: 1.20.6)
execute as @a[scores={Voidblock_multiplayer=..5}] run scoreboard objectives remove multiplayer
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a Voidblock_install -2
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a Voidblock_islands -2
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a Voidblock_tp 0
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a 1.20.6_PID_0 24000
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a PID_1 24000
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a Voidblock_id 24000
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a Voidblock_islands 5
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a Voidblock_structures_id 24005
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a Voidblock_custom_structures 24000
scoreboard players set @a multiplayer 1
scoreboard objectives remove multiplayer_popup
scoreboard objectives remove Voidblock_multiplayer_tick