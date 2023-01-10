function gui:render/entity/summon

execute store success score $named gui.slot run data get storage gui:slot current.item.tag.display.Name

data modify entity 1674b3a8-0135-a32e-02a4-06fb01241978 HandItems[0] set from storage gui:slot current.item
execute unless data storage gui:slot {current:{empty:true}} run item modify entity 1674b3a8-0135-a32e-02a4-06fb01241978 weapon.mainhand gui:render/item
function #gui:render/entity
execute as 1674b3a8-0135-a32e-02a4-06fb01241978 run function #gui:render/item