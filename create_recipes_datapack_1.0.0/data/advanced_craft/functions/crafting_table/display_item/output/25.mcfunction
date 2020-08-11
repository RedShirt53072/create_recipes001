




summon item ~ ~1 ~ {Item:{id:"stone",Count:1b,tag:{CustomModelData:1}},Tags:["ADC_rep_item"],PickupDelay:3}
data modify entity @e[type=item,tag=ADC_rep_item,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:25b}]

tag @e[tag=ADC_rep_item] remove ADC_rep_item
replaceitem block ~ ~ ~ container.25 air 















