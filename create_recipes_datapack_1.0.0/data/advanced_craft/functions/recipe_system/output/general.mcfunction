


execute if entity @s[tag=!ADCcraft_lock] run function advanced_craft:crafting_table/display_item/preview




data remove storage advanced_datapacks:craft work_space[0].recipes[]

#インプットをコピーする

tag @s remove ADCmatch_crafter

function advanced_craft:recipe_system/output/reset_input



#インプットにempty以外が存在するならレシピ確認処理を行う
#レシピと照合する
#定型
execute if score #input_item ADCempty_slot matches 0..8 run data modify storage advanced_datapacks:craft work_space[0].recipes set from storage advanced_datapacks:craft recipes.type1
execute if score #input_item ADCempty_slot matches 0..8 run function advanced_craft:recipe_system/output/check_recipe/type_1_recipe_loop
#不定型
#execute if score #recipe_check ADCmatch_recipe matches 1 run data modify storage advanced_datapacks:craft work_space[0].recipes set from storage advanced_datapacks:craft recipes.type2
#execute if score #recipe_check ADCmatch_recipe matches 1 run function advanced_craft:recipe_system/output/check_recipe/type_2
#動的
#execute if score #recipe_check ADCmatch_recipe matches 1 run data modify storage advanced_datapacks:craft work_space[0].recipes set from storage advanced_datapacks:craft recipes.type3
#execute if score #recipe_check ADCmatch_recipe matches 1 run function advanced_craft:recipe_system/output/check_recipe/type_3













#インプットにempty以外が存在するならレシピ確認処理を行う















