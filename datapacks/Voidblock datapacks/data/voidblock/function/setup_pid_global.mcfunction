#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##FUNCTION Setup PID VERSIONS (AGGIUNGERE QUI TUTTE LE FUNZIONI SE SERVONO CON ALLA FINE LA VERSIONE SPECIFICA SENZA IL PUNTO COME: 121, 1212 ecc...)
function voidblock:versions/update_pid
function voidblock:versions/subpid/update_subpid
function voidblock:versions/pid_remove


##SCOREBOARD PID INSTALL VERSIONS (AGGIUNGERE QUI TUTTE LE SCOREBOARD PID CON ALLA FINE LA VERSIONE DI MINECRAFT SPECIFICA SENZA IL PUNTO COME: 1212)
scoreboard objectives add Voidblock_pid_mctest dummy
scoreboard objectives add Voidblock_pid_mc121 dummy
scoreboard objectives add Voidblock_pid_mc1212 dummy
scoreboard objectives add Voidblock_pid_mc1214 dummy
scoreboard objectives add Voidblock_pid_mc1215 dummy
scoreboard objectives add Voidblock_pid_mc1216 dummy
scoreboard objectives add Voidblock_pid_mc1219 dummy


##SETUP WALL TEXTS SIGN VERSIONS
function voidblock:structures/wall_texts_sign


##SCOREBOARD PID VERSIONS RESET LOOP (AGGIUNGERE IL LOOP)
execute as @a[scores={Voidblock_pid_mctest=2000000..}] run scoreboard players set @a Voidblock_pid_mctest 10000
execute as @a[scores={Voidblock_pid_mc121=2000000..}] run scoreboard players set @a Voidblock_pid_mc121 10000
execute as @a[scores={Voidblock_pid_mc1212=2000000..}] run scoreboard players set @a Voidblock_pid_mc1212 10000
execute as @a[scores={Voidblock_pid_mc1214=2000000..}] run scoreboard players set @a Voidblock_pid_mc1214 10000
execute as @a[scores={Voidblock_pid_mc1215=2000000..}] run scoreboard players set @a Voidblock_pid_mc1215 10000
execute as @a[scores={Voidblock_pid_mc1216=2000000..}] run scoreboard players set @a Voidblock_pid_mc1216 10000
execute as @a[scores={Voidblock_pid_mc1219=2000000..}] run scoreboard players set @a Voidblock_pid_mc1219 10000