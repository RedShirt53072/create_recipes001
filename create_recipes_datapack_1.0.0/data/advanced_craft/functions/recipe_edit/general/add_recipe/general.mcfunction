

data modify storage advanced_datapacks:craft recipes.type1 append from storage advanced_datapacks:craft work_space[0].new_recipe


tellraw @a [{"text":"【","color":"light_purple","italic":false},{"text":"レシピ追加","color":"gold"},{"text":"】","italic":false,"color":"light_purple"}]
tellraw @a [{"text":"新たに","color":"white","italic":false},{"score":{"name":"#now_max","objective":"ADCrecipe_id"},"italic":false,"color":"aqua"},{"text":"個目のレシピが登録されました","color":"white","italic":false}]
tellraw @a [{"text":"レシピ追加から10秒以内に","color":"white","italic":false},{"text":"ここ","color":"green","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger ADCdelete_recipe set 10000"}},{"text":"をクリックで最後に追加されたレシピを削除","color":"white","italic":false}]
schedule function advanced_craft:recipe_edit/general/add_recipe/remove_trigger 10s
scoreboard players add #now_max ADCrecipe_id 1
tag @a add ADCdelete_10000

tag @s remove ADCcan_add_recipe

playsound entity.player.levelup master @a ~ ~ ~ 1 1 1




