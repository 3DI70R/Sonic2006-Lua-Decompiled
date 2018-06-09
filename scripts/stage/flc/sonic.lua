FlameCore.Sonic = inherits_from(ActionStage)
FlameCore.Sonic.scripts = {
  "scripts/stage/flc/a_sonic.lua",
  "scripts/stage/flc/b_sonic.lua",
  "scripts/stage/flc/a_tag.lua"
}
function FlameCore.Sonic.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct FlameCore.Sonic")
  _ARG_0_.areas = {
    ["Area A"] = FlameCore.SonicA,
    ["Area B"] = FlameCore.SonicB,
    ["Area A(Tag)"] = FlameCore.TagA
  }
  _ARG_0_.area = "Area A"
end
function FlameCore.Sonic.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("FlameCore.Sonic:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_flc.plc")
  })
end
function FlameCore.Sonic.StageTitle(_ARG_0_)
  return nil
end
function FlameCore.Sonic.PlayerReachesTheGoal(_ARG_0_, _ARG_1_)
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
function FlameCore.Sonic.GetRankTable(_ARG_0_)
  return {
    27000,
    25000,
    20000,
    18000
  }
end
