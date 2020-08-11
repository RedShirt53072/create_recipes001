
kill @e[type=item,nbt={Item:{tag:{ADCcrafter_gui_item:1b}}}]

clear @a black_stained_glass_pane{ADCcrafter_gui_item:1b}

#はじき返し
execute if block ~ ~ ~ barrel{Items:[{Slot:22b}]} run summon item ~ ~1 ~ {Item:{id:"stone",Count:1b,tag:{CustomModelData:1}},Tags:["ADC_rep_item"]}
data modify entity @e[type=item,tag=ADC_rep_item,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:22b}]

tag @e[tag=ADC_rep_item] remove ADC_rep_item
replaceitem block ~ ~ ~ container.22 black_stained_glass_pane{display:{Name:'{"text":" "}'},ADCcrafter_gui_item:1b} 1










