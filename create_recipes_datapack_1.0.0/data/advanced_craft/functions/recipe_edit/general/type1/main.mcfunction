






#照合処理
data modify storage advanced_datapacks:craft copy_space set from storage advanced_datapacks:craft work_space[0].input_nbt
execute store success score #recipe_check ADCmatch_recipe run data modify storage advanced_datapacks:craft copy_space set from storage advanced_datapacks:craft work_space[0].recipes[0].recipe_nbt

execute if score #recipe_check ADCmatch_recipe matches 0 run tag @s add ADCsame_recipe









