data modify storage gui:slot current set from storage gui:page template[0]
data remove storage gui:page template[0]

execute store result score $current gui.slot run data get storage gui:slot current.slot

function #gui:render/slot
function gui:render/display

execute store result score $size gui.render run data get storage gui:page template
execute if score $size gui.render matches 1.. run function gui:render/iterate