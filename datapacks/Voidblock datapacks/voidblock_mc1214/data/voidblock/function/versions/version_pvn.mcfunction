#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##VERSION PVN (LASCIARE SEMPRE COSI)
function voidblock:versions/setup_version
function voidblock:versions/pvn_remove


##PVN VERSION PROTOCOL (AGGIORNARE SEMPRE NELLE NUOVE VERSIONI. UTILIZZARE UN NUMERO INTERO PER LE VERSIONI STABILI. UTTILIZARE UNA LETTERA PER LE VERSIONI DI SVILUPPO)
scoreboard objectives add PVN_0_mc12111 dummy
scoreboard players add @a PVN_0_mc12111 1
execute as @a[scores={Voidblock_id=10}] run scoreboard objectives remove PVN_0_mc12111
execute as @a[scores={Voidblock_import=20}] run scoreboard objectives remove PVN_0_mc12111


##PVN VERSION LEGACY PROTOCOL (DA AGGIUNGERE SOLO QUANDO IL NUMERO CAMBIA)
scoreboard objectives add PVN_legacy dummy
scoreboard players set @a 1.20.6_PVN_0 1
execute as @a[scores={1.20.6_PVN_0=1..}] run scoreboard players add @a PVN_legacy 1
execute as @a[scores={PVN_legacy=100}] run tellraw @a ["",{"text":"\u2716","color":"red"},{"translate":"skyblock_classic_edition.version_update.compatible.minecraft_versions"},{"text":"1.16.X - 1.17.1/1.18.1 - 1.18.2 - 1.19.4 - 1.20.2/1.20.3 - 1.20.4","bold":true},{"translate":"skyblock_classic_edition.version_update.compatible.info"}]
execute as @a[scores={PVN_legacy=201..}] run scoreboard objectives remove 1.20.6_PVN_0
execute as @a[scores={PVN_legacy=201..}] run scoreboard objectives remove PVN_legacy


##(AGGIUNGERE CHANGELOG IN GITHUB E POI AGGIORNARE GITHUB)
execute as @a[scores={PVN_0_mc12111=1}] run tellraw @s ["",{"translate":"skyblock_classic_edition.version_update.welcome","bold":true},{"text":"\n"},{"text":" 7.2.0 LTS [Rebranding Update] - JE-1.21>1.21.11-7.2.X-Voidblock:7.2.0","italic":true},{"text":" \n"},{"text":"\n"},{"translate":"skyblock_classic_edition.version_update.for_edition","bold":true},{"text":" 1.21.4 The Garden Awakens Drop","italic":true},{"translate":"skyblock_classic_edition.version_update.check_news"},{"translate":"skyblock_classic_edition.version_update.changelog","italic":true,"underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Voidblock/releases/tag/1.21.11_JE-0/"}},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"translate":"skyblock_classic_edition.version_update.check_links","bold":true},{"text":"\n\n"},{"text":"\u27a1Github","color":"gray","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Voidblock"}},{"text":"\n\n"},{"text":"\u27a1Curse","color":"#D51314","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/worlds/voidblock-skyblock-reinterpretation/files/"}},{"text":"Forge","color":"#666666","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/worlds/voidblock-skyblock-reinterpretation/files/"}},{"text":"\n\n"},{"text":"\u27a1Curse","color":"#D51314","clickEvent":{"action":"open_url","value":"https://curseforge.com/minecraft/data-packs/voidblock-portable-version/files/"}},{"text":"Forge","color":"#666666","clickEvent":{"action":"open_url","value":"https://curseforge.com/minecraft/data-packs/voidblock-portable-version/files/"}},{"text":" (Portable Version)","color":"white","clickEvent":{"action":"open_url","value":"https://curseforge.com/minecraft/data-packs/voidblock-portable-version/files/"}},{"text":"\n\n"},{"text":"\u27a1Planet","color":"#16BF00","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/project/skyblock-classic-edition/"}},{"text":"Minecraft","color":"#00C3B6","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/project/skyblock-classic-edition/"}},{"text":"\n\n"},{"text":"\u27a1Planet","color":"#16BF00","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/skyblock-classic-edition-portable-version/"}},{"text":"Minecraft","color":"#00C3B6","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/skyblock-classic-edition-portable-version/"}},{"text":" (Portable Version)","color":"white","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/skyblock-classic-edition-portable-version/"}},{"text":"\n\n"},{"text":"\u27a1Modrinth In the future","color":"green","clickEvent":{"action":"open_url","value":"..."}},{"text":"\n\n"},{"text":"\u27a1Modrinth","color":"green","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/voidblock-portable/"}},{"text":" (Portable Version)","color":"white","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/voidblock-portable/"}},{"text":"\n\n"},{"text":"\u27a1Smithed","color":"blue","clickEvent":{"action":"open_url","value":"https://smithed.net/packs/skyblock-classic-edition/"}},{"text":" (Portable Version)","color":"white","clickEvent":{"action":"open_url","value":"https://smithed.net/packs/skyblock-classic-edition/"}},{"text":"\n\n"},{"translate":"skyblock_classic_edition.version_update.crowdin","color":"yellow","clickEvent":{"action":"open_url","value":"https://crowdin.com/project/skyblock-classic-edition/"}},{"text":" ","color":"white"},{"text":"[!]","color":"white","hoverEvent":{"action":"show_text","contents":[{"translate":"skyblock_classic_edition.version_update.crowdin.info"}]}},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"translate":"skyblock_classic_edition.credits","italic":true,"color":"#FFE28B"},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"translate":"skyblock_classic_edition.version_update.discord","underlined":true,"color":"light_purple","clickEvent":{"action":"open_url","value":"https://discord.gg/T6PHxhznJ6"}},{"text":"\n "}]


##PVN WARNING (NON TOCCARE, SOLO VERSIONI DI SVILUPPO)
#execute as @a[scores={PVN_0_mc12111=5}] run tellraw @s ["",{"translate":"skyblock_classic_edition.version_update.development_version.warning","color":"red"},{"translate":"skyblock_classic_edition.version_update.development_version.report","underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Voidblock/issues"}},{"text":".\u26a0","color":"red"}]
#execute as @a[scores={PVN_0_mc12111=6}] run tellraw @s ["",{"color":"red","translate":"skyblock_classic_edition.version_update.development_mc_version"}]


##WARNING MESSAGE BOSSBAR (MESSAGGIO DA ABILITARE SOLO NELLE VERSIONI DI SVILUPPO)
#title @a actionbar {"text":"\u26a0Work in Progress\u26a0","bold":true,"color":"dark_red"}


##BUILDING VERSION BOSSBAR (BOSSBAR VISIBILE: True SOLO VERSIONI DI SVILUPPO o False VERSIONI STABILI, TENERE ACCESO PER LE NIGHT BUILDING)
bossbar set minecraft:building visible false


##PVN VERSION PROTOCOL LOOP (NON TOCCARE MAI)
execute as @a[scores={PVN_0_mc12111=900000000..}] run scoreboard players set @a PVN_0_mc12111 0