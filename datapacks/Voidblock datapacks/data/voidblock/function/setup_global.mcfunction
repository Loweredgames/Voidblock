#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##FUNCTION Setup PID VERSIONS (AGGIUNGERE QUI TUTTE LE FUNZIONI SE SERVONO CON ALLA FINE LA VERSIONE SPECIFICA SENZA IL PUNTO COME: 121, 1212 ecc...)
function voidblock:versions/update_pid
function voidblock:versions/subpid/update_subpid
function voidblock:versions/pid_remove
function voidblock:versions/pid_old


##SETUP WALL TEXTS SIGN VERSIONS
function voidblock:structures/wall_texts_sign


##SCOREBOARD PID VERSIONS RESET LOOP (AGGIUNGERE IL LOOP)
execute as @a[scores={PID_1_mctest=2000000..}] run scoreboard players set @a PID_1_mctest 10000
execute as @a[scores={PID_0_mc261=2000000..}] run scoreboard players set @a PID_0_mc261 10000
