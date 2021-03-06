declare interface _G {
  [key: string]: any
}
declare const _G:_G

declare function GetRandomItemName():string

/** !NoClassOr */
declare abstract class base_ability extends CDOTA_Ability_Lua {
  startPos:Vec
  endPos:Vec
  points:Vec[]
  //These functions should/could be overridden
  GetProjectileParticleName():string
  GetProjectileWallBehavior():ProjectileInteractionType
  GetProjectileTreeBehavior():ProjectileInteractionType
  GetProjectileUnitBehavior():ProjectileInteractionType
  GetProjectileItemBehavior():ProjectileInteractionType
  GetProjectileProjectileBehavior():ProjectileInteractionType
  GetProjectileControlPoint():number
  destroyImmediatly():boolean
  GetSound():string
  OnSpellDodged(caster,target):void
  UnitTest(projectile:PhysicsProjectile, unit:CDOTA_BaseNPC,caster:CDOTA_BaseNPC):boolean
  OnProjectileHitUnit(projectile:PhysicsProjectile,target:CBaseEntity,caster:CDOTA_BaseNPC):void
  OnProjectileHitWall(projectile:PhysicsProjectile,wall:CBaseEntity):void
  OnProjectileHitTree(projectile:PhysicsProjectile,tree:CDOTA_MapTree):void
  OnProjectileHitItem(projectile:PhysicsProjectile,item:CDOTA_Item_Physical):void
  OnProjectileThink(projectile:PhysicsProjectile,location:Vec):void
  OnProjectileFinish(projecttile:PhysicsProjectile):void
  OnSpellStart():void
  OnSpellStarted():void
  GetSpawnOrigin():Vec
  GetProjectileRange():number 
  HitsItems():boolean
  OnOwnerSpawned():void

  GetCastSoundRadius():number
  ConsumeCharge():boolean
  GetCastPoint():number
  GetCastRange():number
  GetProjectileSpeed():number
  GetCooldown(level:number):number
  CanBeSilenced():boolean
  IsSilenced():boolean
  SetSilenceEndTime(duration:number):void

  OnUpgrade():void
  OnAbilityPhaseStart():boolean
  OnAbilityPhaseInterrupted():void
  ShouldHitThisTeam(unit:CBaseEntity)
  GetPlaybackRateOverride():number

  SetConsumable(b:boolean):void
  IsConsumable():boolean

  OnSpellStart():void
}

/** !NoClassOr */
declare abstract class item_base_item extends CDOTA_Item_Lua {
  OnItemEquip(caster:CDOTA_BaseNPC_Hero):void
}


/** !NoClassOr */
declare abstract class item_base_rune extends CDOTA_Item_Lua {
  OnItemEquip(caster:CDOTA_BaseNPC_Hero):void
}

/** !NoClassOr */
declare abstract class modifier_charges_base_item extends CDOTA_Modifier_Lua {
   OnFunctionalEnd():void
}

/** !CompileMembersOnly */
declare enum ItemDropRarity {
  ITEM_DROP_CHANCE_COMMON = 10,
  ITEM_DROP_CHANCE_UNCOMMON = 5,
  ITEM_DROP_CHANCE_RARE = 3,
  ITEM_DROP_CHANCE_LEGENDARY = 1,
  ITEM_DROP_CHANCE_TOTAL = 19,
}

