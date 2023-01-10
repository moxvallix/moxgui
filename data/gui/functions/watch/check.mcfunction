execute if predicate gui:inventory run data modify storage gui:page flags merge value {shifted:true}
execute if predicate gui:offhand run data modify storage gui:page flags merge value {offhanded:true}
execute store success score @s gui.select run clear @s #taglib:all{gui:true}