WaveOcean.Silver = inherits_from(ActionStage)
WaveOcean.Silver.scripts = {
  "scripts/stage/wvo/a_silver.lua"
}
function WaveOcean.Silver.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct WaveOcean.Silver")
  _ARG_0_.areas = {
    ["Area A"] = WaveOcean.SilverA
  }
  _ARG_0_.area = "Area A"
end
function WaveOcean.Silver.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("WaveOcean.Silver:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_wvo.plc")
  })
end
