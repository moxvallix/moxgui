execute store result score @s gui.page run data get storage gui:page state.flags.page
execute if data storage gui:slot {current:{action:"output/number"}} run function gui:builtin/actions/output/number
execute if data storage gui:action current run data modify storage gui:page flags.action set from storage gui:action current