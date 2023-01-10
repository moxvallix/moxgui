function gui:common/setup

function #gui:select/init
function #gui:index

execute unless data storage gui:page template run function gui:warnings/404

function gui:select/get
function gui:select/state/read

function #gui:select/flags
execute if score @s gui.selection matches 0.. run function gui:select/iterate

function gui:render/init

function gui:common/cleanup