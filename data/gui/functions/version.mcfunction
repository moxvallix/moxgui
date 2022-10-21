data modify storage gui:version name set value "MoxGUI"

data modify storage gui:version major set value 0
data modify storage gui:version minor set value 1
data modify storage gui:version patch set value 0

tellraw @a {"nbt":"name","storage": "gui:version","extra": [{"text": " v","extra":[{"nbt":"major","storage":"gui:version","extra":[{"text":"."},{"nbt":"minor","storage":"gui:version"},{"text":".","extra":[{"nbt":"patch","storage":"gui:version"}]}]}]}]}