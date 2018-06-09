DustyDesert.ShadowA = inherits_from(ActionArea)
function DustyDesert.ShadowA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct DustyDesert.ShadowA")
end
function DustyDesert.ShadowA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("DustyDesert.ShadowA.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/dtd/a/"),
    Game.LoadStageSet("scripts/mission/0109/set_dtd_a_shadow.xml"),
    Game.LoadStageSet("placement/dtd/dtd_mapA_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/dtd/scene_dtd_a_sonic.lua"),
    Game.LoadPath("placement/dtd/dtd_s_a"),
    Game.LoadStageSet("placement/dtd/dset_dtd_a_sonic.XML", "pathobj"),
    Game.LoadSoundBank("sound/stage_dtd"),
    Game.LoadVoiceBank("sound/voice_dtd_e"),
    Game.PlayBGM("stg_dtd_a")
  })
  Game.SetPlayer(39408, 756, 8829, 0, "shadow.lua")
end
function DustyDesert.ShadowA.pillar01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar01")
  Game.Signal("dtd_pillar02")
  Game.Signal("dtd_pillar03")
  Game.Signal("dtd_pillar12")
end
function DustyDesert.ShadowA.pillar02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("impulsesphere02")
  Game.Signal("impulsesphere01")
  Game.Signal("impulsesphere03")
  Game.Signal("impulsesphere04")
end
function DustyDesert.ShadowA.pillar02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar09")
  Game.Signal("dtd_pillar10")
end
function DustyDesert.ShadowA.pillare01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar_eagle29")
  Game.Signal("dtd_pillar_eagle30")
end
function DustyDesert.ShadowA.pillare02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar_eagle31")
  Game.Signal("dtd_pillar_eagle32")
end
function DustyDesert.ShadowA.pillare03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar_eagle33")
  Game.Signal("dtd_pillar_eagle34")
  Game.Signal("impulsesphere07")
end
function DustyDesert.ShadowA.pillare04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar_eagle07")
  Game.Signal("dtd_pillar_eagle08")
end
function DustyDesert.ShadowA.pillare05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar_eagle11")
  Game.Signal("dtd_pillar_eagle12")
end
function DustyDesert.ShadowA.pillare06(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar_eagle35")
  Game.Signal("dtd_pillar_eagle36")
end
function DustyDesert.ShadowA.pillare15(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar_eagle13")
  Game.Signal("dtd_pillar_eagle14")
end
function DustyDesert.ShadowA.pillare07(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar_eagle43")
  Game.Signal("dtd_pillar_eagle44")
end
function DustyDesert.ShadowA.pillare17(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar_eagle16")
  Game.Signal("dtd_pillar_eagle15")
end
function DustyDesert.ShadowA.pillare08(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar_eagle17")
  Game.Signal("dtd_pillar_eagle18")
end
function DustyDesert.ShadowA.pillare09(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar_eagle19")
  Game.Signal("dtd_pillar_eagle20")
end
function DustyDesert.ShadowA.pillare10(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar_eagle23")
  Game.Signal("dtd_pillar_eagle24")
end
function DustyDesert.ShadowA.pillare11(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar_eagle25")
  Game.Signal("dtd_pillar_eagle26")
  Game.Signal("impulsesphere05")
  Game.Signal("impulsesphere06")
end
function DustyDesert.ShadowA.pillare12(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar_eagle27")
  Game.Signal("dtd_pillar_eagle28")
end
function DustyDesert.ShadowA.pillare30(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar_eagle41")
  Game.Signal("dtd_pillar_eagle42")
end
function DustyDesert.ShadowA.pillare13(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar_eagle39")
  Game.Signal("dtd_pillar_eagle40")
end
function DustyDesert.ShadowA.pillare14(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar_eagle37")
  Game.Signal("dtd_pillar_eagle38")
end
function DustyDesert.ShadowA.door01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door01")
end
function DustyDesert.ShadowA.goto_b(_ARG_0_, _ARG_1_)
  _ARG_0_:ChangeArea("Area B")
end
