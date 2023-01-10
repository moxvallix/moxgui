execute unless data storage gui:slot {current:{empty:true}} run function gui:render/display/defaults
execute if data storage gui:slot current.item run function gui:render/display/item
execute unless data storage gui:slot current.item run function gui:render/display/empty