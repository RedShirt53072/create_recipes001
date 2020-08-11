
kill @e[type=item,nbt={Item:{tag:{ADCcrafter_gui_item:1b}}}]

clear @a black_stained_glass_pane{ADCcrafter_gui_item:1b}

#はじき返し
execute if block ~ ~ ~ barrel{Items:[{Slot:5b}]} run summon item ~ ~1 ~ {Item:{id:"stone",Count:1b,tag:{CustomModelData:1}},Tags:["ADC_rep_item"]}
data modify entity @e[type=item,tag=ADC_rep_item,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:5b}]

tag @e[tag=ADC_rep_item] remove ADC_rep_item

replaceitem block ~ ~ ~ container.5 yellow_stained_glass_pane{ADCcrafter_gui_item:1b,display:{Lore:['{"text":"クリックでクラフトモードに変更","color":"yellow","italic":false}'],Name:'{"text":"切り替えボタン","color":"gold","bold":true,"italic":false}'}} 1








