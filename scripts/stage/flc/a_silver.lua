FlameCore.SilverA = inherits_from(ActionArea)
function FlameCore.SilverA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct FlameCore.SilverA")
end
function FlameCore.SilverA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("FlameCore.SilverA.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_flc_a.lua"),
    Game.LoadTerrain("stage/flc/a/"),
    Game.LoadStageSet("scripts/mission/0211/set_flc_a_silver.XML"),
    Game.LoadStageSet("placement/flc/flc_mapA_effects.xml", "particle"),
    Game.LoadStageSet("placement/flc/dset_flc_a.XML", "pathobj"),
    Game.LoadSceneParams("scripts/stage/flc/scene_flc_a.lua"),
    Game.LoadPath("scripts/mission/0211/path_flcA_silver"),
    Game.LoadSoundBank("sound/stage_flc"),
    Game.LoadVoiceBank("sound/voice_flc_e")
  })
  Game.SetPlayer(6849, -4059, 25394, 45, "silver.lua")
  Game.PlayBGM("stg_flc_a")
end
function FlameCore.SilverA.AtoB(_ARG_0_)
  _ARG_0_:ChangeArea("Area B")
end
function FlameCore.SilverA.move_floor01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath234")
  Game.ProcessMessage("physicspath234", "PsiEffect", {effect = true})
  Game.Signal("physicspath235")
  Game.ProcessMessage("physicspath235", "PsiEffect", {effect = true})
end
function FlameCore.SilverA.move_floor02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath36")
  Game.ProcessMessage("physicspath36", "PsiEffect", {effect = true})
  Game.Signal("physicspath231")
  Game.ProcessMessage("physicspath231", "PsiEffect", {effect = true})
end
function FlameCore.SilverA.move_floor03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath232")
  Game.ProcessMessage("physicspath232", "PsiEffect", {effect = true})
  Game.Signal("physicspath237")
  Game.ProcessMessage("physicspath237", "PsiEffect", {effect = true})
end
function FlameCore.SilverA.move_floor04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath238")
  Game.ProcessMessage("physicspath238", "PsiEffect", {effect = true})
  Game.Signal("physicspath239")
  Game.ProcessMessage("physicspath239", "PsiEffect", {effect = true})
end
function FlameCore.SilverA.move_floor05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath240")
  Game.ProcessMessage("physicspath240", "PsiEffect", {effect = true})
  Game.Signal("physicspath241")
  Game.ProcessMessage("physicspath241", "PsiEffect", {effect = true})
end
function FlameCore.SilverA.move_floor06(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath50")
  Game.ProcessMessage("physicspath50", "PsiEffect", {effect = true})
  Game.Signal("physicspath242")
  Game.ProcessMessage("physicspath242", "PsiEffect", {effect = true})
end
function FlameCore.SilverA.move_floor07(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath247")
  Game.ProcessMessage("physicspath247", "PsiEffect", {effect = true})
end
function FlameCore.SilverA.door_open01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("flc_door03", "GateOpen")
end
function FlameCore.SilverA.door_open02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("flc_door04", "GateOpen")
end
function FlameCore.SilverA.door_open03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("flc_door01", "GateOpen")
end
function FlameCore.SilverA.door_open04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("flc_door02", "GateOpen")
end
function FlameCore.SilverA.move_floor08(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath37")
  Game.ProcessMessage("physicspath37", "PsiEffect", {effect = true})
end
function FlameCore.SilverA.move_floor09(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath255")
  Game.ProcessMessage("physicspath255", "PsiEffect", {effect = true})
end
function FlameCore.SilverA.move_floor10(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath256")
  Game.ProcessMessage("physicspath256", "PsiEffect", {effect = true})
  Game.Signal("physicspath257")
  Game.ProcessMessage("physicspath257", "PsiEffect", {effect = true})
end
function FlameCore.SilverA.move_floor11(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath251")
  Game.ProcessMessage("physicspath251", "PsiEffect", {effect = true})
  Game.Signal("physicspath252")
  Game.ProcessMessage("physicspath252", "PsiEffect", {effect = true})
  Game.Signal("physicspath253")
  Game.ProcessMessage("physicspath253", "PsiEffect", {effect = true})
end
function FlameCore.SilverA.move_floor12(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath259")
  Game.ProcessMessage("physicspath259", "PsiEffect", {effect = true})
end
function FlameCore.SilverA.cage01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage01")
end
function FlameCore.SilverA.cage02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage03")
end
function FlameCore.SilverA.cage03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage02")
end
function FlameCore.SilverA.cage04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage04")
end
function FlameCore.SilverA.cage05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage05")
end
function FlameCore.SilverA.call_enemy01(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper03")
end
function FlameCore.SilverA.call_enemy02(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper01")
end
