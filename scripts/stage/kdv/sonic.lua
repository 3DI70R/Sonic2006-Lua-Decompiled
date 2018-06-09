KingdomValley.Sonic = inherits_from(ActionStage)
KingdomValley.Sonic.scripts = {
  "scripts/stage/kdv/a_sonic.lua",
  "scripts/stage/kdv/b_sonic.lua",
  "scripts/stage/kdv/c_sonic.lua",
  "scripts/stage/kdv/d_sonic.lua",
  "scripts/stage/kdv/a_tag.lua"
}
function KingdomValley.Sonic.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct KingdomValley.Sonic")
  _ARG_0_.areas = {
    ["Area A"] = KingdomValley.SonicA,
    ["Area B"] = KingdomValley.SonicB,
    ["Area C"] = KingdomValley.SonicC,
    ["Area D"] = KingdomValley.SonicD,
    ["Area A(Tag)"] = KingdomValley.TagA
  }
  _ARG_0_.area = "Area A"
  _ARG_0_.result_name = 0
end
function KingdomValley.Sonic.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("KingdomValley.Sonic:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_kdv.plc")
  })
end
function KingdomValley.Sonic.StageTitle(_ARG_0_)
  return CreateTask("stagetitle", {
    stagename = "KINGDOM VOLLEY"
  })
end
function KingdomValley.Sonic.PlayerReachesTheGoal(_ARG_0_, _ARG_1_)
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
function KingdomValley.Sonic.GetRankTable(_ARG_0_)
  return {
    27000,
    25000,
    20000,
    18000
  }
end
