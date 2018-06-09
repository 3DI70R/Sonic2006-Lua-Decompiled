FlameCore.SonicB = inherits_from(ActionArea)
FlameSingleSwitch = inherits_from(Object)
function FlameSingleSwitch.constructor(_ARG_0_)
  Game.Debug()
  Object.constructor(_ARG_0_)
end
function FlameSingleSwitch.Setup(_ARG_0_, _ARG_1_)
  Game.Debug()
  Object.Setup(_ARG_0_)
  _ARG_0_.count_flame_switch_all = _ARG_1_
  _ARG_0_.count_flame_switch_current = 0
end
function FlameSingleSwitch.OnOff(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  Game.Debug()
  Game.Log(_ARG_0_.count_flame_switch_all)
  Game.Log(_ARG_0_.count_flame_switch_current)
  if _ARG_1_ == true then
    _ARG_0_.count_flame_switch_current = _ARG_0_.count_flame_switch_current + 1
  else
    _ARG_0_.count_flame_switch_current = _ARG_0_.count_flame_switch_current - 1
  end
  Game.Log(_ARG_1_)
  Game.Log("count_flame_switch_all")
  Game.Log(_ARG_0_.count_flame_switch_all)
  Game.Log("count_flame_switch_current")
  Game.Log(_ARG_0_.count_flame_switch_current)
  if _ARG_0_.count_flame_switch_current == _ARG_0_.count_flame_switch_all then
    Game.Log("OnOffEvent-Fire!")
    _ARG_2_[_ARG_3_](_ARG_2_, _ARG_4_)
  end
end
function FlameCore.SonicB.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct FlameCore.SonicB")
  _ARG_0_.framesingle = FlameSingleSwitch:new()
  _ARG_0_.framesingle:Setup(5)
end
function FlameCore.SonicB.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("FlameCore.SonicB.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/flc/b/"),
    Game.LoadStageSet("placement/flc/set_flc_b_sonic.XML"),
    Game.LoadStageSet("placement/flc/flc_mapB_effects.xml", "particle"),
    Game.LoadStageSet("placement/flc/dset_flc_b.XML", "pathobj"),
    Game.LoadSceneParams("scripts/stage/flc/scene_flc_b.lua"),
    Game.LoadPath("placement/flc/path_flcB_sonic"),
    Game.LoadPath("placement/flc/grind_flcB_sonic", "grind"),
    Game.LoadCameraSet("placement/flc/set_flc_b_sonic.XML"),
    Game.LoadSoundBank("sound/stage_flc"),
    Game.LoadVoiceBank("sound/voice_flc_e")
  })
  Game.SetPlayer(-27775, 7981.22, 19598.125, 180, "sonic_new.lua")
  Game.SetPlayer(5356.08, -507.652, 11900.247, 180, "knuckles.lua", 1, true)
  Game.SetPlayer(19255.725, 3658.525, 5597.304, 180, "sonic_new.lua", 2, true)
  Game.PlayBGM("stg_flc_b")
end
function FlameCore.SonicB.call_enemy00(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper03")
end
function FlameCore.SonicB.call_enemy01(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper04")
end
function FlameCore.SonicB.call_enemy03(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper04")
end
function FlameCore.SonicB.call_enemy04(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper01")
end
function FlameCore.SonicB.call_enemy05(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper11")
end
function FlameCore.SonicB.call_enemy06(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper12")
end
function FlameCore.SonicB.call_enemy07(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper13")
end
function FlameCore.SonicB.call_enemy08(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper14")
end
function FlameCore.SonicB.call_enemy09(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper07")
end
function FlameCore.SonicB.call_enemy10(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper20")
end
function FlameCore.SonicB.door_open00(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("flc_door01", "GateOpen")
end
function FlameCore.SonicB.door_close00(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("flc_door01", "GateClose")
end
function FlameCore.SonicB.door_open01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("flc_door03", "GateOpen")
end
function FlameCore.SonicB.door_close01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("flc_door03", "GateClose")
end
function FlameCore.SonicB.door_open02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("FlameCore.SonicB:door_open02")
  _ARG_0_:LightAllFlames()
  _ARG_0_:OffAllLightCollision()
  Game.ProcessMessage("flc_door04", "GateOpen")
  Game.StartEntityByName("GroupHelper35")
end
function FlameCore.SonicB.door_close02(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("flc_door04", "GateClose")
end
function FlameCore.SonicB.flame_switch_onoff(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  Game.Debug()
  Game.Log("FlameCore.SonicB:flame_switch_onoff")
  _ARG_0_.framesingle:OnOff(_ARG_1_, FlameCore.SonicB, "door_open02", _ARG_2_)
end
function FlameCore.SonicB.LightAllFlames(_ARG_0_)
  Game.Debug()
  Game.Log("FlameCore.SonicB:LightAllFlames")
  Game.Signal("flamesequence01")
  Game.Signal("flamesequence02")
  Game.Signal("flamesequence03")
  Game.Signal("flamesequence04")
  Game.Signal("flamesequence05")
end
function FlameCore.SonicB.OffAllLightCollision(_ARG_0_)
  Game.Debug()
  Game.Log("FlameCore.SonicB:OffAllLightCollision")
  Game.ProcessMessage("pathobj:changelight03", "OFF")
  Game.ProcessMessage("pathobj:changelight04", "OFF")
  Game.ProcessMessage("pathobj:changelight05", "OFF")
end
function FlameCore.SonicB.cage01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage01")
end
function FlameCore.SonicB.cage02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage02")
end
function FlameCore.SonicB.cage03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage03")
end
function FlameCore.SonicB.cage04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage04")
end
