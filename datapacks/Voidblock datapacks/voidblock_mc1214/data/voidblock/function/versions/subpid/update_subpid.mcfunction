#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Setup Update SUBPID - Voidblock_subpid_0_mc1214


##Scoreboard Start SUBPID VERSION
execute as @a[scores={Voidblock_subpid_0_mc1214=5..100}] run gamemode spectator @a
execute as @a[scores={Voidblock_subpid_0_mc1214=5}] run gamerule doImmediateRespawn true
execute as @a[scores={Voidblock_subpid_0_mc1214=5..200}] run effect give @a blindness 5 0 true
execute as @a[scores={Voidblock_subpid_0_mc1214=5..200}] run effect give @a night_vision 5 0 true
execute as @a[scores={Voidblock_subpid_0_mc1214=200}] run gamerule doImmediateRespawn false
execute as @a[scores={Voidblock_subpid_0_mc1214=205}] run playsound minecraft:block.note_block.chime ambient @a 0 66 0 100 1


##Voidblock SUBPID VERSION WARNING (CAMBIARE SOLO SE NON CI SONO CONVERSIONI)
execute as @a[scores={Voidblock_subpid_0_mc1214=5}] run tellraw @s [{"translate":"skyblock_classic_edition.versions_id.warning_update.on","color":"#d5d5d5","italic":true},{"text":" - "},{"text":"Voidblock_subpid_0_mc1214"}]


###Voidblock_subpid_0_mc1214  (SPOSTARE "SUBPID_X" IN LEGACY QUANDO FINISCE IL SUPPORTO DELLA VERSIONE, NON ELIMINARE IL COMMENTO IN SE)


##Overworld
#execute in minecraft:overworld as @a[scores={Voidblock_subpid_0_mc1214=100}] run say not used


##Final Function SUBPID VERSION
execute as @a[scores={Voidblock_subpid_0_mc1214=201}] run advancement revoke @a only minecraft:nether/root
execute as @a[scores={Voidblock_subpid_0_mc1214=201}] run advancement revoke @a only minecraft:end/root
execute as @a[scores={Voidblock_subpid_0_mc1214=201}] run time set 0
execute in minecraft:overworld at @a[scores={Voidblock_subpid_0_mc1214=205}] run tp @a 0 66 0 90 0
execute as @a[scores={Voidblock_subpid_0_mc1214=210}] run gamemode survival @a


##Voidblock SUBPID VERSION Reset LOOP
execute as @a[scores={Voidblock_subpid_0_mc1214=2000000..}] run scoreboard players set @a Voidblock_subpid_0_mc1214 10000