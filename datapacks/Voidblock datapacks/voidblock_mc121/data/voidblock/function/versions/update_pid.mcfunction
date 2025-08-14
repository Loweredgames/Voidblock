#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##SETUP UPDATE PID


##SUBPID END (QUANDO FINISCE IL PID AGGIUNGERE IL SUBPID O IL PID MA SOLO NEL PRIMO SUBPID. GUARDARE SEMPRE LA SCORE ALLA FINE DELLA FUNZIONE, ANCHE NEL SUBPID DENTRO LA FUNZIONE. DISABILITA SE NON C'È NESSUN SUBPID)
#execute as @a[scores={Voidblock_pid_mc121=250..}] run scoreboard objectives add Voidblock_subpid_0_mc121 dummy


##SUBPID END (QUANDO FINISCE IL PID AGGIUNGERE IL SUBPID O IL PID MA SOLO NEL PRIMO SUBPID. GUARDARE SEMPRE LA SCORE ALLA FINE DELLA FUNZIONE, ANCHE NEL SUBPID DENTRO LA FUNZIONE. DISABILITA SE NON C'È NESSUN SUBPID)
#execute as @a[scores={Voidblock_subpid_0_mc121=1015..}] run scoreboard objectives add Voidblock_subpid_1_mc121 dummy (per il futuro)


##SETUP UPDATE SUBPID VERSION (LASCIARE SEMPRE LA SCOREBOARD E SPOSTARE QUANDO DIVENTA LEGACY)
scoreboard players add @a Voidblock_subpid_0_mc121 1


##SCOREBOARD START PID VERSION (LASCIARE SEMPRE COSI, MODIFICARE SE LA CONVERSIONE E PIU CORTA O PIU LUNGHA.)
execute as @a[scores={Voidblock_final=351}] run scoreboard players set @a Voidblock_pid_mc121 -250
execute as @a[scores={Voidblock_pid_mc121=5..100}] run gamemode spectator @a
execute as @a[scores={Voidblock_pid_mc121=5}] run time set 0
execute as @a[scores={Voidblock_pid_mc121=5}] run gamerule doImmediateRespawn true
execute as @a[scores={Voidblock_pid_mc121=5..200}] run effect give @a blindness 5 0 true
execute as @a[scores={Voidblock_pid_mc121=5..200}] run effect give @a night_vision 5 0 true
execute as @a[scores={Voidblock_pid_mc121=200}] run gamerule doImmediateRespawn false
execute as @a[scores={Voidblock_pid_mc121=205}] run playsound minecraft:block.note_block.chime ambient @a 0 66 0 100 2


###FUNCTION PID - Voidblock_pid_mc121 - 1.21 (SPOSTARE "PID_X" IN LEGACY QUANDO FINISCE IL SUPPORTO DELLA VERSIONE, NON ELIMINARE IL COMMENTO IN SE)


##Overworld
execute as @a[scores={Voidblock_pid_mc121=205..211}] run say Hello 1.21/1.21.1!

##The Nether


##The End (???)


##FINAL GENERATED PID VERSION FUNCTION (DISABILITARE TUTTO SE NON C'E NESSUN PID)
execute as @a[scores={Voidblock_pid_mc121=201}] run advancement revoke @a only minecraft:nether/root
execute as @a[scores={Voidblock_pid_mc121=201}] run advancement revoke @a only minecraft:end/root
execute as @a[scores={Voidblock_pid_mc121=205}] run tellraw @a ["",{"text":"Due to several problems in The End (","italic":true,"color":"red"},{"text":"see the bug #16","italic":true,"underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Voidblock/issues/16"}},{"text":"). the dimension has been suspended in this release until the issues are resolved.\nThanks you :)","italic":true,"color":"red"}]
execute as @a[scores={Voidblock_pid_mc121=206}] run tellraw @a {"translate":"skyblock_classic_edition.version_update.crowdin.info","color":"yellow","clickEvent":{"action":"open_url","value":"https://crowdin.com/project/skyblock-classic-edition"}}
execute as @a[scores={Voidblock_pid_mc121=207}] run tellraw @a {"translate":"skyblock_classic_edition.version_update.discord","underlined":true,"color":"light_purple","clickEvent":{"action":"open_url","value":"https://discord.gg/T6PHxhznJ6"}}
execute as @a[scores={Voidblock_pid_mc121=210}] run time set 0
execute as @a[scores={Voidblock_pid_mc121=211}] run playsound minecraft:music_disc.relic ambient @a 0 65 0 10000 1
execute in minecraft:overworld at @a[scores={Voidblock_pid_mc121=205}] run tp @a 0 66 0 90 0
execute as @a[scores={Voidblock_pid_mc121=211}] run gamemode survival @a