TropicalJungle.Shadow = inherits_from(ActionStage)
TropicalJungle.Shadow.scripts = {
  "scripts/stage/tpj/c_shadow.lua"
}
function TropicalJungle.Shadow.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct TropicalJungle.Shadow")
  _ARG_0_.areas = {
    ["Area C"] = TropicalJungle.ShadowC
  }
  _ARG_0_.area = "Area C"
end
function TropicalJungle.Shadow.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("TropicalJungle.Shadow:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_tpj.plc")
  })
end
function TropicalJungle.Shadow.StageTitle(_ARG_0_)
  return CreateTask("stagetitle", {
    stagename = "TROPICAL JUNGLE"
  })
end
function TropicalJungle.Shadow.PlayerReachesTheGoal(_ARG_0_, _ARG_1_)
  Game.Log("Reaches The Goal!")
  _ARG_0_:MissionComplete()
  Game.Log((Game.PlayerIndexToActorID(_ARG_1_.player_no)))
  Game.ProcessMessage("PLAYER", "PlayerGoal", {
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
function TropicalJungle.Shadow.GetRankTable(_ARG_0_)
  return {
    27000,
    25000,
    20000,
    18000
  }
end
