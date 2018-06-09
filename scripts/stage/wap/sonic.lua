WhiteAcropolis.Sonic = inherits_from(ActionStage)
WhiteAcropolis.Sonic.scripts = {
  "scripts/stage/wap/a_sonic.lua",
  "scripts/stage/wap/b_sonic.lua",
  "scripts/stage/wap/c_sonic.lua",
  "scripts/stage/wap/b_tag.lua"
}
function WhiteAcropolis.Sonic.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct WhiteAcropolis.Sonic")
  _ARG_0_.areas = {
    ["Area A"] = WhiteAcropolis.SonicA,
    ["Area B"] = WhiteAcropolis.SonicB,
    ["Area C"] = WhiteAcropolis.SonicC,
    ["Area B(Tag)"] = WhiteAcropolis.TagB
  }
  _ARG_0_.area = "Area A"
end
function WhiteAcropolis.Sonic.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("WhiteAcropolis.Sonic:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_wap.plc")
  })
end
