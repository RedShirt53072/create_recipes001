
#storage変換

data modify storage advanced_datapacks:craft work_space[0].new_recipe set value {recipe_id:0,total_count:0,empty_slot:9b,count0:0b,count1:0b,count2:0b,count9:0b,count10:0b,count11:0b,count18:0b,count19:0b,count20:0b,production:[],recipe_nbt:[]}

execute store result storage advanced_datapacks:craft work_space[0].new_recipe.recipe_id int 1 run scoreboard players get #now_max ADCrecipe_id


execute store result storage advanced_datapacks:craft work_space[0].new_recipe.total_count int 1 run scoreboard players get #input_item ADCtotal_count

execute store result storage advanced_datapacks:craft work_space[0].new_recipe.empty_slot int 1 run scoreboard players get #input_item ADCempty_slot

execute store result storage advanced_datapacks:craft work_space[0].new_recipe.count0 int 1 run scoreboard players get #input_item ADCslot0_count 
execute store result storage advanced_datapacks:craft work_space[0].new_recipe.count1 int 1 run scoreboard players get #input_item ADCslot1_count 
execute store result storage advanced_datapacks:craft work_space[0].new_recipe.count2 int 1 run scoreboard players get #input_item ADCslot2_count 
execute store result storage advanced_datapacks:craft work_space[0].new_recipe.count9 int 1 run scoreboard players get #input_item ADCslot9_count 
execute store result storage advanced_datapacks:craft work_space[0].new_recipe.count10 int 1 run scoreboard players get #input_item ADCslot10_count
execute store result storage advanced_datapacks:craft work_space[0].new_recipe.count11 int 1 run scoreboard players get #input_item ADCslot11_count
execute store result storage advanced_datapacks:craft work_space[0].new_recipe.count18 int 1 run scoreboard players get #input_item ADCslot18_count
execute store result storage advanced_datapacks:craft work_space[0].new_recipe.count19 int 1 run scoreboard players get #input_item ADCslot19_count
execute store result storage advanced_datapacks:craft work_space[0].new_recipe.count20 int 1 run scoreboard players get #input_item ADCslot20_count


data modify storage advanced_datapacks:craft work_space[0].new_recipe.production set from storage advanced_datapacks:craft work_space[0].input_production

data modify storage advanced_datapacks:craft work_space[0].new_recipe.recipe_nbt set from storage advanced_datapacks:craft work_space[0].input_nbt

data modify storage advanced_datapacks:craft work_space[0].new_recipe.production[].tag.ADCpreview_item set value 1b

#準備
data remove storage advanced_datapacks:craft work_space[0].recipes[]
data modify storage advanced_datapacks:craft work_space[0].recipes set from storage advanced_datapacks:craft recipes.type1

scoreboard players set #recipe_check ADCmatch_recipe 1


function advanced_craft:recipe_edit/general/type1/recipe_loop


















