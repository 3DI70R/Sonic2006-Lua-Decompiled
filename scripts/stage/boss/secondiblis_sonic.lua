Boss.SecondIblisSonicArea = inherits_from(ActionArea)
function Boss.SecondIblisSonicArea.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct SecondIblisSonicArea")
end
function Boss.SecondIblisSonicArea.Setup(_ARG_0_)
  Game.Log("Area setup")
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/boss/secondiblis_flc/"),
    Game.LoadStageSet("placement/boss/secondiblis/set_secondiblis_sonic.XML"),
    Game.LoadPath("placement/boss/secondiblis/path_secondiblis_sonic"),
    Game.LoadStageSet("placement/boss/secondiblis/iblis02_map_effects.XML", "particle"),
    Game.LoadParticle("particle/map_iblis02.plc"),
    Game.LoadParticle("particle/map_flc.plc"),
    Game.LoadSceneParams("scripts/stage/boss/scene_secondiblis.lua"),
    Game.LoadSoundBank("sound/stage_flc"),
    Game.LoadVoiceBank("sound/voice_all"),
    Game.LoadVoiceBank("sound/voice_iblis2_e")
  })
  Game.SetPlayer(0, 950, 13000, 180, "sonic_new.lua")
  Game.SetGenArea({
    size = {
      500 * 100,
      250 * 100,
      500 * 100
    }
  })
  Game.PlayBGM("boss_iblis01")
end
function Boss.SecondIblisSonicArea.boss_is_dead(_ARG_0_, _ARG_1_)
  Game.Log("called boss_is_dead")
  _ARG_0_._stage:ChangeState("clear")
end
function Boss.SecondIblisSonicArea.cage01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage01")
end
function Boss.SecondIblisSonicArea.call_enemy01(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper02")
end
function Boss.SecondIblisSonicArea.call_enemy02(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper03")
end
function Boss.SecondIblisSonicArea.call_enemy03(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper04")
end
function Boss.SecondIblisSonicArea.call_enemy04(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper05")
end
Boss.SecondIblisSonic = inherits_from(ActionStage)
function Boss.SecondIblisSonic.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  _ARG_0_.areas = {
    ["Area A"] = Boss.SecondIblisSonicArea
  }
  _ARG_0_.area = "Area A"
  Game.Log("construct Boss.SecondIblisSonic")
end
function Boss.SecondIblisSonic.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("Boss.SecondIblisSonic setup")
end
function Boss.SecondIblisSonic.StartPlaying(_ARG_0_)
end
function Boss.SecondIblisSonic.StageTitle(_ARG_0_)
  return CreateTask("stagetitle", {
    stagename = "SecondIblisSonic"
  })
end
function Boss.SecondIblisSonic.PlayerReachesTheGoal(_ARG_0_, _ARG_1_)
  Game.Log("Reaches The Goal!")
  _ARG_0_:MissionComplete()
  Game.Log((Game.PlayerIndexToActorID(_ARG_1_.player_no)))
  Game.ProcessMessage("PLAYER", "PlayerGoal", {
    transform = {
      t = {
        -6928,
        458,
        4041
      },
      r = quat.yrot(150)
    }
  })
  Game.ProcessMessage("LEVEL", "FixCamera", {
    eye = {
      -7428,
      458,
      4041
    },
    target = {
      -6928,
      458,
      4041
    }
  })
  _ARG_0_:ChangeState("clear")
end
function Boss.SecondIblisSonic.GetRankTable(_ARG_0_)
  return {
    27000,
    25000,
    20000,
    18000
  }
end
