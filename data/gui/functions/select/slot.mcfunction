scoreboard players set $size gui.select 0

execute store result score $current gui.slot run data get storage gui:slot current.slot

execute as @s run function #gui:select/slot

function gui:select/state/write