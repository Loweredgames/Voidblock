#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Refactoring Scoreboard (rimuovere completamente nella 1.22)
execute as @a[scores={refactoring_scoreboard=1..}] run scoreboard objectives remove refactoring_scoreboard
execute as @a[scores={Voidblock_custom_structures=0..}] run scoreboard players set @a Voidblock_structures 10000
execute as @a[scores={Voidblock_structures_id=900..}] run scoreboard objectives remove Voidblock_custom_structures
scoreboard objectives remove Voidblock_mc121
scoreboard objectives remove Voidblock_mc1212
scoreboard objectives remove Voidblock_mc1214
scoreboard objectives remove Voidblock_mc1215
scoreboard objectives remove Voidblock_mc1216
scoreboard objectives remove Voidblock_mc1219
scoreboard objectives remove Voidblock_mctest