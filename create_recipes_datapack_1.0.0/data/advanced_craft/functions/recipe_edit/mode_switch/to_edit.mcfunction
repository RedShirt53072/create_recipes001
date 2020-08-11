





tag @s add ADCrecipe_edit_mode

tag @s remove ADCcrafted

tag @s remove ADCmatch_crafter

tag @s remove ADCcraft_lock

#プレビューを消す
data remove block ~ ~ ~ Items[{tag:{ADCpreview_item:1b}}] 


clear @a blue_stained_glass_pane{ADCcrafter_gui_item:1b}


#中央アイテム（決定・スイッチ）を置き換える
#スイッチのはじき返し
execute if block ~ ~ ~ barrel{Items:[{Slot:5b}]} unless block ~ ~ ~ barrel{Items:[{Slot:5b,tag:{ADCcrafter_gui_item:1b}}]} run summon item ~ ~1 ~ {Item:{id:"stone",Count:1b,tag:{CustomModelData:1}},Tags:["ADC_rep_item"]}
data modify entity @e[type=item,tag=ADC_rep_item,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:5b}]
tag @e[tag=ADC_rep_item] remove ADC_rep_item
replaceitem block ~ ~ ~ container.4 blue_stained_glass_pane{ADCcrafter_gui_item:1b,display:{Name:'{"text":"現在レシピ編集モード中","color":"blue","bold":true,"italic":false}'}}

replaceitem block ~ ~ ~ container.5 yellow_stained_glass_pane{ADCcrafter_gui_item:1b,display:{Lore:['{"text":"クリックでクラフトモードに変更","color":"yellow","italic":false}'],Name:'{"text":"切り替えボタン","color":"gold","bold":true,"italic":false}'}}


replaceitem block ~ ~ ~ container.13 lime_stained_glass_pane{ADCcrafter_gui_item:1b,display:{Lore:['{"text":"クリックでレシピを登録","color":"green","italic":false}'],Name:'{"text":"決定ボタン","color":"gold","bold":true,"italic":false}'}} 1


