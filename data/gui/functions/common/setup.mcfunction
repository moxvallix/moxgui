# Lock data, and schedule reset in case of function failure
data modify storage gui:private lock set value true
schedule function gui:api/reset 1t