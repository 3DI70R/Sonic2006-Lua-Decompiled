FlameCore.Shadow = inherits_from(ActionStage)
FlameCore.Shadow.scripts = {
  "scripts/stage/flc/a_shadow.lua",
  "scripts/stage/flc/b_shadow.lua"
}
function FlameCore.Shadow.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct FlameCore.Shadow")
  _ARG_0_.areas = {
    ["Area A"] = FlameCore.ShadowA,
    ["Area B"] = FlameCore.ShadowB
  }
  _ARG_0_.area = "Area A"
end
function FlameCore.Shadow.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("FlameCore.Shadow:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_flc.plc")
  })
end
function FlameCore.Shadow.StageTitle(_ARG_0_)
  return CreateTask("stagetitle", {stagename = "FRAME CORE"})
end
function FlameCore.Shadow.PlayerReachesTheGoal(_ARG_0_, _ARG_1_)
  Game.Log("Reaches The Goal!")
  _ARG_0_:MissionComplete()
  Game.Log((Game.PlayerIndexToActorID(_ARG_1_.player_no)))
  Game.ProcessMessage("PLAYER", "PlayerGoal", {
    transform = {
      t = {
        18768.166,
        -5764.842,
        4855.472
      },
      r = quat.yrot(150)
    }
  })
  Game.ProcessMessage("LEVEL", "FixCamera", {
    eye = {
      17737.34,
      -5764.842,
      4855.472
    },
    target = {
      18768.166,
      -5764.842,
      4855.472
    }
  })
  _ARG_0_:ChangeState("clear")
end
function FlameCore.Shadow.GetRankTable(_ARG_0_)
  return {
    27000,
    25000,
    20000,
    18000
  }
end
