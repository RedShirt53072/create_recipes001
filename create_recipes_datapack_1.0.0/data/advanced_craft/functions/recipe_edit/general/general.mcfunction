


#レシピが成立しているか
    #完成品と素材の両方になにかしらアイテムがあるか tagなし
        #完成品のアイテム数が素材のアイテム個数を上回っていないかADCproduction_over
            #レシピ参照で被ってるかチェック
            #storage変換入れる
                #loop
                    #空欄数+count含めないstorageデータで比較 ADCsame_recipe
            #レシピ登録可能ならタグつけるだけ ADCcan_add_recipe

tag @s remove ADCproduction_over
tag @s remove ADCsame_recipe
tag @s remove ADCcan_add_recipe

#インプットをstorageにコピーする
function advanced_craft:recipe_edit/general/reset_input


#完成品と素材の両方になにかしらアイテムがあるか
execute store success score #input_item ADCempty_slot run execute if data storage advanced_datapacks:craft work_space[0].input_nbt[{tag:{ADCempty_item:1b}}]
execute if score #input_item ADCempty_slot matches 1 store result score #input_item ADCempty_slot run execute if data storage advanced_datapacks:craft work_space[0].input_nbt[{tag:{ADCempty_item:1b}}]
execute if score #input_item ADCempty_slot matches 0..8 run tag @s add ADCnew_production
execute if score #input_item ADCempty_slot matches 0..8 unless block ~ ~ ~ barrel{Items:[{Slot:6b}]} unless block ~ ~ ~ barrel{Items:[{Slot:7b}]} unless block ~ ~ ~ barrel{Items:[{Slot:8b}]} unless block ~ ~ ~ barrel{Items:[{Slot:15b}]} unless block ~ ~ ~ barrel{Items:[{Slot:16b}]} unless block ~ ~ ~ barrel{Items:[{Slot:17b}]} unless block ~ ~ ~ barrel{Items:[{Slot:24b}]} unless block ~ ~ ~ barrel{Items:[{Slot:25b}]} unless block ~ ~ ~ barrel{Items:[{Slot:26b}]} run tag @s remove ADCnew_production
execute if entity @s[tag=ADCnew_production] if score #input_item ADCempty_slot matches 0..8 run function advanced_craft:recipe_edit/general/count_check

tag @s remove ADCnew_production
