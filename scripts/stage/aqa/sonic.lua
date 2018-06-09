AquaticBase.Sonic = inherits_from(ActionStage)
AquaticBase.Sonic.scripts = {
  "scripts/stage/aqa/a_sonic.lua",
  "scripts/stage/aqa/b_sonic.lua",
  "scripts/stage/aqa/a_tag.lua"
}
function AquaticBase.Sonic.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct AquaticBase.Sonic")
  _ARG_0_.areas = {
    ["Area A"] = AquaticBase.SonicA,
    ["Area B"] = AquaticBase.SonicB,
    ["Area A(Tag)"] = AquaticBase.TagA
  }
  _ARG_0_.area = "Area A"
end
function AquaticBase.Sonic.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("AquaticBase.Sonic:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_aqa.plc")
  })
end
