





execute if entity @s[scores={ADCdelete_recipe=10000},tag=ADCdelete_10000] run function advanced_craft:recipe_edit/general/delete_recipe/special/10000

execute if entity @s[scores={ADCdelete_recipe=1..50}] run function advanced_craft:recipe_edit/general/delete_recipe/normal_1-50



scoreboard players set @s ADCdelete_recipe 0


















