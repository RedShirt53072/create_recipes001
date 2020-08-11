#1~10まで再帰loopする



#レシピとの比較処理
execute as @e[type=item_frame,tag=ADCcustom_crafter,tag=ADCrecipe_edit_mode] if score @s ADCcrafter_id = #recipe_check ADCcrafter_id at @s run function advanced_craft:recipe_edit/general/check_change

#登録処理
execute as @e[type=item_frame,tag=ADCcustom_crafter,tag=ADCrecipe_edit_mode,tag=ADCcan_add_recipe] if score @s ADCcrafter_id = #recipe_check ADCcrafter_id at @s unless block ~ ~ ~ barrel{Items:[{Slot:13b,tag:{}}]} run function advanced_craft:recipe_edit/general/add_recipe/general


#レシピ登録（決定ボタンクリック時で）
    #変換データをコピー
    #メッセージを出す

#loop
data modify storage advanced_datapacks:craft work_space append from storage advanced_datapacks:craft work_space[0]
data remove storage advanced_datapacks:craft work_space[0]
execute store result score #recipe_check ADCcrafter_id run data get storage advanced_datapacks:craft work_space[0].crafter_id 1
execute unless score #recipe_check ADCcrafter_id matches 1 run function advanced_craft:recipe_edit/general/loop





