require("typescript_lualib")
require("abilities/base_ability")
shoot_ = base_ability.new()
shoot_.__index = shoot_
shoot_.__base = base_ability
function shoot_.new(construct, ...)
    local instance = setmetatable({}, shoot_)
    if construct and shoot_.constructor then shoot_.constructor(instance, ...) end
    return instance
end
function shoot_.CastFilterResult(self)
    if CDOTA_BaseNPC.IsDisarmed(CDOTABaseAbility.GetCaster(self)) then
        return UF_FAIL_CUSTOM
    end
    return UF_SUCCESS
end
function shoot_.GetCustomCastError(self)
    if CDOTA_BaseNPC.IsRooted(CDOTABaseAbility.GetCaster(self)) then
        return "#Can't attack while rooted."
    end
end
function shoot_.GetProjectileSpeed(self)
    return 900
end
function shoot_.GetPlaybackRateOverride(self)
    return 2
end
function shoot_.destroyImmediatly(self)
    return false
end
function shoot_.GetCastRange(self)
    return CDOTA_BaseNPC.GetAttackRange(CDOTABaseAbility.GetCaster(self))*1.33
end
function shoot_.GetSound(self)
    return "Hero_Windrunner.Attack"
end
function shoot_.GetProjectileRange(self)
    return CDOTA_BaseNPC.GetAttackRange(CDOTABaseAbility.GetCaster(self))*1.33
end
function shoot_.GetProjectileParticleName(self)
    return CDOTA_BaseNPC.GetRangedProjectileName(CDOTABaseAbility.GetCaster(self))
end
function shoot_.GetProjectileUnitBehavior(self)
    return PROJECTILES_NOTHING
end
function shoot_.GetProjectileProjectileBehavior(self)
    return PROJECTILES_NOTHING
end
function shoot_.GetProjectileWallBehavior(self)
    return PROJECTILES_BOUNCE
end
function shoot_.GetProjectileItemBehavior(self)
    return PROJECTILES_NOTHING
end
function shoot_.GetProjectileTreeBehavior(self)
    return PROJECTILES_DESTROY
end
function shoot_.OnProjectileHitUnit(self,projectile,unit,caster)
    local range = CDOTA_BaseNPC.GetAttackRange(CDOTABaseAbility.GetCaster(self))

    local mult = 650/range

    mult=(0.5+(mult/2))
    local damageTable = {damage=CDOTABaseAbility.GetSpecialValueFor(self,"damage")*mult,victim=unit,attacker=CDOTABaseAbility.GetCaster(self),ability=self,damage_type=DAMAGE_TYPE_PHYSICAL}

    ApplyDamage(damageTable)
end
