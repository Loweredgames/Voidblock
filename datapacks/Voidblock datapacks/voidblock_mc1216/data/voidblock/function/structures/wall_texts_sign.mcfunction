#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


#Setup Wall Texts Sign


##Wall Texts Version Sign - Large (Easy) 1.21.6/1.21.7
execute in minecraft:overworld as @a[scores={Voidblock_large=33}] run setblock -1 68 -1 birch_wall_sign[facing=south,waterlogged=false]{back_text:{messages:["This","is","a","secret!!!"]},front_text:{color:"white",has_glowing_text:1b,messages:["Voidblock","---------------","1.21.6/1.21.7","---------------"]}} replace


##Wall Texts Version Sign - Default (Normal) 1.21.6/1.21.7
execute in minecraft:overworld as @a[scores={Voidblock_default=33}] run setblock 1 66 -3 birch_wall_sign[facing=south,waterlogged=false]{back_text:{messages:["This","is","a","secret!!!"]},front_text:{color:"white",has_glowing_text:1b,messages:["Voidblock","---------------","1.21.6/1.21.7","---------------"]}} replace


##Wall Texts Version Sign - Small (Hard) 1.21.6/1.21.7
execute in minecraft:overworld as @a[scores={Voidblock_small=10}] run setblock 1 66 0 birch_wall_sign[facing=south,waterlogged=false]{back_text:{messages:["This","is","a","secret!!!"]},front_text:{color:"white",has_glowing_text:1b,messages:["Voidblock","---------------","1.21.6/1.21.7","---------------"]}} replace


##Wall Texts Version Sign - Very Small (Extreme) 1.21.6/1.21.7
execute in minecraft:overworld as @a[scores={Voidblock_very_small=10}] run setblock -1 65 0 birch_wall_sign[facing=west,waterlogged=false]{back_text:{messages:["This","is","a","secret!!!"]},front_text:{color:"white",has_glowing_text:1b,messages:["Voidblock","---------------","1.21.6/1.21.7","---------------"]}} replace