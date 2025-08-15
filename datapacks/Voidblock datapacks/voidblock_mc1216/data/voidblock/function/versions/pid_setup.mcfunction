#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##SCOREBOARD PID INSTALL SETUP (INCREMENTARE IL NUMERO SE SERVE UNA NUOVA CONVERSIONE)
scoreboard objectives add Voidblock_pid_1_mc1216 dummy
scoreboard players add @a Voidblock_pid_1_mc1216 1


##SETUP VERSION Voidblock_ID (CAMBIARE LA SCORE IN "Voidblock_id". VEDERE LA SCORE PID_X PER RIFERIMENTO)
execute as @a[scores={Voidblock_id=30}] run scoreboard players set @a Voidblock_pid_1_mc1216 -100


##VERSION IMPORT LOCK (BLOCCA LA CONVERSIONE SE SI USA IMPORT)
execute as @a[scores={Voidblock_import=1..100}] run scoreboard players set @a Voidblock_pid_1_mc1216 2400