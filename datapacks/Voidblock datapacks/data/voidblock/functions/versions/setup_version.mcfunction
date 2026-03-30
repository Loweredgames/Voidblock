#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Voidblock PID INSTALL (AGGIORNARE SE IL PID NEL NUOVO NUMERO)
execute as @a[scores={Voidblock_install=1..}] run scoreboard players set @a PID_OLD -10000
execute as @a[scores={Voidblock_multiplayer_join=2}] run scoreboard players set @a PID_OLD 24000


##Voidblock PID VERSIONS (LASCIARE SEMPRE COSI)
function voidblock:versions/pid_setup


##Voidblock PID VERSION WARNING (CAMBIARE SOLO SE NON CI SONO CONVERSIONI, DISABILITARE LA SECONDA RIGA SE C'E IL PID)
execute as @a[scores={PID_OLD=30}] run tellraw @s {"text":"World update and conversion for old version: Minecraft 1.19.4","italic":true,"color":"gray"}


##Voidblock PID WARNING (SOLO VERSIONI NON PIU SUPPORTATE, ATTIVARE QUANDO LA VERSIONE NON E PIU SUPPORTATA)
execute as @a[scores={Voidblock_id=2000..}] run scoreboard objectives add PID_warning dummy
scoreboard players add @a PID_warning 1
execute as @a[scores={PID_warning=5}] run tellraw @a ["",{"text":"⚠Warning: this version is no longer supported!⚠","bold":true,"color":"red"},{"text":"\n\nPlease download the latest version of the custom map here.","bold":true,"italic":true,"underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Voidblock/releases/"}}]
execute as @a[scores={PID_warning=900000..}] run scoreboard objectives remove PID_warning