#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Function Setup Test
function voidblock:structures_test/generated_biome
function voidblock:structures_test/generated_test_structures
function voidblock:structures_test/warning_message/fix_custom_world
function voidblock:structures_test/warning_message/warning_level.dat
#function Voidblock:test/ (da fare in futuro)


##Setup Test
recipe give @a *


##Scoreboard Install Test
scoreboard objectives add Voidblock_install_test dummy
scoreboard players add @a Voidblock_install_test 1
execute as @a[scores={Voidblock_install_test=1..}] run scoreboard players set @a Voidblock_install 0


##Islands Choices Setup Test
execute as @a[scores={Voidblock_install_test=2}] run tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
execute as @a[scores={Voidblock_install_test=3}] run tellraw @a ["",{"translate":"skyblock_classic_edition.Voidblock_setup.welcome","bold":true},{"text":" - Dimensions Version","bold":true},{"text":":","bold":true},{"text":"\n\n"},{"translate":"skyblock_classic_edition.Voidblock_test_setup","italic":true},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"translate":"skyblock_classic_edition.Voidblock_setup.choose_islands","italic":true},{"text":"\n\n"},{"translate":"skyblock_classic_edition.Voidblock_setup.large_easy","color":"dark_green","click_event":{"action":"run_command","command":"/scoreboard players set @a Voidblock_islands 1"}},{"text":" ","color":"dark_green"},{"text":"[?]","color":"dark_green","hover_event":{"action":"show_text","value":[{"translate":"skyblock_classic_edition.Voidblock_setup.large_easy.info"}]}},{"text":"\n\n"},{"translate":"skyblock_classic_edition.Voidblock_setup.default_normal","color":"gold","click_event":{"action":"run_command","command":"/scoreboard players set @a Voidblock_islands 2"}},{"text":" ","color":"gold"},{"text":"[?]","color":"gold","hover_event":{"action":"show_text","value":[{"translate":"skyblock_classic_edition.Voidblock_setup.default_normal.info"}]}},{"text":"\n\n"},{"translate":"skyblock_classic_edition.Voidblock_setup.small_hard","color":"red","click_event":{"action":"run_command","command":"/scoreboard players set @a Voidblock_islands 3"}},{"text":" ","color":"red"},{"text":"[?]","color":"red","hover_event":{"action":"show_text","value":[{"translate":"skyblock_classic_edition.Voidblock_setup.small_hard.info"}]}},{"text":"\n\n"},{"translate":"skyblock_classic_edition.Voidblock_setup.very_small_hard","color":"dark_red","click_event":{"action":"run_command","command":"/scoreboard players set @a Voidblock_islands 4"}},{"text":" ","color":"dark_red"},{"text":"[?]","color":"dark_red","hover_event":{"action":"show_text","value":[{"translate":"skyblock_classic_edition.Voidblock_setup.very_small_hard.info"}]}},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"translate":"skyblock_classic_edition.Voidblock_setup.import","color":"blue","click_event":{"action":"run_command","command":"/scoreboard players set @a Voidblock_islands 4"}},{"text":" ","color":"blue"},{"text":"[?]","color":"blue","hover_event":{"action":"show_text","value":[{"translate":"skyblock_classic_edition.Voidblock_setup.import.info"}]}},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c"}]
execute as @a[scores={Voidblock_install_test=1000..}] run scoreboard players set @a Voidblock_install_test 1
execute as @a[scores={Voidblock_install_test=1}] run difficulty normal
execute as @a[scores={Voidblock_install_test=3}] run tellraw @a ["",{"text":"\n If the resource pack is not in the world and can cause damage to the text: add the resource pack in the world folder or ","italic":true,"color":"gray"},{"text":"reinstall the map here","italic":true,"underlined":true,"color":"gray","click_event":{"action":"open_url","url":"https://github.com/Loweredgames/Voidblock/releases"}},{"text":" and add manually in the world folder.","italic":true,"color":"gray"}]


##Quit Game Test
execute as @a[scores={Voidblock_quit_game=1..}] run scoreboard players set @a Voidblock_install_test 1
execute as @a[scores={Voidblock_quit_game=1..}] run scoreboard objectives remove Voidblock_quit_game