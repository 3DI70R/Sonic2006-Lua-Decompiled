FlameCore.ShadowA = inherits_from(ActionArea)
function FlameCore.ShadowA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct FlameCore.ShadowA")
end
function FlameCore.ShadowA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("FlameCore.ShadowA.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_flc_a.lua"),
    Game.LoadTerrain("stage/flc/a/"),
    Game.LoadStageSet("scripts/mission/0102/set_flc_a_shadow.XML"),
    Game.LoadStageSet("placement/flc/flc_mapA_effects.xml", "particle"),
    Game.LoadStageSet("placement/flc/dset_flc_a.XML", "pathobj"),
    Game.LoadSceneParams("scripts/stage/flc/scene_flc_a.lua"),
    Game.LoadPath("scripts/mission/0102/path_flcA_shadow"),
    Game.LoadPath("scripts/mission/0102/guide_flcA_shadow", "guide"),
    Game.LoadSoundBank("sound/stage_flc"),
    Game.LoadVoiceBank("sound/voice_flc_e")
  })
  Game.SetPlayer(-9352.521, 799.532, 38599.273, 180, "shadow.lua")
  Game.PlayBGM("stg_flc_a")
end
function FlameCore.ShadowA.AtoB(_ARG_0_)
  _ARG_0_:ChangeArea("Area B")
end
function FlameCore.ShadowA.moving_rock02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath24")
  Game.Signal("physicspath18")
  Game.Signal("physicspath33")
end
function FlameCore.ShadowA.moving_rock03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath27")
  Game.Signal("physicspath28")
  Game.Signal("physicspath29")
  Game.Signal("physicspath30")
  Game.Signal("physicspath49")
end
function FlameCore.ShadowA.moving_rock04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath34")
  Game.Signal("physicspath35")
  Game.Signal("physicspath44")
end
function FlameCore.ShadowA.moving_rock05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath45")
  Game.Signal("physicspath46")
end
function FlameCore.ShadowA.moving_rock06(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath47")
  Game.Signal("physicspath43")
end
function FlameCore.ShadowA.moving_rock07(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath48")
  Game.Signal("physicspath31")
end
function FlameCore.ShadowA.door_open03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("flc_door01", "GateOpen")
end
function FlameCore.ShadowA.door_open04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("flc_door02", "GateOpen")
end
function FlameCore.ShadowA.door_open01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("flc_door03", "GateOpen")
end
function FlameCore.ShadowA.door_open02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("flc_door04", "GateOpen")
end
function FlameCore.ShadowA.inclined01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedstonebridge02")
end
function FlameCore.ShadowA.inclined02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedstonebridge01")
end
function FlameCore.ShadowA.call_enemy01(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper27")
end
function FlameCore.ShadowA.call_enemy02(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper28")
end
function FlameCore.ShadowA.call_enemy03(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper40")
end
function FlameCore.ShadowA.call_enemy04(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper31")
end
function FlameCore.ShadowA.call_enemy05(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper32")
end
function FlameCore.ShadowA.call_enemy06(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper10")
end
function FlameCore.ShadowA.call_enemy07(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper11")
end
function FlameCore.ShadowA.call_enemy08(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper13")
end
function FlameCore.ShadowA.call_enemy09(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper37")
end
function FlameCore.ShadowA.call_enemy10(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper39")
end
function FlameCore.ShadowA.call_enemy11(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper03")
end
function FlameCore.ShadowA.call_enemy12(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper01")
end
function FlameCore.ShadowA.call_enemy13(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper50")
end
function FlameCore.ShadowA.call_enemy14(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper48")
end
function FlameCore.ShadowA.call_enemy15(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper47")
end
function FlameCore.ShadowA.cage01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage07")
end
function FlameCore.ShadowA.cage02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage03")
end
function FlameCore.ShadowA.cage03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage08")
end
function FlameCore.ShadowA.cage04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage09")
end
function FlameCore.ShadowA.cage05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage01")
end
function FlameCore.ShadowA.cage06(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage02")
end
function FlameCore.ShadowA.cage07(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage10")
end
function FlameCore.ShadowA.cage08(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage11")
end
function FlameCore.ShadowA.cage09(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage04")
end
function FlameCore.ShadowA.cage10(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage05")
end
