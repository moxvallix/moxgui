execute store result score $last_input gui.builtin run data get storage gui:page state.input[0]
execute if score $last_input gui.builtin matches 0 run data remove storage gui:page state.input[0]