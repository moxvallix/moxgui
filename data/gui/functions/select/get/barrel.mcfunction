data modify storage gui:private inventory set from block ~ ~ ~ Items
function gui:select/get/snapshot
scoreboard players set @s gui.selection -1
execute unless data block ~ ~ ~ Items[{Slot:0b}] unless data storage gui:page template[{slot:0b,empty:true}] run scoreboard players set @s gui.selection 0
execute unless data block ~ ~ ~ Items[{Slot:1b}] unless data storage gui:page template[{slot:1b,empty:true}] run scoreboard players set @s gui.selection 1
execute unless data block ~ ~ ~ Items[{Slot:2b}] unless data storage gui:page template[{slot:2b,empty:true}] run scoreboard players set @s gui.selection 2
execute unless data block ~ ~ ~ Items[{Slot:3b}] unless data storage gui:page template[{slot:3b,empty:true}] run scoreboard players set @s gui.selection 3
execute unless data block ~ ~ ~ Items[{Slot:4b}] unless data storage gui:page template[{slot:4b,empty:true}] run scoreboard players set @s gui.selection 4
execute unless data block ~ ~ ~ Items[{Slot:5b}] unless data storage gui:page template[{slot:5b,empty:true}] run scoreboard players set @s gui.selection 5
execute unless data block ~ ~ ~ Items[{Slot:6b}] unless data storage gui:page template[{slot:6b,empty:true}] run scoreboard players set @s gui.selection 6
execute unless data block ~ ~ ~ Items[{Slot:7b}] unless data storage gui:page template[{slot:7b,empty:true}] run scoreboard players set @s gui.selection 7
execute unless data block ~ ~ ~ Items[{Slot:8b}] unless data storage gui:page template[{slot:8b,empty:true}] run scoreboard players set @s gui.selection 8
execute unless data block ~ ~ ~ Items[{Slot:9b}] unless data storage gui:page template[{slot:9b,empty:true}] run scoreboard players set @s gui.selection 9
execute unless data block ~ ~ ~ Items[{Slot:10b}] unless data storage gui:page template[{slot:10b,empty:true}] run scoreboard players set @s gui.selection 10
execute unless data block ~ ~ ~ Items[{Slot:11b}] unless data storage gui:page template[{slot:11b,empty:true}] run scoreboard players set @s gui.selection 11
execute unless data block ~ ~ ~ Items[{Slot:12b}] unless data storage gui:page template[{slot:12b,empty:true}] run scoreboard players set @s gui.selection 12
execute unless data block ~ ~ ~ Items[{Slot:13b}] unless data storage gui:page template[{slot:13b,empty:true}] run scoreboard players set @s gui.selection 13
execute unless data block ~ ~ ~ Items[{Slot:14b}] unless data storage gui:page template[{slot:14b,empty:true}] run scoreboard players set @s gui.selection 14
execute unless data block ~ ~ ~ Items[{Slot:15b}] unless data storage gui:page template[{slot:15b,empty:true}] run scoreboard players set @s gui.selection 15
execute unless data block ~ ~ ~ Items[{Slot:16b}] unless data storage gui:page template[{slot:16b,empty:true}] run scoreboard players set @s gui.selection 16
execute unless data block ~ ~ ~ Items[{Slot:17b}] unless data storage gui:page template[{slot:17b,empty:true}] run scoreboard players set @s gui.selection 17
execute unless data block ~ ~ ~ Items[{Slot:18b}] unless data storage gui:page template[{slot:18b,empty:true}] run scoreboard players set @s gui.selection 18
execute unless data block ~ ~ ~ Items[{Slot:19b}] unless data storage gui:page template[{slot:19b,empty:true}] run scoreboard players set @s gui.selection 19
execute unless data block ~ ~ ~ Items[{Slot:20b}] unless data storage gui:page template[{slot:20b,empty:true}] run scoreboard players set @s gui.selection 20
execute unless data block ~ ~ ~ Items[{Slot:21b}] unless data storage gui:page template[{slot:21b,empty:true}] run scoreboard players set @s gui.selection 21
execute unless data block ~ ~ ~ Items[{Slot:22b}] unless data storage gui:page template[{slot:22b,empty:true}] run scoreboard players set @s gui.selection 22
execute unless data block ~ ~ ~ Items[{Slot:23b}] unless data storage gui:page template[{slot:23b,empty:true}] run scoreboard players set @s gui.selection 23
execute unless data block ~ ~ ~ Items[{Slot:24b}] unless data storage gui:page template[{slot:24b,empty:true}] run scoreboard players set @s gui.selection 24
execute unless data block ~ ~ ~ Items[{Slot:25b}] unless data storage gui:page template[{slot:25b,empty:true}] run scoreboard players set @s gui.selection 25
execute unless data block ~ ~ ~ Items[{Slot:26b}] unless data storage gui:page template[{slot:26b,empty:true}] run scoreboard players set @s gui.selection 26

