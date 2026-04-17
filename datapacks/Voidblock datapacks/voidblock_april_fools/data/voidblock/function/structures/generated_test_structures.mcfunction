#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##SETUP STRUCTURES ID (NON TOCCARE)
execute as @a[scores={Voidblock_structures_id_fools=30..}] run scoreboard objectives add Voidblock_test_structures_fools dummy
execute as @a[scores={Voidblock_structures_id_fools=35..}] run scoreboard players add @a Voidblock_test_structures_fools 1
scoreboard players add @a Voidblock_structures_id_fools 1


##SETUP STRUCTURES (NON TOCCARE)
execute as @a[scores={Voidblock_test_structures_fools=5}] run scoreboard players set @a Voidblock_tp_fools 0
execute as @a[scores={Voidblock_test_structures_fools=5..1300}] run gamemode spectator @a
execute as @a[scores={Voidblock_test_structures_fools=5}] run effect give @a blindness 72 0 true
execute as @a[scores={Voidblock_test_structures_fools=6}] run effect give @a night_vision 71 0 true


##TELEPORT PLAYER IN THE STRUCTURES (AGGIUNGERE TUTTE LE STRUTTURE)

#Ocean Ruins
execute as @a[scores={Voidblock_test_structures_fools=100}] run tp @a 488 45 -260 0 0

#Cherry Grove
execute as @a[scores={Voidblock_test_structures_fools=200}] run tp @a -198 45 -485 0 0

#Trail Ruins
execute as @a[scores={Voidblock_test_structures_fools=300}] run tp @a -266 45 -484 0 0

#Pillager Outpost
execute as @a[scores={Voidblock_test_structures_fools=400}] run tp @a 500 45 55 0 0

#Village
execute as @a[scores={Voidblock_test_structures_fools=500}] run tp @a 460 45 350 0 0

#Wolfs Pack
execute as @a[scores={Voidblock_test_structures_fools=600}] run tp @a 570 44 350 0 0

#Swamp Hut
execute as @a[scores={Voidblock_test_structures_fools=700}] run tp @a -180 45 -180 0 0

#Igloo
execute as @a[scores={Voidblock_test_structures_fools=800}] run tp @a 180 45 180 0 0

#Jungle Pyramids
execute as @a[scores={Voidblock_test_structures_fools=900}] run tp @a -60 45 500 0 0

#Desert Pyramid
execute as @a[scores={Voidblock_test_structures_fools=1000}] run tp @a 60 45 -500 0 0

#Shipwrecks
execute as @a[scores={Voidblock_test_structures_fools=1100}] run tp @a 280 45 0 0 0

#Stronghold
execute as @a[scores={Voidblock_test_structures_fools=1200}] run tp @a 700 45 700 0 0

#Ancient City
execute as @a[scores={Voidblock_test_structures_fools=1300}] run tp @a -700 45 -700 0 0


##GENERATED STRUCTURES (GENERA LE STRUTTURE QUANDO VIENE CREATO UN NUOVO MONDO)
execute as @a[scores={Voidblock_test_structures_fools=150}] run place template voidblock:structures/ocean_ruins_warm 488 45 -260
execute as @a[scores={Voidblock_test_structures_fools=250}] run place template voidblock:structures/custom_islands/cherry_grove -198 45 -485
execute as @a[scores={Voidblock_test_structures_fools=350}] run place template voidblock:structures_test/trail_ruins -266 45 -484
execute as @a[scores={Voidblock_test_structures_fools=450}] run place template voidblock:structures/pillager_outpost 500 45 55
execute as @a[scores={Voidblock_test_structures_fools=550}] run place template voidblock:structures_test/village 460 45 350
execute as @a[scores={Voidblock_test_structures_fools=610}] run place template voidblock:structures_test/wolfs_pack 570 45 350
execute as @a[scores={Voidblock_test_structures_fools=750}] run place template voidblock:structures/swamp_hut -180 45 -180
execute as @a[scores={Voidblock_test_structures_fools=850}] run place template voidblock:structures/igloo 180 45 180
execute as @a[scores={Voidblock_test_structures_fools=950}] run place template voidblock:structures/jungle_pyramid -60 45 500
execute as @a[scores={Voidblock_test_structures_fools=1050}] run place template voidblock:structures/desert_pyramid 60 45 -500
execute as @a[scores={Voidblock_test_structures_fools=1150}] run place template voidblock:structures_test/shipwrecks 280 45 0
execute as @a[scores={Voidblock_test_structures_fools=1250}] run place template voidblock:structures/stronghold 700 45 700
execute as @a[scores={Voidblock_test_structures_fools=1350}] run place template voidblock:structures_test/ancient_city -700 45 -700


