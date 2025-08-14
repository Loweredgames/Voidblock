#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Voidblock PID INSTALL (AGGIORNARE SE IL PID NEL NUOVO NUMERO)
execute as @a[scores={Voidblock_install=1..}] run scoreboard players set @a 1.21_PID_0 -10000
execute as @a[scores={Voidblock_multiplayer_join=2}] run scoreboard players set @a 1.21_PID_0 24000


##Voidblock PID VERSIONS (LASCIARE SEMPRE COSI)
function voidblock:versions/pid_setup


##Voidblock PID VERSION WARNING (CAMBIARE SOLO SE NON CI SONO CONVERSIONI, DISABILITARE LA SECONDA RIGA SE C'E IL PID)
#execute as @a[scores={1.21_PID_0=30}] run tellraw @s {"translate":"skyblock_classic_edition.versions_id.warning_update.on","italic":true,"color":"#d5d5d5"}
execute as @a[scores={1.21_PID_0=30}] run tellraw @s {"translate":"skyblock_classic_edition.versions_id.warning_update.off","italic":true,"color":"#d5d5d5"}
execute as @a[scores={1.21_PID_0=35..100},gamemode=spectator] run gamemode survival @a


##Voidblock PID WARNING (NON TOCCARE)
execute as @a[scores={Voidblock_id=2000..}] run scoreboard objectives add PID_warning dummy
scoreboard players add @a PID_warning 1
execute as @a[scores={PID_warning=5}] run tellraw @a ["",{"translate":"skyblock_classic_edition.setup_version.warning","bold":true,"color":"red"},{"translate":"skyblock_classic_edition.setup_version.warning.download","bold":true,"italic":true,"underlined":true,"color":"red","click_event":{"action":"open_url","url":"https://github.com/Loweredgames/Voidblock/releases/"}}]
execute as @a[scores={PID_warning=900000..}] run scoreboard objectives remove PID_warning