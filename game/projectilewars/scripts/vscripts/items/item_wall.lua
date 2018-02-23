require("typescript_lualib")
require("items/base_item")
LinkLuaModifier("modifier_charges_wall","items/item_wall.lua",LUA_MODIFIER_MOTION_NONE)
item_spell_wall = item_base_item.new()
item_spell_wall.__index = item_spell_wall
item_spell_wall.__base = item_base_item
function item_spell_wall.new(construct, ...)
    local instance = setmetatable({}, item_spell_wall)
    if construct and item_spell_wall.constructor then item_spell_wall.constructor(instance, ...) end
    return instance
end
modifier_charges_wall = modifier_charges_base_item.new()
modifier_charges_wall.__index = modifier_charges_wall
modifier_charges_wall.__base = modifier_charges_base_item
function modifier_charges_wall.new(construct, ...)
    local instance = setmetatable({}, modifier_charges_wall)
    if construct and modifier_charges_wall.constructor then modifier_charges_wall.constructor(instance, ...) end
    return instance
end