##FINAL FUNCTION STRUCTURES GENERATED
execute as @a[scores={Voidblock_test_structures_fools=1..1300}] run gamerule immediate_respawn true
execute as @a[scores={Voidblock_test_structures_fools=1400..1505}] run gamerule immediate_respawn false
execute as @a[scores={Voidblock_test_structures_fools=1400}] run tp @s 0 66 0 90 0
execute as @a[scores={Voidblock_test_structures_fools=1405..1505}] run place template voidblock:air 0 0 0
execute as @a[scores={Voidblock_test_structures_fools=1410}] run setblock 0 0 0 minecraft:command_block[conditional=false,facing=west]{Command:'/tellraw @a [{"text":"⚠I see that there is not (generated) folder in your world. ","italic":true,"color":"red"},[""],{"text":" Please download the map again here","italic":true,"underlined":true,"color":"red","click_event":{"action":"open_url","url":"https://github.com/Loweredgames/Voidblock/releases"}}]',CustomName:'{"text":"@"}',SuccessCount:0,TrackOutput:1b,UpdateLastExecution:1b,auto:0b,conditionMet:0b,powered:0b} destroy
execute as @a[scores={Voidblock_test_structures_fools=1415}] run tellraw @a ["",{"text":"If the resource pack is not in the world and can cause damage to the text: add the resource pack in the world folder or ","italic":true,"color":"gray"},{"text":"reinstall the map here","italic":true,"underlined":true,"color":"gray","click_event":{"action":"open_url","url":"https://github.com/Loweredgames/Voidblock/releases"}},{"text":" and add manually in the world folder.","italic":true,"color":"gray"}]
execute as @a[scores={Voidblock_test_structures_fools=1420}] run setblock 0 1 0 minecraft:redstone_block destroy
execute as @a[scores={Voidblock_test_structures_fools=1425}] run fill 0 0 0 0 1 0 minecraft:air destroy
execute as @a[scores={Voidblock_test_structures_fools=1426}] run title @a title {"text":"Structures:","italic":true}
execute as @a[scores={Voidblock_test_structures_fools=1426}] run title @a subtitle {"text":"They were generated...","italic":true}
execute as @a[scores={Voidblock_test_structures_fools=1440}] run effect clear @a minecraft:blindness
execute as @a[scores={Voidblock_test_structures_fools=1440}] run effect clear @a minecraft:night_vision


##Voidblock SETUP FINAL GENERATED (AGGIORNARE SE LA SCORE E STATA CAMBIATA)
execute as @a[scores={Voidblock_test_structures_fools=1500..5005}] run scoreboard players add @a Voidblock_final_fools 1
scoreboard objectives add Voidblock_final_fools dummy


##Voidblock FINAL GENERATED ISLANDS (GENERA LA POSIZIONE DEL GIOCATORE QUANDO SONO FINITE LE SCORE)
execute as @a[scores={Voidblock_final_fools=105}] run scoreboard players set @a Voidblock_tp_fools 0
execute as @a[scores={Voidblock_final_fools=5}] run title @a reset
execute as @a[scores={Voidblock_final_fools=106}] run title @a title ["",{"text":"Void","bold":true,"color":"aqua"},{"text":"block","bold":true,"color":"dark_green"}]
execute as @a[scores={Voidblock_final_fools=106}] run title @a times 30 100 30
execute as @a[scores={Voidblock_final_fools=107..200}] run gamerule show_advancement_messages true
execute as @a[scores={Voidblock_final_fools=107..200}] run gamerule advance_time true
execute as @a[scores={Voidblock_final_fools=107..200}] run gamerule advance_weather true
execute as @a[scores={Voidblock_final_fools=107..200}] run gamerule immediate_respawn false
execute as @a[scores={Voidblock_final_fools=110}] run time set 0
execute as @a[scores={Voidblock_final_fools=110}] run advancement revoke @a everything
execute as @a[scores={Voidblock_final_fools=118}] run execute in minecraft:overworld run tp @p 0 66 0 90 0
execute as @a[scores={Voidblock_final_fools=120}] run gamemode survival @a
execute as @a[scores={Voidblock_final_fools=130}] run playsound minecraft:block.amethyst_cluster.break ambient @a 0 66 0 100 2
execute as @a[scores={Voidblock_final_fools=140}] run scoreboard objectives remove Voidblock_level_dat


##Voidblock ID DELAY (AGGIORNARE SEMPRE QUANDO VENGONO AGGIUNTE NUOVE STRUTTURE. DELAY PID DELLA CONVERSIONE)
execute as @a[scores={Voidblock_final_fools=350}] run scoreboard objectives add Voidblock_id_fools dummy


##FUNCTION STRUCTURES LOOP
execute as @a[scores={Voidblock_test_structures_fools=5000..}] run scoreboard players set @a Voidblock_final_fools 100000
execute as @a[scores={Voidblock_structures_id_fools=2000000..}] run scoreboard players set @a Voidblock_structures_id_fools 10000
execute as @a[scores={Voidblock_test_structures_fools=2000000..}] run scoreboard players set @a Voidblock_test_structures_fools 10000