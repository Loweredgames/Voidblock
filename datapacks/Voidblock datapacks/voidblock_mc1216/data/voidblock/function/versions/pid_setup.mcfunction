#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##PID LEGACY REMOVE (RIMUOVE LA SCORE DOPO LA CONVERSIONE. AGGIORNARE SEMPRE LA SCORE)
execute as @a[scores={Voidblock_pid_mc1216=1000..}] run scoreboard objectives remove PID_legacy_v1
execute as @a[scores={Voidblock_pid_mc1216=1000..}] run scoreboard objectives remove PID_legacy_v2
execute as @a[scores={Voidblock_pid_mc1216=1000..}] run scoreboard objectives remove PID_legacy_v3


##SETUP VERSION Voidblock_ID (CAMBIARE LA SCORE IN "Voidblock_id". VEDERE LA SCORE PID_X PER RIFERIMENTO)
execute as @a[scores={Voidblock_id=30}] run scoreboard players set @a Voidblock_pid_mc1216 -100


##VERSION IMPORT LOCK (BLOCCA LA CONVERSIONE SE SI USA IMPORT)
execute as @a[scores={Voidblock_import=1..100}] run scoreboard players set @a Voidblock_pid_mc1216 2400


##SCOREBOARD SETUP
scoreboard players add @a Voidblock_pid_mc1216 1