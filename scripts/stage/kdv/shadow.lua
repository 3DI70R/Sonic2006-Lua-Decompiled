KingdomValley.Shadow = inherits_from(ActionStage)
KingdomValley.Shadow.scripts = {
  "scripts/stage/kdv/a_shadow.lua",
  "scripts/stage/kdv/b_shadow.lua",
  "scripts/stage/kdv/d_shadow.lua"
}
function KingdomValley.Shadow.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct KingdomValley.Shadow")
  _ARG_0_.areas = {
    ["Area A"] = KingdomValley.ShadowA,
    ["Area B"] = KingdomValley.ShadowB,
    ["Area D"] = KingdomValley.ShadowD
  }
  _ARG_0_.area = "Area A"
  _ARG_0_.result_name = 0
end
function KingdomValley.Shadow.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("KingdomValley.Shadow:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_kdv.plc")
  })
end
function KingdomValley.Shadow.StageTitle(_ARG_0_)
  return CreateTask("stagetitle", {
    stagename = "KINGDOM VALLEY"
  })
end
function KingdomValley.Shadow.PlayerReachesTheGoal(_ARG_0_, _ARG_1_)
  Game.Log("Reaches The Goal!")
  _ARG_0_:MissionComplete()
  Game.ProcessMessage(Game.PlayerIndexToActorID(_ARG_1_.player_no), "PlayerGoal", {
    transform = {
      t = {
        -195429.906,
        5759.734,
        -858.649
      },
      r = quat.yrot(270)
    }
  })
  Game.ProcessMessage("LEVEL", "FixCamera", {
    eye = {
      -194837.031,
      5825.012,
      -989.909
    },
    target = {
      -195421.984,
      5930.918,
      -855.976
    }
  })
  _ARG_0_:ChangeState("clear")
end
