#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##PID OLD VERSIONS (DA INCREMENTARE IL PID QUANDO DIVENTA VECCHIO. AGGIORNARE IL PID DA 0 A 1 AD ESEMPIO)
execute as @a[scores={PID_1_mc1212=-100..}] run scoreboard players set @a PID_0_mc1212 1
execute as @a[scores={PID_1_mc1212=-100..}] run scoreboard players set @a PID_0_mc1212 1
execute as @a[scores={PID_1_mc1212=-100..}] run scoreboard players set @a PID_0_mc1212 1


##PID OLD UPDATE (INCREMENTARE I PID VECCHI: ogni 3 versioni e poi l'ultima, la 4, diventa incompatibile, quindi da sostituire. PRENDERE IN "update_pid" PER TENERE LA COMPATIBILITA, MANTENERE TUTTO IN LTS)
execute as @a[scores={PID_0_mc1212=1..}] run scoreboard players add @a PID_old_v1 1
execute as @a[scores={PID_0_mc1212=1..}] run scoreboard players add @a PID_old_v2 1
execute as @a[scores={PID_0_mc1212=1..}] run scoreboard players add @a PID_old_v3 1


##PID OLD REMOVE (INCREMENTARE SOLO QUANDO E FINITO UN PID VECCHIO. INCREMENTARE SOLO QUANDO E FINITO E AGGIORNARE IL CONTATORE)
execute as @a[scores={PID_old_v1=805..}] run scoreboard objectives remove PID_0_mc1212
execute as @a[scores={PID_old_v2=990..}] run scoreboard objectives remove PID_0_mc1212
execute as @a[scores={PID_old_v3=995..}] run scoreboard objectives remove PID_0_mc1212


##PID OLD SCOREBOARD SETUP (LASCIARE COSI)
scoreboard objectives add PID_old_v1 dummy
scoreboard objectives add PID_old_v2 dummy
scoreboard objectives add PID_old_v3 dummy


##PID VERSION OLD REMOVE (RIMUOVE LA SCORE DOPO LA CONVERSIONE. AGGIORNARE SEMPRE LA SCORE)
execute as @a[scores={PID_1_mc1212=1000..}] run scoreboard objectives remove PID_old_v1
execute as @a[scores={PID_1_mc1212=1000..}] run scoreboard objectives remove PID_old_v2
execute as @a[scores={PID_1_mc1212=1000..}] run scoreboard objectives remove PID_old_v3


###FUNCTION PID OLD v1 - PID_0_mc1212 - 1.21.2/1.21.3 (NON RIMUOVERE IL COMMENTO IN SE)


##Overworld
#execute in minecraft:overworld as @a[scores={PID_old_v1=800}] run say Hello World!


##The Nether
#execute in minecraft:overworld as @a[scores={PID_old_v1=800}] run say Hello World!


##The End
#execute in minecraft:overworld as @a[scores={PID_old_v1=800}] run say Hello World!


##FINAL GENERATED PID OLD VERSION FUNCTION (LASCIARE SEMPRE COSI, MODIFICARE I NUMERI SE LA CONVERSIONE E PIU CORTA O PIU LUNGHA)
execute as @a[scores={PID_old_v1=1..50}] run gamemode spectator @a
execute as @a[scores={PID_old_v1=10..600}] run effect give @a blindness 11 0 true
execute as @a[scores={PID_old_v1=10..600}] run effect give @a night_vision 11 0 true
execute as @a[scores={PID_old_v1=740}] run playsound minecraft:block.note_block.bell ambient @a 0 66 0 100 2
execute as @a[scores={PID_old_v1=745}] run scoreboard objectives add PID_0_mc1212 dummy
execute as @a[scores={PID_old_v1=750}] run scoreboard objectives add PID_old dummy


###FUNCTION PID OLD v2 - PID_0_mc1212 - 1.21.2/1.21.3 (NON RIMUOVERE IL COMMENTO IN SE)


##Overworld
#execute in minecraft:overworld as @a[scores={PID_old_v1=800}] run say Hello World!


##The Nether
#execute in minecraft:overworld as @a[scores={PID_old_v1=800}] run say Hello World!


##The End
#execute in minecraft:overworld as @a[scores={PID_old_v1=800}] run say Hello World!


##FINAL GENERATED PID OLD VERSION FUNCTION (LASCIARE SEMPRE COSI, MODIFICARE I NUMERI SE LA CONVERSIONE E PIU CORTA O PIU LUNGHA)
execute as @a[scores={PID_old_v2=1..50}] run gamemode spectator @a
execute as @a[scores={PID_old_v2=10..600}] run effect give @a blindness 11 0 true
execute as @a[scores={PID_old_v2=10..600}] run effect give @a night_vision 11 0 true
execute as @a[scores={PID_old_v2=740}] run playsound minecraft:block.note_block.bell ambient @a 0 66 0 100 2
execute as @a[scores={PID_old_v2=745}] run scoreboard objectives add PID_0_mc1212 dummy
execute as @a[scores={PID_old_v2=750}] run scoreboard objectives add PID_old dummy


###FUNCTION PID OLD v3 - PID_0_mc1212 - 1.21.2/1.21.3 (NON RIMUOVERE IL COMMENTO IN SE)


##Overworld
#execute in minecraft:overworld as @a[scores={PID_old_v1=800}] run say Hello World!


##The Nether
#execute in minecraft:overworld as @a[scores={PID_old_v1=800}] run say Hello World!


##The End
#execute in minecraft:overworld as @a[scores={PID_old_v1=800}] run say Hello World!


##FINAL GENERATED PID OLD VERSION FUNCTION (LASCIARE SEMPRE COSI, MODIFICARE I NUMERI SE LA CONVERSIONE E PIU CORTA O PIU LUNGHA)
execute as @a[scores={PID_old_v3=1..50}] run gamemode spectator @a
execute as @a[scores={PID_old_v3=10..600}] run effect give @a blindness 11 0 true
execute as @a[scores={PID_old_v3=10..600}] run effect give @a night_vision 11 0 true
execute as @a[scores={PID_old_v3=740}] run playsound minecraft:block.note_block.bell ambient @a 0 66 0 100 2
execute as @a[scores={PID_old_v3=750}] run scoreboard objectives add PID_old dummy


##PID OLD STOP (QUANDO FINISCE: CAMBIARE IL NUMERO PER RESETARE TUTTO, INCREMENTARE SEMPRE IL PID VECCHIO)
execute as @a[scores={PID_0_mc1212=1..}] run scoreboard players set @a PID_1_mc1212 -100
execute as @a[scores={PID_0_mc1212=1..}] run scoreboard players set @a PID_1_mc1212 -100
execute as @a[scores={PID_0_mc1212=1..}] run scoreboard players set @a PID_1_mc1212 -100


##PID OLD REMOVE VERSIONS (LASCIARE SEMPRE COSI, NON TOCCARE)
scoreboard players add @a PID_old 1
execute as @a[scores={PID_old=105..}] run scoreboard objectives remove PID_old
execute as @a[scores={PID_old=100..}] run scoreboard objectives remove PID_old_v1
execute as @a[scores={PID_old=100..}] run scoreboard objectives remove PID_old_v2
execute as @a[scores={PID_old=100..}] run scoreboard objectives remove PID_old_v3