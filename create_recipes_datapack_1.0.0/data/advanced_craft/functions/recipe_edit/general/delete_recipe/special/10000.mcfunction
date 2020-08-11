data remove storage advanced_datapacks:craft recipes.type1[-1]

tellraw @a [{"text":"【","color":"light_purple","italic":false},{"text":"レシピ削除","color":"gold","italic":false},{"text":"】","color":"light_purple","italic":false}]
tellraw @a [{"text":"最後に追加されたレシピが","color":"white","italic":false},{"selector":"@s","color":"aqua","italic":false},{"text":"さんによって削除されました","color":"white","italic":false}]

execute as @a run trigger ADCdelete_recipe set 0
scoreboard players set @a ADCdelete_recipe 0





