execute store success score @s gui.select run clear @s #taglib:all{gui:true}
execute if score @s gui.select matches 1.. run function gui:api/enderchest/select