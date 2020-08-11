
scoreboard players enable @a ADCdelete_recipe



execute as @a[scores={ADCdelete_recipe=1..}] run function advanced_craft:recipe_edit/general/delete_recipe/general



#モードスイッチ
#編集にする
execute as @e[type=item_frame,tag=ADCcustom_crafter,tag=!ADCrecipe_edit_mode] at @s unless block ~ ~ ~ barrel{Items:[{Slot:5b,tag:{ADCcrafter_gui_item:1b}}]} run function advanced_craft:recipe_edit/mode_switch/to_edit

#クラフトに戻す
execute as @e[type=item_frame,tag=ADCcustom_crafter,tag=ADCrecipe_edit_mode] at @s unless block ~ ~ ~ barrel{Items:[{Slot:5b,tag:{ADCcrafter_gui_item:1b}}]} run function advanced_craft:recipe_edit/mode_switch/to_craft




#クラフトモード


#設置・撤去
function advanced_craft:crafting_table/crafter/general






#クラフト
execute as @e[tag=ADCmatch_crafter,tag=!ADCcraft_lock,tag=!ADCrecipe_edit_mode] at @s unless block ~ ~ ~ barrel{Items:[{Slot:13b,tag:{ADCcrafter_gui_item:1b}}]} run function advanced_craft:crafting_table/craft_action/general


#完成品があったらロック
execute as @e[type=item_frame,tag=ADCcustom_crafter,tag=ADCcrafted,tag=!ADCrecipe_edit_mode] at @s run function advanced_craft:crafting_table/output_slot/general

#レシピ照会
execute if entity @e[type=item_frame,tag=ADCcustom_crafter,tag=!ADCrecipe_edit_mode] run function advanced_craft:recipe_system/output/loop







#レシピ編集モード


#編集
execute if entity @e[type=item_frame,tag=ADCcustom_crafter,tag=ADCrecipe_edit_mode] run function advanced_craft:recipe_edit/general/loop






#GUIのclear/kill＆再設置

execute as @e[type=item_frame,tag=ADCcustom_crafter,tag=ADCitems_change,tag=ADCrecipe_edit_mode] at @s run function advanced_craft:recipe_edit/display_item/general



#クラフトモード
#GUIのclear/kill＆再設置
execute as @e[type=item_frame,tag=ADCcustom_crafter,tag=ADCitems_change,tag=!ADCrecipe_edit_mode] at @s run function advanced_craft:crafting_table/display_item/general













