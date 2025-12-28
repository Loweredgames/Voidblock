#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##SETUP UPDATE PID


##SUBPID END (QUANDO FINISCE IL PID AGGIUNGERE IL SUBPID O IL PID MA SOLO NEL PRIMO SUBPID. GUARDARE SEMPRE LA SCORE ALLA FINE DELLA FUNZIONE, ANCHE NEL SUBPID DENTRO LA FUNZIONE. DISABILITA SE NON C'È NESSUN SUBPID)
execute as @a[scores={PID_1_mctest=250..}] run scoreboard objectives add SUBPID_1_mctest dummy


##SUBPID END (QUANDO FINISCE IL PID AGGIUNGERE IL SUBPID O IL PID MA SOLO NEL PRIMO SUBPID. GUARDARE SEMPRE LA SCORE ALLA FINE DELLA FUNZIONE, ANCHE NEL SUBPID DENTRO LA FUNZIONE. DISABILITA SE NON C'È NESSUN SUBPID)
#>execute as @a[scores={SUBPID_1_mctest=1015..}] run scoreboard objectives add SUBPID_2_mctest dummy (aggiungere per il futuro il 2)


##SETUP UPDATE SUBPID VERSION (LASCIARE SEMPRE LA SCOREBOARD E SPOSTARE QUANDO DIVENTA LEGACY)
scoreboard players add @a SUBPID_1_mctest 1
#scoreboard players add @a SUBPID_2_mctest 1


##SCOREBOARD START PID VERSION (LASCIARE SEMPRE COSI, MODIFICARE SE LA CONVERSIONE E PIU CORTA O PIU LUNGHA)
execute as @a[scores={Voidblock_final=351}] run scoreboard players set @a PID_1_mctest -50
execute as @a[scores={Voidblock_mctest=5..100}] run gamemode spectator @a
execute as @a[scores={PID_1_mctest=5}] run time set 0
execute as @a[scores={PID_1_mctest=5}] run gamerule immediate_respawn true
execute as @a[scores={PID_1_mctest=5..200}] run effect give @a blindness 5 0 true
execute as @a[scores={PID_1_mctest=5..200}] run effect give @a night_vision 5 0 true
execute as @a[scores={PID_1_mctest=200}] run gamerule immediate_respawn false
execute as @a[scores={PID_1_mctest=205}] run playsound minecraft:block.note_block.chime ambient @a 0 66 0 100 2


###FUNCTION PID - PID_1_mctest - 1.21.10 Test (SPOSTARE "PID_X" IN LEGACY QUANDO FINISCE IL SUPPORTO DELLA VERSIONE, NON ELIMINARE IL COMMENTO IN SE)


##Overworld


##The Nether


##The End (???)


##FINAL GENERATED PID VERSION FUNCTION (LASCIARE SEMPRE COSI, MODIFICARE SE LA CONVERSIONE E PIU CORTA O PIU LUNGHA)
execute as @a[scores={PID_1_mctest=201}] run advancement revoke @a only minecraft:nether/root
execute as @a[scores={PID_1_mctest=201}] run advancement revoke @a only minecraft:end/root
execute as @a[scores={PID_1_mctest=205}] run tellraw @a ["",{"text":"Due to several problems in The End (","italic":true,"color":"red"},{"text":"see the bug #16","italic":true,"underlined":true,"color":"red","click_event":{"action":"open_url","url":"https://github.com/Loweredgames/Voidblock/issues/16"}},{"text":"). the dimension has been suspended in this release until the issues are resolved.\nThanks you :)","italic":true,"color":"red"}]
execute as @a[scores={PID_1_mctest=210}] run time set 0
execute as @a[scores={PID_1_mctest=211}] run playsound minecraft:music.menu ambient @a 0 65 0
execute in minecraft:overworld at @a[scores={PID_1_mctest=205}] run tp @a 0 66 0 90 0
execute as @a[scores={PID_1_mctest=212..1000},gamemode=spectator] run gamemode survival @a