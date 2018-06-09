Town.Sonic = inherits_from(ActionStage)
Town.Sonic.scripts = {
  "scripts/stage/twn/a_sonic.lua",
  "scripts/stage/twn/b_sonic.lua",
  "scripts/stage/twn/c_sonic.lua",
  "scripts/stage/twn/d_sonic.lua"
}
function Town.Sonic.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct Town.Sonic")
  _ARG_0_.areas = {
    ["Area A"] = Town.SonicA,
    ["Area B"] = Town.SonicB,
    ["Area C"] = Town.SonicC,
    ["Area D"] = Town.SonicD
  }
  _ARG_0_.area = "Area A"
end
function Town.Sonic.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("Town.Sonic:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_twn.plc"),
    Game.LoadSoundBank("sound/stage_twn")
  })
end
