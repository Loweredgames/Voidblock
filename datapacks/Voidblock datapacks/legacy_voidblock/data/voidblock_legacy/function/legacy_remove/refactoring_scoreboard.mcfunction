#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Refactoring Scoreboard (rimuovere completamente nella 1.22)
execute as @a[scores={refactoring_scoreboard=1..}] run scoreboard objectives remove refactoring_scoreboard
execute as @a[scores={Voidblock_custom_structures=0..}] run scoreboard players set @a Voidblock_structures 10000
execute as @a[scores={Voidblock_structures_id=900..}] run scoreboard objectives remove Voidblock_custom_structures


# PICCOLO TEST PER I NUOVI PID (DA RIMUOVERE NELLA 1.22)
execute as @a[scores={1.21_PID_0=0..}] run scoreboard objectives add PID_0_mctest dummy
execute as @a[scores={1.21_PID_0=0..}] run scoreboard players set @a PID_1_mctest 1000
execute as @a[scores={PID_1_mctest=100..}] run scoreboard objectives remove 1.21_PID_0