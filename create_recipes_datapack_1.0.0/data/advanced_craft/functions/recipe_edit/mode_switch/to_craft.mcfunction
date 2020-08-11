




tag @s remove ADCrecipe_edit_mode


clear @a yellow_stained_glass_pane{ADCcrafter_gui_item:1b}


#アウトプットスロットにアイテムがあればタグをつける
tag @s add ADCcraft_lock
execute unless block ~ ~ ~ barrel{Items:[{Slot:6b}]} unless block ~ ~ ~ barrel{Items:[{Slot:7b}]} unless block ~ ~ ~ barrel{Items:[{Slot:8b}]} unless block ~ ~ ~ barrel{Items:[{Slot:15b}]} unless block ~ ~ ~ barrel{Items:[{Slot:16b}]} unless block ~ ~ ~ barrel{Items:[{Slot:17b}]} unless block ~ ~ ~ barrel{Items:[{Slot:24b}]} unless block ~ ~ ~ barrel{Items:[{Slot:25b}]} unless block ~ ~ ~ barrel{Items:[{Slot:26b}]} run tag @s remove ADCcraft_lock

tag @s[tag=ADCcraft_lock] add ADCcrafted

#中央アイテム（決定・スイッチ）を置き換える
#スイッチのはじき返し
execute if block ~ ~ ~ barrel{Items:[{Slot:5b}]} unless block ~ ~ ~ barrel{Items:[{Slot:5b,tag:{ADCcrafter_gui_item:1b}}]} run summon item ~ ~1 ~ {Item:{id:"stone",Count:1b,tag:{CustomModelData:1}},Tags:["ADC_rep_item"]}
data modify entity @e[type=item,tag=ADC_rep_item,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:5b}]
tag @e[tag=ADC_rep_item] remove ADC_rep_item

replaceitem block ~ ~ ~ container.4 yellow_stained_glass_pane{ADCcrafter_gui_item:1b,display:{Name:'{"text":"現在クラフトモード中","color":"yellow","bold":true,"italic":false}'}} 1

replaceitem block ~ ~ ~ container.5 blue_stained_glass_pane{ADCcrafter_gui_item:1b,display:{Lore:['{"text":"クリックでレシピ編集モードに変更","color":"blue","italic":false}'],Name:'{"text":"切り替えボタン","color":"gold","bold":true,"italic":false}'}}


execute if entity @s[tag=ADCcraft_lock] run replaceitem block ~ ~ ~ container.13 red_stained_glass_pane{ADCbutton_lock:1b,ADCcrafter_gui_item:1b,display:{Lore:['{"text":"【lock】前回クラフトしたアイテムが残っているため","color":"red","italic":false}','{"text":"一時的にロックされています","color":"red","italic":false}'],Name:'{"text":"決定ボタン","color":"gold","bold":true,"italic":false}'}} 1

execute if entity @s[tag=!ADCcraft_lock] run replaceitem block ~ ~ ~ container.13 magenta_stained_glass_pane{ADCcrafter_gui_item:1b,display:{Lore:['{"text":"素材がレシピと一致しません","color":"white","italic":false}','{"text":"素材を入れてください","color":"white","italic":false}'],Name:'{"text":"決定ボタン","color":"gold","bold":true,"italic":false}'}} 1







