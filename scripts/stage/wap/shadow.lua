WhiteAcropolis.Shadow = inherits_from(ActionStage)
WhiteAcropolis.Shadow.scripts = {
  "scripts/stage/wap/a_shadow.lua",
  "scripts/stage/wap/b_shadow.lua"
}
function WhiteAcropolis.Shadow.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct WhiteAcropolis.Shadow")
  _ARG_0_.areas = {
    ["Area A"] = WhiteAcropolis.ShadowA,
    ["Area B"] = WhiteAcropolis.ShadowB
  }
  _ARG_0_.area = "Area B"
end
function WhiteAcropolis.Shadow.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("WhiteAcropolis.Shadow:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_wap.plc")
  })
end
