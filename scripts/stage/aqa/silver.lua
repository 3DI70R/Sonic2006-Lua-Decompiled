AquaticBase.Silver = inherits_from(ActionStage)
AquaticBase.Silver.scripts = {
  "scripts/stage/aqa/a_Silver.lua",
  "scripts/stage/aqa/b_Silver.lua"
}
function AquaticBase.Silver.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct AquaticBase.Silver")
  _ARG_0_.areas = {
    ["Area A"] = AquaticBase.SilverA,
    ["Area B"] = AquaticBase.SilverB
  }
  _ARG_0_.area = "Area A"
end
function AquaticBase.Silver.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("AquaticBase.Silver:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_aqa.plc")
  })
end
