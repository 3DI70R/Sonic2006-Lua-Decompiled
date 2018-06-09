WaveOcean.Sonic = inherits_from(ActionStage)
WaveOcean.Sonic.scripts = {
  "scripts/stage/wvo/a_sonic.lua",
  "scripts/stage/wvo/b_sonic.lua",
  "scripts/stage/wvo/a_tails.lua",
  "scripts/stage/wvo/a_tag.lua"
}
function WaveOcean.Sonic.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct WaveOcean.Sonic")
  _ARG_0_.areas = {
    ["Area A"] = WaveOcean.SonicA,
    ["Area B"] = WaveOcean.SonicB,
    ["Area A(Tails)"] = WaveOcean.TailsA,
    ["Area A(Tag)"] = WaveOcean.TagA
  }
  _ARG_0_.area = "Area A"
end
function WaveOcean.Sonic.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("WaveOcean.Sonic:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_wvo.plc")
  })
end
function WaveOcean.Sonic.PlayerReachesTheGoal(_ARG_0_, _ARG_1_)
  Game.Log("Reaches The Goal!")
  _ARG_0_:MissionComplete()
  Game.Log((Game.PlayerIndexToActorID(_ARG_1_.player_no)))
  Game.ProcessMessage("PLAYER", "PlayerGoal", {
    transform = {
      t = {
        -195321.906,
        5765.012,
        -875.284
      },
      r = quat.yrot(270)
    }
  })
  Game.ProcessMessage("LEVEL", "FixCamera", {
    eye = {
      -196246.125,
      5793.758,
      -911.341
    },
    target = {
      -196118.266,
      5804.208,
      -903.58
    }
  })
  _ARG_0_:ChangeState("clear")
end
function WaveOcean.Sonic.GetRankTable(_ARG_0_)
  return {
    27000,
    25000,
    20000,
    18000
  }
end
