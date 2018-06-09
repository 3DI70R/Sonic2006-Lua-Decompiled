Town.Shadow = inherits_from(ActionStage)
Town.Shadow.scripts = {
  "scripts/stage/twn/a_shadow.lua",
  "scripts/stage/twn/b_shadow.lua",
  "scripts/stage/twn/c_shadow.lua",
  "scripts/stage/twn/d_shadow.lua"
}
function Town.Shadow.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct Town.Shadow")
  _ARG_0_.areas = {
    ["Area A"] = Town.ShadowA,
    ["Area B"] = Town.ShadowB,
    ["Area C"] = Town.ShadowC,
    ["Area D"] = Town.ShadowD
  }
  _ARG_0_.area = "Area A"
end
function Town.Shadow.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("Town.Shadow:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_twn.plc"),
    Game.LoadSoundBank("sound/stage_twn")
  })
end
