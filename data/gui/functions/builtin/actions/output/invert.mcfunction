execute if data storage gui:page {state:{inverted:true}} run data modify storage gui:private temp.inverted set value false
execute unless data storage gui:page {state:{inverted:true}} run data modify storage gui:private temp.inverted set value true
data modify storage gui:page state.inverted set from storage gui:private temp.inverted