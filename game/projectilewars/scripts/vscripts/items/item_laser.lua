require("typescript_lualib")
require("items/base_item")
LinkLuaModifier("modifier_charges_laser","items/item_laser.lua",LUA_MODIFIER_MOTION_NONE)
item_spell_laser = item_base_item.new()
item_spell_laser.__index = item_spell_laser
item_spell_laser.__base = item_base_item
function item_spell_laser.new(construct, ...)
    local instance = setmetatable({}, item_spell_laser)
    if construct and item_spell_laser.constructor then item_spell_laser.constructor(instance, ...) end
    return instance
end
modifier_charges_laser = modifier_charges_base_item.new()
modifier_charges_laser.__index = modifier_charges_laser
modifier_charges_laser.__base = modifier_charges_base_item
function modifier_charges_laser.new(construct, ...)
    local instance = setmetatable({}, modifier_charges_laser)
    if construct and modifier_charges_laser.constructor then modifier_charges_laser.constructor(instance, ...) end
    return instance
end
