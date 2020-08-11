tellraw @a [{"text":"レシピ作成データパック 1.0.0","color":"aqua","bold":true}]
tellraw @a [{"text":"のダウンロードありがとうございます。","color":"green"},{"text":"無事にインストールが成功しました。","color":"green"}]

#スコアボード追加
#general
scoreboard objectives add ADCcrafter_id dummy
scoreboard objectives add ADCitems_change dummy

#recipe
scoreboard objectives add ADCempty_slot dummy
scoreboard objectives add ADCrecipe_id dummy
scoreboard players set #now_max ADCrecipe_id 1
scoreboard objectives add ADCmatch_recipe dummy
scoreboard objectives add ADCmatch_count dummy
scoreboard objectives add ADCtotal_count dummy

scoreboard objectives add ADCslot0_count dummy
scoreboard objectives add ADCslot1_count dummy
scoreboard objectives add ADCslot2_count dummy
scoreboard objectives add ADCslot9_count dummy
scoreboard objectives add ADCslot10_count dummy
scoreboard objectives add ADCslot11_count dummy
scoreboard objectives add ADCslot18_count dummy
scoreboard objectives add ADCslot19_count dummy
scoreboard objectives add ADCslot20_count dummy

#new recipe
scoreboard objectives add ADCdelete_recipe trigger
scoreboard players enable @a ADCdelete_recipe


scoreboard objectives add ADCslot6_count dummy
scoreboard objectives add ADCslot7_count dummy
scoreboard objectives add ADCslot8_count dummy
scoreboard objectives add ADCslot15_count dummy
scoreboard objectives add ADCslot16_count dummy
scoreboard objectives add ADCslot17_count dummy
scoreboard objectives add ADCslot24_count dummy
scoreboard objectives add ADCslot25_count dummy
scoreboard objectives add ADCslot26_count dummy

#crafter
scoreboard objectives add ADCbreak_all trigger





data modify storage advanced_datapacks:craft work_space set value [{Items:[],input_production:[],new_recipe:{},input_nbt:[],recipes:[],output_nbt:[[],[],[],[],[],[],[],[],[]],crafter_id:1b},{Items:[],input_production:[],new_recipe:{},input_nbt:[],recipes:[],output_nbt:[[],[],[],[],[],[],[],[],[]],crafter_id:2b},{Items:[],input_production:[],new_recipe:{},input_nbt:[],recipes:[],output_nbt:[[],[],[],[],[],[],[],[],[]],crafter_id:3b},{Items:[],input_production:[],new_recipe:{},input_nbt:[],recipes:[],output_nbt:[[],[],[],[],[],[],[],[],[]],crafter_id:4b},{Items:[],input_production:[],new_recipe:{},input_nbt:[],recipes:[],output_nbt:[[],[],[],[],[],[],[],[],[]],crafter_id:5b},{Items:[],input_production:[],new_recipe:{},input_nbt:[],recipes:[],output_nbt:[[],[],[],[],[],[],[],[],[]],crafter_id:6b},{Items:[],input_production:[],new_recipe:{},input_nbt:[],recipes:[],output_nbt:[[],[],[],[],[],[],[],[],[]],crafter_id:7b},{Items:[],input_production:[],new_recipe:{},input_nbt:[],recipes:[],output_nbt:[[],[],[],[],[],[],[],[],[]],crafter_id:8b},{Items:[],input_production:[],new_recipe:{},input_nbt:[],recipes:[],output_nbt:[[],[],[],[],[],[],[],[],[]],crafter_id:9b},{Items:[],input_production:[],new_recipe:{},input_nbt:[],recipes:[],output_nbt:[[],[],[],[],[],[],[],[],[]],crafter_id:10b}]
#data modify storage advanced_datapacks:craft recipes set value {type1:[]}
data modify storage advanced_datapacks:craft copy_space set value {}




function advanced_craft:recipes



#/give @p written_book{display:{Name:'{"text":"コマンド本","color":"light_purple","italic":false}',Lore:['{"text":"レシピ追加データパックのコマンド本です","color":"aqua","italic":false}']},title:"",author:"制作者：赤シャツ",generation:0,pages:['[{"text":"【コマンド本】\\n","color":"dark_blue","italic":false},{"text":"プレイヤー全員のチャット欄にレシピ削除ボタンを表示する\\n","color":"dark_green","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/execute as @a run function advanced_craft:recipe_edit/general/delete_recipe/delete_chat"}},{"text":"自分のチャット欄にレシピ削除ボタンを表示する\\n","color":"light_purple","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/function advanced_craft:recipe_edit/general/delete_recipe/delete_chat"}},{"text":"レシピを全て削除する\\n","color":"red","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/function advanced_craft:recipe_edit/general/delete_recipe/delete_all"}},{"text":"※コマンド本操作にはOP権限が必要です","color":"black","italic":false}]','{"text":""}']} 1

































































