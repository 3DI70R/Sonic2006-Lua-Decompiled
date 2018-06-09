CrisisCity.Sonic = inherits_from(ActionStage)
CrisisCity.Sonic.scripts = {
  "scripts/stage/csc/a_sonic.lua",
  "scripts/stage/csc/b_sonic.lua",
  "scripts/stage/csc/c_sonic.lua",
  "scripts/stage/csc/e_sonic.lua",
  "scripts/stage/csc/b_tag.lua"
}
function CrisisCity.Sonic.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct CrisisCity.Sonic")
  _ARG_0_.areas = {
    ["Area A"] = CrisisCity.SonicA,
    ["Area B"] = CrisisCity.SonicB,
    ["Area C"] = CrisisCity.SonicC,
    ["Area E"] = CrisisCity.SonicE,
    ["Area B(Tag)"] = CrisisCity.TagB
  }
  _ARG_0_.area = "Area A"
end
function CrisisCity.Sonic.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("CrisisCity.Sonic:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_csc.plc")
  })
end
function CrisisCity.Sonic.StageTitle(_ARG_0_)
  return nil
end
function CrisisCity.Sonic.PlayerReachesTheGoal(_ARG_0_, _ARG_1_)
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
function CrisisCity.Sonic.GetRankTable(_ARG_0_)
  return {
    27000,
    25000,
    20000,
    18000
  }
end
