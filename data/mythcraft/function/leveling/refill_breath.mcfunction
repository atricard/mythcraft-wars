data modify storage mythcraft:kit breath set from entity @s Inventory[{id: "minecraft:glass_bottle",components:{"minecraft:custom_data":{mythcraft_breathempty:1b}}}].Slot
data modify storage mythcraft:kit breath set from entity @s Inventory[{id: "minecraft:dragon_breath",components:{"minecraft:custom_data":{mythcraft_breathspell:1b}}}].Slot
execute if items entity @s container.* minecraft:dragon_breath run function mythcraft:leveling/items/breath with storage mythcraft:kit
execute if items entity @s container.* minecraft:glass_bottle at @s run playsound minecraft:block.respawn_anchor.charge master @s ~ ~ ~
execute if items entity @s container.* minecraft:glass_bottle run function mythcraft:leveling/items/breath with storage mythcraft:kit