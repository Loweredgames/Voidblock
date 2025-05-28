#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


#TO DO:FORSE DIVENTERA IL NUOVO PID???? ------------------ AGGIUNGERE LE FEATURES DI MINECRAFT DI COMPATIBILITA SE E NECCESARIO (COME UN CAMBIO DI FORMAT DEL WORLD GEN NELLA 1.21.2. QUINDI AGGIUNGERE LA CARTELLA WORLDGEN CON QUEL FORMATO) CAMBIARE NEL PACK IL FORMATO DELLA/DELLE VERSIONI SPECIFICHE. SE NON SERVE DISABILITA.


##Function Setup Minecraft Versions (AGGIUNGERE QUI TUTTE LE FUNZIONI SE SERVONO CON ALLA FINE LA VERSIONE SPECIFICA SENZA IL PUNTO COME: 121, 1212 ecc...)
function voidblock:versions/mc121
function voidblock:versions/mc1212
function voidblock:versions/mc1214
function voidblock:versions/mc1215
function voidblock:versions/mc1216


##Setup Debug Minecraft (DISABILITARE SE NON SI STA FACENDO IL DEBUG)
#scoreboard players add @a Voidblock_mc121 1
#scoreboard players add @a Voidblock_mc1212 1
#scoreboard players add @a Voidblock_mc1214 1
#scoreboard players add @a Voidblock_mc1215 1
#scoreboard players add @a Voidblock_mc1216 1


##Setup Wall Texts Sign Versions
function voidblock:structures/wall_texts_sign


##Scoreboard Debug Install Minecraft Versions (AGGIUNGERE QUI TUTTE LE SCOREBOARD SE E NECCESARIO CON ALLA FINE LA VERSIONE SPECIFICA SENZA IL PUNTO COME: 1212)
scoreboard objectives add Voidblock_mc121 dummy
scoreboard objectives add Voidblock_mc1212 dummy
scoreboard objectives add Voidblock_mc1214 dummy
scoreboard objectives add Voidblock_mc1215 dummy
scoreboard objectives add Voidblock_mc1216 dummy


##Scoreboard Debug Loop Minecraft Versions (AGGIUNGERE IL LOOP)
execute as @a[scores={Voidblock_mc121=2000000..}] run scoreboard players set @a Voidblock_121 10000
execute as @a[scores={Voidblock_mc1212=2000000..}] run scoreboard players set @a Voidblock_1212 10000
execute as @a[scores={Voidblock_mc1214=2000000..}] run scoreboard players set @a Voidblock_1214 10000
execute as @a[scores={Voidblock_mc1215=2000000..}] run scoreboard players set @a Voidblock_1215 10000
execute as @a[scores={Voidblock_mc1216=2000000..}] run scoreboard players set @a Voidblock_1216 10000