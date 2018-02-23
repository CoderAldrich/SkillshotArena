require("typescript_lualib")
require("items/base_item")
LinkLuaModifier("modifier_charges_homing_missile","items/item_homing_missile.lua",LUA_MODIFIER_MOTION_NONE)
item_spell_homing_missile = item_base_item.new()
item_spell_homing_missile.__index = item_spell_homing_missile
item_spell_homing_missile.__base = item_base_item
function item_spell_homing_missile.new(construct, ...)
    local instance = setmetatable({}, item_spell_homing_missile)
    if construct and item_spell_homing_missile.constructor then item_spell_homing_missile.constructor(instance, ...) end
    return instance
end
modifier_charges_homing_missile = modifier_charges_base_item.new()
modifier_charges_homing_missile.__index = modifier_charges_homing_missile
modifier_charges_homing_missile.__base = modifier_charges_base_item
function modifier_charges_homing_missile.new(construct, ...)
    local instance = setmetatable({}, modifier_charges_homing_missile)
    if construct and modifier_charges_homing_missile.constructor then modifier_charges_homing_missile.constructor(instance, ...) end
    return instance
end
