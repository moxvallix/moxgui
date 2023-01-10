function gui:watch/check
execute if block ~ ~ ~ minecraft:barrel[open=true] run function gui:watch/barrel/guard
execute unless block ~ ~ ~ minecraft:barrel[open=true] run function gui:watch/barrel/unguard
execute if score @s gui.select matches 1.. run function gui:api/barrel/select