#インストール検知
scoreboard objectives add ADC_install1 dummy
scoreboard objectives add ADC_install2 dummy
scoreboard players set #ADC_install ADC_install2 2
scoreboard players add #ADC_install ADC_install1 1
execute if score #ADC_install ADC_install1 < #ADC_install ADC_install2 run schedule function advanced_craft:install 10s

scoreboard players enable @a ADCdelete_recipe



tellraw @a {"text": "[Create Recipes Datapack]:再読み込みしました"}