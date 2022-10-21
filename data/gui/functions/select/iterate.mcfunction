data modify storage gui:slot current set from storage gui:page template[0]
data remove storage gui:page template[0]

execute store result score $slot gui.select run data get storage gui:slot current.slot
execute if score $slot gui.select = @s gui.selection run function gui:select/slot

execute store result score $size gui.select run data get storage gui:page template

execute if score $size gui.select matches 1.. run function gui:select/iterate