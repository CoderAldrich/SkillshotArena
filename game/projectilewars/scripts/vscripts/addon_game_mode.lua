-- Generated from template




-- This is the entry-point to your game mode and should be used primarily to precache models/particles/sounds/etc

require('internal/util')
require('gamemode')
require('typescript')


function Precache( context )
  --[[
    This function is used to precache resources/units/items/abilities that will be needed
    for sure in your game and that will not be precached by hero selection.  When a hero
    is selected from the hero selection screen, the game will precache that hero's assets,
    any equipped cosmetics, and perform the data-driven precaching defined in that hero's
    precache{} block, as well as the precache{} block for any equipped abilities.

    See GameMode:PostLoadPrecache() in gamemode.lua for more information
    ]]

  DebugPrint("[BAREBONES] Performing pre-load precache")
  


  PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_pudge.vsndevts", context)
  PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_rattletrap.vsndevts", context)
  PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_phantom_assassin.vsndevts", context)
  PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_puck.vsndevts", context)
  PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_keeper_of_the_lightvsndevts", context)
  PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_bounty_hunter.vsndevts", context)
  PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_tiny.vsndevts", context)
  PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_faceless_void.vsndevts", context)
  PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_axe.vsndevts", context)
  PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_mirana.vsndevts", context)
  PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_meepo.vsndevts", context)

  PrecacheResource("particle","particles/abilities/earthbind/meepo_earthbind_projectile_fx.vpcf",context)
  PrecacheResource("particle","particles/units/heroes/hero_bounty_hunter/bounty_hunter_suriken_toss.vpcf",context)
  PrecacheResource("particle","particles/abilities/rocket_flare/rattletrap_rocket_flare.vpcf",context)


end

-- Create the game mode when we activate
function Activate()
  GameRules.GameMode = GameMode()
  GameRules.GameMode:_InitGameMode()


end