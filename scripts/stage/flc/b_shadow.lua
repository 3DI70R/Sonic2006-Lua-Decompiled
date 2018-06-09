FlameCore.ShadowB = inherits_from(ActionArea)
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
function FlameCore.ShadowB.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct FlameCore.ShadowB")
  _ARG_0_.framesingle = FlameSingleSwitch:new()
  _ARG_0_.framesingle:Setup(5)
end
function FlameCore.ShadowB.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("FlameCore.ShadowB.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/flc/b/"),
    Game.LoadStageSet("scripts/mission/0102/set_flc_b_shadow.XML"),
    Game.LoadStageSet("placement/flc/flc_mapB_effects.xml", "particle"),
    Game.LoadStageSet("placement/flc/dset_flc_b.XML", "pathobj"),
    Game.LoadSceneParams("scripts/stage/flc/scene_flc_b.lua"),
    Game.LoadPath("scripts/mission/0102/path_flcB_shadow"),
    Game.LoadPath("scripts/mission/0102/grind_flcB_shadow", "grind"),
    Game.LoadSoundBank("sound/stage_flc"),
    Game.LoadVoiceBank("sound/voice_flc_e")
  })
  Game.SetPlayer(-27775, 7981.22, 19598.125, 180, "shadow.lua")
  Game.SetPlayer(5356.08, -507.652, 11900.247, 180, "rouge.lua", 1, true)
  Game.SetPlayer(19255.725, 3658.525, 5597.304, 180, "shadow.lua", 2, true)
  Game.PlayBGM("stg_flc_b")
end
function FlameCore.ShadowB.call_enemy00(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper03")
end
function FlameCore.ShadowB.call_enemy01(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper04")
end
function FlameCore.ShadowB.call_enemy03(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper04")
end
function FlameCore.ShadowB.call_enemy04(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper01")
end
function FlameCore.ShadowB.call_enemy05(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper11")
end
function FlameCore.ShadowB.call_enemy06(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper12")
end
function FlameCore.ShadowB.call_enemy07(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper13")
end
function FlameCore.ShadowB.call_enemy08(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper14")
end
function FlameCore.ShadowB.call_enemy09(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper09")
end
function FlameCore.ShadowB.call_enemy10(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper26")
end
function FlameCore.ShadowB.door_open00(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("flc_door01", "GateOpen")
end
function FlameCore.ShadowB.door_close00(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("flc_door01", "GateClose")
end
function FlameCore.ShadowB.door_open01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("flc_door03", "GateOpen")
end
function FlameCore.ShadowB.door_close01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("flc_door03", "GateClose")
end
function FlameCore.ShadowB.door_open02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("FlameCore.ShadowB:door_open02")
  _ARG_0_:LightAllFlames()
  _ARG_0_:OffAllLightCollision()
  Game.ProcessMessage("flc_door04", "GateOpen")
  Game.StartEntityByName("GroupHelper43")
end
function FlameCore.ShadowB.door_close02(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("flc_door04", "GateClose")
end
function FlameCore.ShadowB.flame_switch_onoff(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  Game.Debug()
  Game.Log("FlameCore.ShadowB:flame_switch_onoff")
  _ARG_0_.framesingle:OnOff(_ARG_1_, FlameCore.ShadowB, "door_open02", _ARG_2_)
end
function FlameCore.ShadowB.LightAllFlames(_ARG_0_)
  Game.Debug()
  Game.Log("FlameCore.ShadowB:LightAllFlames")
  Game.Signal("flamesequence01")
  Game.Signal("flamesequence02")
  Game.Signal("flamesequence03")
  Game.Signal("flamesequence04")
  Game.Signal("flamesequence05")
end
function FlameCore.ShadowB.OffAllLightCollision(_ARG_0_)
  Game.Debug()
  Game.Log("FlameCore.ShadowB:OffAllLightCollision")
  Game.ProcessMessage("pathobj:changelight03", "OFF")
  Game.ProcessMessage("pathobj:changelight04", "OFF")
  Game.ProcessMessage("pathobj:changelight05", "OFF")
end
function FlameCore.ShadowB.cage01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage01")
end
function FlameCore.ShadowB.cage02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage02")
end
function FlameCore.ShadowB.cage03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage03")
end
function FlameCore.ShadowB.cage04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage04")
end
function FlameCore.ShadowB.cage05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage05")
end
