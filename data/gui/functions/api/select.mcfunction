execute store success score @s gui.select run clear @s #taglib:all{gui:true}
execute if score @s gui.select matches 1.. unless data storage gui:private {lock:true} run function gui:select/init