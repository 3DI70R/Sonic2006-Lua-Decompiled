TropicalJungle.Sonic = inherits_from(ActionStage)
TropicalJungle.Sonic.scripts = {
  "scripts/stage/tpj/a_sonic.lua",
  "scripts/stage/tpj/b_sonic.lua"
}
function TropicalJungle.Sonic.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct TropicalJungle.Sonic")
  _ARG_0_.areas = {
    ["Area A"] = TropicalJungle.SonicA,
    ["Area B"] = TropicalJungle.SonicB
  }
  _ARG_0_.area = "Area A"
end
function TropicalJungle.Sonic.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("TropicalJungle.Sonic:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_tpj.plc")
  })
end
function TropicalJungle.Sonic.PlayerReachesTheGoal(_ARG_0_, _ARG_1_)
  Game.Log("Reaches The Goal!")
  _ARG_0_:MissionComplete()
  Game.Log((Game.PlayerIndexToActorID(_ARG_1_.player_no)))
  Game.ProcessMessage(Game.PlayerIndexToActorID(_ARG_1_.player_no), "PlayerGoal", {
    transform = {
      t = {
        -11913,
        2983.302,
        -11168
      },
      r = quat.yrot(150)
    }
  })
  Game.ProcessMessage("LEVEL", "FixCamera", {
    eye = {
      -11749,
      3050,
      -11094
    },
    target = {
      -11913,
      3055,
      -11168
    }
  })
  _ARG_0_:ChangeState("clear")
end
function TropicalJungle.Sonic.GetRankTable(_ARG_0_)
  return {
    27000,
    25000,
    20000,
    18000
  }
end
