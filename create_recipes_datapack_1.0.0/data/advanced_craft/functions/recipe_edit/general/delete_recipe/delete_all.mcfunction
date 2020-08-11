data remove storage advanced_datapacks:craft recipes.type1[]
execute unless data storage advanced_datapacks:craft {recipes:{type1:[{recipe_id:0}]}} run data modify storage advanced_datapacks:craft recipes.type1 append value {recipe_id:0,empty_slot:9b}

tellraw @a [{"text":"【","color":"light_purple","italic":false},{"text":"レシピ削除","color":"gold","italic":false},{"text":"】","color":"light_purple","italic":false}]
tellraw @a [{"text":"全てのレシピが","color":"white","italic":false},{"selector":"@s","color":"aqua","italic":false},{"text":"さんによって削除されました","color":"white","italic":false}]











