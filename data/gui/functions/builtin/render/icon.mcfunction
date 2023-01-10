data modify storage moxlib:api/data/get target set from storage gui:page theme
data modify storage moxlib:api/data/get key.id set from storage gui:slot current.icon

function moxlib:api/data/get

data modify storage gui:slot current.item merge from storage moxlib:api/data/get output.item