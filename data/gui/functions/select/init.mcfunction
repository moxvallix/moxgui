data modify storage gui:private lock set value true

function #gui:cleanup
function #gui:index

function gui:select/get
execute if score @s gui.selection matches 0.. run function gui:select/iterate
function gui:render/init

data modify storage gui:private lock set value false