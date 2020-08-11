
kill @e[type=item,nbt={Item:{tag:{ADCcrafter_gui_item:1b}}}]

clear @a blue_stained_glass_pane{ADCcrafter_gui_item:1b}

#はじき返し
execute if block ~ ~ ~ barrel{Items:[{Slot:4b}]} run summon item ~ ~1 ~ {Item:{id:"stone",Count:1b,tag:{CustomModelData:1}},Tags:["ADC_rep_item"]}
data modify entity @e[type=item,tag=ADC_rep_item,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:4b}]

tag @e[tag=ADC_rep_item] remove ADC_rep_item

replaceitem block ~ ~ ~ container.4 blue_stained_glass_pane{ADCcrafter_gui_item:1b,display:{Name:'{"text":"現在レシピ編集モード中","color":"blue","bold":true,"italic":false}'}}



