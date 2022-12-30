scoreboard players set $size gui.select 0

execute store result score $current gui.slot run data get storage gui:slot current.slot

execute as @s[type=player] run function #gui:select/slot
execute as @s[type=!player] as @a[tag=gui.target,limit=1,sort=nearest] run function #gui:select/slot