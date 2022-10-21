scoreboard players set $size gui.select 0

execute store result score $current gui.slot run data get storage gui:slot current.slot
function #gui:select/slot

execute if data storage gui:slot current.page run execute store result score @s gui.page run data get storage gui:slot current.page