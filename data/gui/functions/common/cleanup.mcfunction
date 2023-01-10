# Remove scheduled reset as un-necessary

schedule clear gui:api/reset
function gui:cleanup/reset
data modify storage gui:private lock set value false
function #gui:cleanup