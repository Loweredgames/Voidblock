#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Function Setup Minecraft Versions (AGGIUNGERE QUI TUTTE LE FUNZIONI SE SERVONO CON ALLA FINE LA VERSIONE SPECIFICA SENZA IL PUNTO COME: 121, 1212 ecc...)
function voidblock:versions/mc1206


##Setup Debug Minecraft (DISABILITARE SE NON SI STA FACENDO IL DEBUG)
#scoreboard players add @a Voidblock_mc1206 1


##Setup Wall Texts Sign Versions
function voidblock:structures/wall_texts_sign


##Scoreboard Debug Install Minecraft Versions (AGGIUNGERE QUI TUTTE LE SCOREBOARD SE E NECCESARIO CON ALLA FINE LA VERSIONE SPECIFICA SENZA IL PUNTO COME: 1212)
scoreboard objectives add Voidblock_mc1206 dummy


##Scoreboard Debug Loop Minecraft Versions (AGGIUNGERE IL LOOP)
execute as @a[scores={Voidblock_mc1206=2000000..}] run scoreboard players set @a Voidblock_mc1206 10000