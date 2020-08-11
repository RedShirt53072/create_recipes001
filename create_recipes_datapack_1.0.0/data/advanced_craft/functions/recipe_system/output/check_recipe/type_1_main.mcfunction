






#照合処理
data modify storage advanced_datapacks:craft copy_space set from storage advanced_datapacks:craft work_space[0].input_nbt
execute store success score #recipe_check ADCmatch_recipe run data modify storage advanced_datapacks:craft copy_space set from storage advanced_datapacks:craft work_space[0].recipes[0].recipe_nbt



execute if score #recipe_check ADCmatch_recipe matches 0 run function advanced_craft:recipe_system/output/count_check

execute if score #recipe_check ADCmatch_count matches 1 run tag @s remove ADCmatch_crafter
execute if score #recipe_check ADCmatch_recipe matches 1 run tag @s remove ADCmatch_crafter
execute if score #recipe_check ADCmatch_recipe matches 0 if score #recipe_check ADCmatch_count matches 0 run tag @s add ADCmatch_crafter
#プレビューのGUI管理

execute as @s[tag=!ADCmatch_crafter] if block ~ ~ ~ barrel{Items:[{tag:{ADCpreview_item:1b}}]} run data remove block ~ ~ ~ Items[{tag:{ADCpreview_item:1b}}] 

execute if entity @s[tag=ADCmatch_crafter,tag=!ADCcraft_lock] run function advanced_craft:crafting_table/preview/general

