


data modify storage advanced_datapacks:craft work_space[0].recipes append from storage advanced_datapacks:craft work_space[0].recipes[0]
data remove storage advanced_datapacks:craft work_space[0].recipes[0]

scoreboard players set #recipe_check ADCmatch_recipe 1
#空スロット数比較
execute store result score #recipe_check ADCempty_slot run data get storage advanced_datapacks:craft work_space[0].recipes[0].empty_slot 1
execute if score #recipe_check ADCempty_slot = #input_item ADCempty_slot run function advanced_craft:recipe_system/output/check_recipe/type_1_main



#loop

execute store result score #recipe_check ADCrecipe_id run data get storage advanced_datapacks:craft work_space[0].recipes[0].recipe_id 1

execute unless score #recipe_check ADCmatch_recipe matches 0 unless score #recipe_check ADCrecipe_id matches 0 run function advanced_craft:recipe_system/output/check_recipe/type_1_recipe_loop
