

#完成品のアイテム数が素材のアイテム個数を上回っていないか
scoreboard players set #input_item ADCtotal_count 0
execute unless data storage advanced_datapacks:craft work_space[0].input_nbt[{Slot:0b}].tag.ADCempty_item run scoreboard players operation #input_item ADCtotal_count += #input_item ADCslot0_count 
execute unless data storage advanced_datapacks:craft work_space[0].input_nbt[{Slot:1b}].tag.ADCempty_item run scoreboard players operation #input_item ADCtotal_count += #input_item ADCslot1_count 
execute unless data storage advanced_datapacks:craft work_space[0].input_nbt[{Slot:2b}].tag.ADCempty_item run scoreboard players operation #input_item ADCtotal_count += #input_item ADCslot2_count 
execute unless data storage advanced_datapacks:craft work_space[0].input_nbt[{Slot:9b}].tag.ADCempty_item run scoreboard players operation #input_item ADCtotal_count += #input_item ADCslot9_count 
execute unless data storage advanced_datapacks:craft work_space[0].input_nbt[{Slot:10b}].tag.ADCempty_item run scoreboard players operation #input_item ADCtotal_count += #input_item ADCslot10_count
execute unless data storage advanced_datapacks:craft work_space[0].input_nbt[{Slot:11b}].tag.ADCempty_item run scoreboard players operation #input_item ADCtotal_count += #input_item ADCslot11_count
execute unless data storage advanced_datapacks:craft work_space[0].input_nbt[{Slot:18b}].tag.ADCempty_item run scoreboard players operation #input_item ADCtotal_count += #input_item ADCslot18_count
execute unless data storage advanced_datapacks:craft work_space[0].input_nbt[{Slot:19b}].tag.ADCempty_item run scoreboard players operation #input_item ADCtotal_count += #input_item ADCslot19_count
execute unless data storage advanced_datapacks:craft work_space[0].input_nbt[{Slot:20b}].tag.ADCempty_item run scoreboard players operation #input_item ADCtotal_count += #input_item ADCslot20_count

scoreboard players set #input_production ADCtotal_count 0
scoreboard players operation #input_production ADCtotal_count += #input_production ADCslot6_count 
scoreboard players operation #input_production ADCtotal_count += #input_production ADCslot7_count 
scoreboard players operation #input_production ADCtotal_count += #input_production ADCslot8_count 
scoreboard players operation #input_production ADCtotal_count += #input_production ADCslot15_count
scoreboard players operation #input_production ADCtotal_count += #input_production ADCslot16_count
scoreboard players operation #input_production ADCtotal_count += #input_production ADCslot17_count
scoreboard players operation #input_production ADCtotal_count += #input_production ADCslot24_count
scoreboard players operation #input_production ADCtotal_count += #input_production ADCslot25_count
scoreboard players operation #input_production ADCtotal_count += #input_production ADCslot26_count

execute if score #input_production ADCtotal_count <= #input_item ADCtotal_count run function advanced_craft:recipe_edit/general/type1/storage_conversion

execute if score #input_production ADCtotal_count > #input_item ADCtotal_count run tag @s add ADCproduction_over

