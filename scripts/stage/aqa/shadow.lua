AquaticBase.Shadow = inherits_from(ActionStage)
AquaticBase.Shadow.scripts = {
  "scripts/stage/aqa/a_Shadow.lua",
  "scripts/stage/aqa/b_Shadow.lua"
}
function AquaticBase.Shadow.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct AquaticBase.Shadow")
  _ARG_0_.areas = {
    ["Area A"] = AquaticBase.ShadowA,
    ["Area B"] = AquaticBase.ShadowB
  }
  _ARG_0_.area = "Area A"
end
function AquaticBase.Shadow.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("AquaticBase.Shadow:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_aqa.plc")
  })
end
