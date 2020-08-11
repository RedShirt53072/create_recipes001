







#インプットをコピーする
data remove storage advanced_datapacks:craft work_space[0].input_nbt[]

#素材
data modify storage advanced_datapacks:craft work_space[0].input_nbt append from block ~ ~ ~ Items[{Slot:0b}]
data modify storage advanced_datapacks:craft work_space[0].input_nbt append from block ~ ~ ~ Items[{Slot:1b}]
data modify storage advanced_datapacks:craft work_space[0].input_nbt append from block ~ ~ ~ Items[{Slot:2b}]
data modify storage advanced_datapacks:craft work_space[0].input_nbt append from block ~ ~ ~ Items[{Slot:9b}]
data modify storage advanced_datapacks:craft work_space[0].input_nbt append from block ~ ~ ~ Items[{Slot:10b}]
data modify storage advanced_datapacks:craft work_space[0].input_nbt append from block ~ ~ ~ Items[{Slot:11b}]
data modify storage advanced_datapacks:craft work_space[0].input_nbt append from block ~ ~ ~ Items[{Slot:18b}]
data modify storage advanced_datapacks:craft work_space[0].input_nbt append from block ~ ~ ~ Items[{Slot:19b}]
data modify storage advanced_datapacks:craft work_space[0].input_nbt append from block ~ ~ ~ Items[{Slot:20b}]

execute store result score #input_item ADCslot0_count run data get storage advanced_datapacks:craft work_space[0].input_nbt[{Slot:0b}].Count 1
execute store result score #input_item ADCslot1_count run data get storage advanced_datapacks:craft work_space[0].input_nbt[{Slot:1b}].Count 1
execute store result score #input_item ADCslot2_count run data get storage advanced_datapacks:craft work_space[0].input_nbt[{Slot:2b}].Count 1
execute store result score #input_item ADCslot9_count run data get storage advanced_datapacks:craft work_space[0].input_nbt[{Slot:9b}].Count 1
execute store result score #input_item ADCslot10_count run data get storage advanced_datapacks:craft work_space[0].input_nbt[{Slot:10b}].Count 1
execute store result score #input_item ADCslot11_count run data get storage advanced_datapacks:craft work_space[0].input_nbt[{Slot:11b}].Count 1
execute store result score #input_item ADCslot18_count run data get storage advanced_datapacks:craft work_space[0].input_nbt[{Slot:18b}].Count 1
execute store result score #input_item ADCslot19_count run data get storage advanced_datapacks:craft work_space[0].input_nbt[{Slot:19b}].Count 1
execute store result score #input_item ADCslot20_count run data get storage advanced_datapacks:craft work_space[0].input_nbt[{Slot:20b}].Count 1

data remove storage advanced_datapacks:craft work_space[0].input_nbt[].Count
execute store success score #input_item ADCempty_slot run execute if data storage advanced_datapacks:craft work_space[0].input_nbt[{tag:{ADCempty_item:1b}}]

#完成品
data remove storage advanced_datapacks:craft work_space[0].input_production[]
data modify storage advanced_datapacks:craft work_space[0].input_production append from block ~ ~ ~ Items[{Slot:6b}]
data modify storage advanced_datapacks:craft work_space[0].input_production append from block ~ ~ ~ Items[{Slot:7b}]
data modify storage advanced_datapacks:craft work_space[0].input_production append from block ~ ~ ~ Items[{Slot:8b}]
data modify storage advanced_datapacks:craft work_space[0].input_production append from block ~ ~ ~ Items[{Slot:15b}]
data modify storage advanced_datapacks:craft work_space[0].input_production append from block ~ ~ ~ Items[{Slot:16b}]
data modify storage advanced_datapacks:craft work_space[0].input_production append from block ~ ~ ~ Items[{Slot:17b}]
data modify storage advanced_datapacks:craft work_space[0].input_production append from block ~ ~ ~ Items[{Slot:24b}]
data modify storage advanced_datapacks:craft work_space[0].input_production append from block ~ ~ ~ Items[{Slot:25b}]
data modify storage advanced_datapacks:craft work_space[0].input_production append from block ~ ~ ~ Items[{Slot:26b}]

scoreboard players set #input_production ADCslot6_count 0
scoreboard players set #input_production ADCslot7_count 0
scoreboard players set #input_production ADCslot8_count 0
scoreboard players set #input_production ADCslot15_count 0
scoreboard players set #input_production ADCslot16_count 0
scoreboard players set #input_production ADCslot17_count 0
scoreboard players set #input_production ADCslot24_count 0
scoreboard players set #input_production ADCslot25_count 0
scoreboard players set #input_production ADCslot26_count 0


execute store result score #input_production ADCslot6_count run data get storage advanced_datapacks:craft work_space[0].input_production[{Slot:6b}].Count 1
execute store result score #input_production ADCslot7_count run data get storage advanced_datapacks:craft work_space[0].input_production[{Slot:7b}].Count 1
execute store result score #input_production ADCslot8_count run data get storage advanced_datapacks:craft work_space[0].input_production[{Slot:8b}].Count 1
execute store result score #input_production ADCslot15_count run data get storage advanced_datapacks:craft work_space[0].input_production[{Slot:15b}].Count 1
execute store result score #input_production ADCslot16_count run data get storage advanced_datapacks:craft work_space[0].input_production[{Slot:16b}].Count 1
execute store result score #input_production ADCslot17_count run data get storage advanced_datapacks:craft work_space[0].input_production[{Slot:17b}].Count 1
execute store result score #input_production ADCslot24_count run data get storage advanced_datapacks:craft work_space[0].input_production[{Slot:24b}].Count 1
execute store result score #input_production ADCslot25_count run data get storage advanced_datapacks:craft work_space[0].input_production[{Slot:25b}].Count 1
execute store result score #input_production ADCslot26_count run data get storage advanced_datapacks:craft work_space[0].input_production[{Slot:26b}].Count 1



















