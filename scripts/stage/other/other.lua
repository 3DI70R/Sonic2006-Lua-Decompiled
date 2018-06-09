Other.Test = inherits_from(ActionStage)
Other.Test.scripts = {
  "scripts/stage/other/test_player.lua",
  "scripts/stage/other/test_design.lua",
  "scripts/stage/other/test001.lua",
  "scripts/stage/other/test002.lua",
  "scripts/stage/other/test003.lua",
  "scripts/stage/other/test_object_wvo.lua",
  "scripts/stage/other/test_object_dtd.lua",
  "scripts/stage/other/test_object_wap.lua",
  "scripts/stage/other/test_object_csc.lua",
  "scripts/stage/other/test_object_flc.lua",
  "scripts/stage/other/test_object_tps.lua",
  "scripts/stage/other/test_object_rct.lua",
  "scripts/stage/other/test_object_kdv.lua",
  "scripts/stage/other/test_object_aqa.lua",
  "scripts/stage/other/test_object_end.lua",
  "scripts/stage/other/test_object_twn.lua",
  "scripts/stage/other/test_object_cmn.lua",
  "scripts/stage/other/test_enemy.lua",
  "scripts/stage/other/test_vehicle.lua",
  "scripts/stage/other/test_boss.lua",
  "scripts/stage/other/test_lightmap.lua",
  "scripts/stage/other/test_tag.lua",
  "scripts/stage/other/test_battle.lua",
  "scripts/stage/other/test_twn_a.lua",
  "scripts/stage/other/gameshow_sonic.lua",
  "scripts/stage/other/gameshow_shadow.lua",
  "scripts/stage/other/gameshow_silver.lua"
}
function Other.Test.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct Other.Sonic")
  _ARG_0_.areas = {
    TestPlayerSonic = Other.TestPlayerSonic,
    TestPlayerShadow = Other.TestPlayerShadow,
    TestPlayerSilver = Other.TestPlayerSilver,
    TestPlayerPrincess = Other.TestPlayerPrincess,
    TestPlayerOmega = Other.TestPlayerOmega,
    TestPlayerTails = Other.TestPlayerTails,
    TestPlayerAmy = Other.TestPlayerAmy,
    TestPlayerKnuckles = Other.TestPlayerKnuckles,
    TestPlayerBlaze = Other.TestPlayerBlaze,
    TestPlayerRouge = Other.TestPlayerRouge,
    TestPlayerSuperSonic = Other.TestPlayerSuperSonic,
    TestPlayerSuperShadow = Other.TestPlayerSuperShadow,
    TestPlayerSuperSilver = Other.TestPlayerSuperSilver,
    TestPlayerSimple = Other.TestPlayerSimple,
    test_design = Other.TestDesign,
    Test001 = Other.Test001,
    Test002 = Other.Test002,
    Test003 = Other.Test003,
    TestObjectWvo = Other.TestObjectWvo,
    TestObjectDtd = Other.TestObjectDtd,
    TestObjectWap = Other.TestObjectWap,
    TestObjectCsc = Other.TestObjectCsc,
    TestObjectFlc = Other.TestObjectFlc,
    TestObjectTps = Other.TestObjectTps,
    TestObjectRct = Other.TestObjectRct,
    TestObjectKdv = Other.TestObjectKdv,
    TestObjectAqa = Other.TestObjectAqa,
    TestObjectEnd = Other.TestObjectEnd,
    TestObjectTwn = Other.TestObjectTwn,
    TestObjectCmn = Other.TestObjectCmn,
    TestVehicle = Other.TestVehicle,
    TestEnemySonic = Other.TestEnemySonic,
    TestEnemyShadow = Other.TestEnemyShadow,
    TestEnemySilver = Other.TestEnemySilver,
    BossTest = Other.BossTest,
    TestLightmap = Other.TestLightmap,
    TestTag = Other.TestTag,
    TestBattle = Other.TestBattle,
    TestTown = Other.TestTown,
    GameShowSonic = Other.GameShowSonic,
    GameShowShadow = Other.GameShowShadow,
    GameShowSilver = Other.GameShowSilver
  }
  _ARG_0_.area = "TestPlayerSonic"
end
function Other.Test.GetName(_ARG_0_)
  return "Other.Test"
end
function Other.Test.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("Other.Sonic:Setup")
  _ARG_0_:AddComponent({})
end
function Other.Test.PlayerReachesTheGoal(_ARG_0_, _ARG_1_)
  Game.Log("Reaches The Goal!")
  Game.ProcessMessage(Game.PlayerIndexToActorID(_ARG_1_.player_no), "PlayerGoal", {
    transform = {
      t = {
        0,
        0,
        0
      },
      r = {
        0,
        0,
        0,
        1
      }
    }
  })
  _ARG_0_:ChangeState("clear")
end
