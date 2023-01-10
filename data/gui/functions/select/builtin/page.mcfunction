execute if data storage gui:slot current.page run execute store result score @s gui.page run data get storage gui:slot current.page

execute if data storage gui:slot current.page.click run execute store result score @s gui.page run data get storage gui:slot current.page.click
execute if data storage gui:page {flags:{shifted:true}} if data storage gui:slot current.page.shift run execute store result score @s gui.page run data get storage gui:slot current.page.shift
execute if data storage gui:page {flags:{offhanded:true}} if data storage gui:slot current.page.offhand run execute store result score @s gui.page run data get storage gui:slot current.page.offhand

execute if data storage gui:slot {current:{page:"menu"}} run execute store result score @s gui.page run data get storage gui:config menu