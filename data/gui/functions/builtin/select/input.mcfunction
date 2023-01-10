execute if data storage gui:page flags.gui.input run data modify storage gui:page state.flags set from storage gui:page flags.gui.input

execute if data storage gui:slot current.value run data modify storage gui:page state.input append from storage gui:slot current.value
execute if data storage gui:page {flags:{component:"numeric"}} run function gui:builtin/select/input/component/numeric
execute if data storage gui:slot {current:{action:"output/backspace"}} run function gui:builtin/actions/output/backspace
execute if data storage gui:slot {current:{action:"output/reset"}} run function gui:builtin/actions/output/reset
execute if data storage gui:slot {current:{action:"output/invert"}} run function gui:builtin/actions/output/invert

execute if data storage gui:slot {current:{back:true}} run function gui:builtin/select/input/back