Town.Silver = inherits_from(ActionStage)
Town.Silver.scripts = {
  "scripts/stage/twn/a_silver.lua",
  "scripts/stage/twn/b_silver.lua",
  "scripts/stage/twn/c_silver.lua"
}
function Town.Silver.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct Town.Silver")
  _ARG_0_.areas = {
    ["Area A"] = Town.SilverA,
    ["Area B"] = Town.SilverB,
    ["Area C"] = Town.SilverC
  }
  _ARG_0_.area = "Area A"
end
function Town.Silver.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("Town.Silver:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_twn.plc"),
    Game.LoadSoundBank("sound/stage_twn")
  })
end
