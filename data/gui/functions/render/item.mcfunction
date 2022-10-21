function gui:render/entity/summon

execute unless data storage gui:slot current.item.Count run data modify storage gui:slot current.item.Count set value 1b
execute unless data storage gui:slot current.item.id run data modify storage gui:slot current.item.id set from storage gui:config default_item

execute store success score $named gui.slot run data get storage gui:slot current.item.tag.display.Name

data modify entity 1674b3a8-0135-a32e-02a4-06fb01241978 HandItems[0] set from storage gui:slot current.item
item modify entity 1674b3a8-0135-a32e-02a4-06fb01241978 weapon.mainhand gui:render/item
execute as 1674b3a8-0135-a32e-02a4-06fb01241978 run function #gui:render/item