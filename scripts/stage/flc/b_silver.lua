FlameCore.SilverB = inherits_from(ActionArea)
function FlameCore.SilverB.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct FlameCore.SilverB")
end
function FlameCore.SilverB.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("FlameCore.SilverB.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/flc/b/"),
    Game.LoadStageSet("scripts/mission/0211/set_flc_b_silver.XML"),
    Game.LoadStageSet("placement/flc/flc_mapB_effects.xml", "particle"),
    Game.LoadStageSet("placement/flc/dset_flc_b.XML", "pathobj"),
    Game.LoadSceneParams("scripts/stage/flc/scene_flc_b.lua"),
    Game.LoadPath("scripts/mission/0211/path_flcB_silver"),
    Game.LoadCameraSet("placement/flc/set_flc_b_silver.XML"),
    Game.LoadSoundBank("sound/stage_flc"),
    Game.LoadVoiceBank("sound/voice_flc_e")
  })
  Game.SetPlayer(-22500, 2000, 4055, 90, "silver.lua")
  Game.PlayBGM("stg_flc_b")
end
function FlameCore.SilverB.move_floor01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath14")
  Game.ProcessMessage("physicspath14", "PsiEffect", {effect = true})
  Game.Signal("physicspath15")
  Game.ProcessMessage("physicspath15", "PsiEffect", {effect = true})
  Game.Signal("physicspath16")
  Game.ProcessMessage("physicspath16", "PsiEffect", {effect = true})
end
function FlameCore.SilverB.move_floor02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath124")
  Game.ProcessMessage("physicspath124", "PsiEffect", {effect = true})
  Game.Signal("physicspath141")
  Game.ProcessMessage("physicspath141", "PsiEffect", {effect = true})
end
function FlameCore.SilverB.move_floor03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath129")
  Game.ProcessMessage("physicspath129", "PsiEffect", {effect = true})
  Game.Signal("physicspath130")
  Game.ProcessMessage("physicspath130", "PsiEffect", {effect = true})
end
function FlameCore.SilverB.move_floor04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath131")
  Game.ProcessMessage("physicspath131", "PsiEffect", {effect = true})
end
function FlameCore.SilverB.move_floor05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath132")
  Game.ProcessMessage("physicspath132", "PsiEffect", {effect = true})
end
function FlameCore.SilverB.move_floor06(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath20")
  Game.ProcessMessage("physicspath20", "PsiEffect", {effect = true})
end
function FlameCore.SilverB.move_floor07(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath21")
  Game.ProcessMessage("physicspath21", "PsiEffect", {effect = true})
end
function FlameCore.SilverB.move_floor08(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath22")
  Game.ProcessMessage("physicspath22", "PsiEffect", {effect = true})
end
function FlameCore.SilverB.move_floor09(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath24")
  Game.ProcessMessage("physicspath24", "PsiEffect", {effect = true})
end
function FlameCore.SilverB.move_floor10(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath25")
  Game.ProcessMessage("physicspath25", "PsiEffect", {effect = true})
end
function FlameCore.SilverB.move_floor11(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath134")
  Game.ProcessMessage("physicspath134", "PsiEffect", {effect = true})
end
function FlameCore.SilverB.move_floor12(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath135")
  Game.ProcessMessage("physicspath135", "PsiEffect", {effect = true})
  Game.Signal("physicspath26")
  Game.ProcessMessage("physicspath26", "PsiEffect", {effect = true})
end
function FlameCore.SilverB.move_floor13(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath04")
  Game.ProcessMessage("physicspath04", "PsiEffect", {effect = true})
end
function FlameCore.SilverB.move_floor14(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath08")
  Game.ProcessMessage("physicspath08", "PsiEffect", {effect = true})
end
function FlameCore.SilverB.move_floor15(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath03")
  Game.ProcessMessage("physicspath03", "PsiEffect", {effect = true})
end
function FlameCore.SilverB.move_floor16(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath30")
  Game.ProcessMessage("physicspath30", "PsiEffect", {effect = true})
end
function FlameCore.SilverB.move_floor17(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath06")
  Game.ProcessMessage("physicspath06", "PsiEffect", {effect = true})
  Game.Signal("physicspath31")
  Game.ProcessMessage("physicspath31", "PsiEffect", {effect = true})
end
function FlameCore.SilverB.move_floor18(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath140")
  Game.ProcessMessage("physicspath140", "PsiEffect", {effect = true})
end
function FlameCore.SilverB.door_open02(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("flc_door01", "GateOpen")
end
function FlameCore.SilverB.door_close02(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("flc_door01", "GateClose")
end
function FlameCore.SilverB.door_open01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("flc_door02", "GateOpen")
end
function FlameCore.SilverB.door_close01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("flc_door02", "GateClose")
end
function FlameCore.SilverB.door_open03(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("flc_door04", "GateOpen")
end
function FlameCore.SilverB.door_close03(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("flc_door04", "GateClose")
end
function FlameCore.SilverB.door_open04(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("flc_door05", "GateOpen")
end
function FlameCore.SilverB.door_close04(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("flc_door05", "GateClose")
end
function FlameCore.SilverB.door_open05(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("flc_door06", "GateOpen")
end
function FlameCore.SilverB.door_close05(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("flc_door06", "GateClose")
end
function FlameCore.SilverB.door_close06(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("flc_door07", "GateClose")
end
function FlameCore.SilverB.flamecore_on_1(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("FlameCore.SilverA.flamecore_on_1")
  Game.ProcessMessage("flc_flamecore01", "TornadoShoot", {shootindex = 1, target = _ARG_1_})
end
function FlameCore.SilverB.flamecore_on_2(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("FlameCore.SilverA.flamecore_on_2")
  Game.ProcessMessage("flc_flamecore01", "TornadoShoot", {shootindex = 2, target = _ARG_1_})
end
function FlameCore.SilverB.flamecore_off(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("FlameCore.SilverA.flamecore_off")
  Game.ProcessMessage("flc_flamecore01", "TornadoShoot", {shootindex = 0, target = _ARG_1_})
end
function FlameCore.SilverB.flamecool(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("FlameCore.SilverA.flamecool")
  Game.Signal("freezedmantle01")
  Game.ProcessMessage("flc_door07", "GateOpen")
  Game.StartEntityByName("cameraeventbox127")
end
function FlameCore.SilverB.cage01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage01")
end
function FlameCore.SilverB.call_enemy01(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper13")
end
function FlameCore.SilverB.call_enemy02(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper14")
end
function FlameCore.SilverB.call_enemy03(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper16")
end
