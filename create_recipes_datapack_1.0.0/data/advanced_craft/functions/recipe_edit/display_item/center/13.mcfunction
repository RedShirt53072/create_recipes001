


kill @e[type=item,nbt={Item:{tag:{ADCcrafter_gui_item:1b}}}]

clear @a red_stained_glass_pane{ADCcrafter_gui_item:1b}
clear @a magenta_stained_glass_pane{ADCcrafter_gui_item:1b}
clear @a lime_stained_glass_pane{ADCcrafter_gui_item:1b}


#はじき返し
execute if block ~ ~ ~ barrel{Items:[{Slot:13b}]} unless block ~ ~ ~ barrel{Items:[{Slot:13b,tag:{ADCcrafter_gui_item:1b}}]} run summon item ~ ~1 ~ {Item:{id:"stone",Count:1b,tag:{CustomModelData:1}},Tags:["ADC_rep_item"]}
data modify entity @e[type=item,tag=ADC_rep_item,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:13b}]

tag @e[tag=ADC_rep_item] remove ADC_rep_item

execute if entity @s[tag=ADCcan_add_recipe] run replaceitem block ~ ~ ~ container.13 lime_stained_glass_pane{ADCcrafter_gui_item:1b,display:{Lore:['{"text":"クリックでレシピを登録","color":"green","italic":false}'],Name:'{"text":"決定ボタン","color":"gold","bold":true,"italic":false}'}} 1

execute if entity @s[tag=ADCsame_recipe] run replaceitem block ~ ~ ~ container.13 red_stained_glass_pane{ADCbutton_lock:1b,ADCcrafter_gui_item:1b,display:{Lore:['{"text":"このアイテムが素材でこの配置となっているレシピは","color":"red","italic":false}','{"text":"既に存在するため、レシピ登録ができません","color":"red","italic":false}'],Name:'{"text":"決定ボタン","color":"gold","bold":true,"italic":false}'}} 1

execute if entity @s[tag=ADCproduction_over] run replaceitem block ~ ~ ~ container.13 red_stained_glass_pane{ADCbutton_lock:1b,ADCcrafter_gui_item:1b,display:{Lore:['{"text":"完成品の合計アイテム個数が素材の合計アイテム個数より","color":"red","italic":false}','{"text":"多いため、レシピ登録ができません","color":"red","italic":false}'],Name:'{"text":"決定ボタン","color":"gold","bold":true,"italic":false}'}} 1

execute if entity @s[tag=!ADCcan_add_recipe,tag=!ADCsame_recipe,tag=!ADCproduction_over] run replaceitem block ~ ~ ~ container.13 magenta_stained_glass_pane{ADCcrafter_gui_item:1b,display:{Lore:['{"text":"不完全なレシピです","color":"white","italic":false}','{"text":"素材と完成品を両方設定してください","color":"white","italic":false}'],Name:'{"text":"決定ボタン","color":"gold","bold":true,"italic":false}'}} 1

























