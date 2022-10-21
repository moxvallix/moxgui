# Remove scheduled reset as un-necessary

schedule clear gui:api/reset
data modify storage gui:private lock set value false