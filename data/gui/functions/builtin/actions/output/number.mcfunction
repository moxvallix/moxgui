data modify storage moxlib:api/math/array_to_integer target set from storage gui:page state.input
function moxlib:api/math/array_to_integer

execute store result score $number gui.builtin run data get storage moxlib:api/math/array_to_integer output
execute if data storage gui:page {state:{inverted:true}} run scoreboard players operation $number gui.builtin *= $-1 moxlib.api.math.constants

execute store result storage gui:action current int 1 run scoreboard players get $number gui.builtin