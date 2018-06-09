Other.GameShowShadow = inherits_from(ActionArea)
function Other.GameShowShadow.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.GameShowShadow")
end
function Other.GameShowShadow.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/kdv/b/"),
    Game.LoadStageSet("placement/kdv/set_kdv_b_Shadow.XML"),
    Game.LoadStageSet("placement/kdv/kdv_mapB_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_b.lua"),
    Game.LoadStageSet("placement/kdv/dset_kdv_b_Sonic.XML", "pathobj"),
    Game.LoadPath("placement/kdv/kdv_s_b"),
    Game.LoadCameraSet("placement/kdv/set_kdv_b_Shadow.XML"),
    Game.LoadSoundBank("sound/stage_kdv"),
    Game.LoadVoiceBank("sound/voice_kdv_e"),
    Game.PlayBGM("stg_kdv_b")
  })
  Game.SetPlayer(-22612, 12458, -26085, 300, "Shadow_new.lua")
end
function Other.GameShowShadow.goto_c(_ARG_0_, _ARG_1_)
  _ARG_0_:ChangeArea("Area C")
end
function Other.GameShowShadow.brake01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics43")
  Game.Signal("impulsesphere01")
end
function Other.GameShowShadow.brake02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics52")
  Game.Signal("impulsesphere02")
end
function Other.GameShowShadow.brake03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics03")
  Game.Signal("objectphysics02")
end
function Other.GameShowShadow.brake04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics87")
  Game.Signal("objectphysics88")
end
function Other.GameShowShadow.brake05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics89")
  Game.Signal("objectphysics90")
end
function Other.GameShowShadow.brake06(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge01")
end
function Other.GameShowShadow.brake07(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge02")
end
function Other.GameShowShadow.door01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("kdv_door01")
end
function Other.GameShowShadow.door02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("kdv_door02")
end
function Other.GameShowShadow.door03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("kdv_door03")
end
function Other.GameShowShadow.door04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("kdv_door04")
end
function Other.GameShowShadow.brake05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics51")
  Game.Signal("impulsesphere03")
end
