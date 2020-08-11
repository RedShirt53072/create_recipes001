# create_recipes001
レシピ作成データパックのソースコードです。

1.functionの中身の説明
1.1.functions直下のファイル
1.1.1.tick.mcfunction
      tick.jsonから毎tick実行されるように設定されています。
      主な機能は10ほどのfunctionの条件付きでの呼び出しです。
1.1.2.load.mcfunction
      load.jsonから読み込み時に実行されるように設定されています。
      主な機能はinstall.mcfunctionの呼び出しです。
1.1.3.install.mcfunction
      load.mcfunctionから初回読み込み時に実行されるように設定されています。
      主な機能はscoreboardの宣言とrecipes.mcfunctionの呼び出しです。
1.1.4.recipes.mcfunction
      install.mcfunctionから初回読み込み時に実行されるように設定されています。
      主な機能はこのファイルに書き込まれたレシピを追加することです。
      
1.2.functions/crafting_tableの中のフォルダ
    主な機能はクラフトモード時の処理です。
1.2.1.craft_action
      tick.mcfunctionからにクラフト時に実行されるように設定されています。
      主な機能は素材を消す処理です。
1.2.2.crafter
      tick.mcfunctionからに毎tick実行されるように設定されています。
      主な機能はカスタムクラフターを設置したり削除する処理です。
1.2.3.display_item
      tick.mcfunctionからにカスタムクラフターのアイテム更新時に実行されるように設定されています。
      主な機能はプレイヤーが持ち込んだ通常アイテムをはじき返したり、プレイヤーに持ち上げれたGUI特殊アイテムを消し、再設置する処理です。
1.2.4.output_slot
      tick.mcfunctionからクラフト後完成品が残っている間実行されるように設定されています。
      主な機能は完成品スロットの通常アイテムの検知とクラフトロック処理です。
1.2.5.preview
      recipe_system/check_recipe/type1_main.mcfunctionからクラフト可能時に実行されるように設定されています。
      主な機能はプレビューアイテムの設置処理です。
      
1.3.functions/recipe_editの中のフォルダ
    主な機能はレシピ編集モード時の処理です。
1.3.1.display_item
      tick.mcfunctionからにカスタムクラフターのアイテム更新時に実行されるように設定されています。
      主な機能はプレイヤーが持ち込んだ通常アイテムをはじき返したり、プレイヤーに持ち上げれたGUI特殊アイテムを消し、再設置する処理です。
1.3.2.general
      tick.mcfunctionから毎tick実行されるように設定されています。
      主な機能はレシピ追加可能かの検知と実際の追加と削除の処理です。
1.3.3.mode_swich
      tick.mcfunctionからモードスイッチ時に実行されるように設定されています。
      主な機能はタグの管理とGUI特殊アイテムの入れ替えです。
1.4.recipe_system
    主な機能はクラフトモード時のクラフト可能判定の処理です。
1.4.1.output
      tick.mcfunctionから毎tick実行されるように設定されています。
      主な機能はクラフト可能かの検知の処理です。
      
2.コマンドの実行サンプル
2.1.コマンド本
/give @p written_book{display:{Name:'{"text":"コマンド本","color":"light_purple","italic":false}',Lore:['{"text":"レシピ追加データパックのコマンド本です","color":"aqua","italic":false}']},title:"",author:"制作者：赤シャツ",generation:0,pages:['[{"text":"【コマンド本】\\n","color":"dark_blue","italic":false},{"text":"プレイヤー全員のチャット欄にレシピ削除ボタンを表示する\\n","color":"dark_green","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/execute as @a run function advanced_craft:recipe_edit/general/delete_recipe/delete_chat"}},{"text":"自分のチャット欄にレシピ削除ボタンを表示する\\n","color":"light_purple","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/function advanced_craft:recipe_edit/general/delete_recipe/delete_chat"}},{"text":"レシピを全て削除する\\n","color":"red","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/function advanced_craft:recipe_edit/general/delete_recipe/delete_all"}},{"text":"※コマンド本操作にはOP権限が必要です","color":"black","italic":false}]','{"text":""}']} 1

