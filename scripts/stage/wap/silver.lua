WhiteAcropolis.Silver = inherits_from(ActionStage)
WhiteAcropolis.Silver.scripts = {
  "scripts/stage/wap/a_silver.lua",
  "scripts/stage/wap/b_silver.lua"
}
function WhiteAcropolis.Silver.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct WhiteAcropolis.Silver")
  _ARG_0_.areas = {
    ["Area A"] = WhiteAcropolis.SilverA,
    ["Area B"] = WhiteAcropolis.SilverB
  }
  _ARG_0_.area = "Area A"
end
function WhiteAcropolis.Silver.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("WhiteAcropolis.Silver:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_wap.plc")
  })
end
