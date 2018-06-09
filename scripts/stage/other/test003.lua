Other.Test003 = inherits_from(ActionArea)
function Other.Test003.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.Test003")
end
function Other.Test003.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("test003 setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test003/"),
    Game.LoadStageSet("placement/test003/set_test003.xml"),
    Game.LoadSceneParams("scripts/stage/twn/scene_twn_a.lua"),
    Game.LoadParticle("particle/Map_twn.plc"),
    Game.LoadSoundBank("sound/stage_twn")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(100, 0, 0, 0, "sonic_new.lua")
end
function Other.Test003.StartPlaying(_ARG_0_)
end
BellTimeOriginal = 60
BellTime = BellTimeOriginal
BellCountDownStart = false
flag_ringing01 = 0
flag_ringing02 = 0
flag_ringing03 = 0
function Other.Test003.kane(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  Game.Log("kane countdown")
  BellCountDownStart = true
  if flag_ringing01 == 0 then
    flag_ringing01 = _ARG_3_
  elseif flag_ringing02 == 0 then
    flag_ringing02 = _ARG_3_
  elseif flag_ringing03 == 0 then
    flag_ringing03 = _ARG_3_
  else
    Game.Log("bellcountdown has not empty flag...")
  end
  Game.Log("flag state")
  Game.Log(flag_ringing01)
  Game.Log(flag_ringing02)
  Game.Log(flag_ringing03)
  if flag_ringing01 ~= 0 and flag_ringing02 ~= 0 and flag_ringing03 ~= 0 then
    Game.ProcessMessage("twn_door01", "GateOpen")
  end
end
function Other.Test003.Step(_ARG_0_, _ARG_1_)
  if BellCountDownStart == true then
    BellTime = BellTime - _ARG_1_
    Game.Log(BellTime)
    if BellTime < 0 then
      Game.Log("BellTimeUp")
      Game.ProcessMessage("bell01", "timeup")
      Game.ProcessMessage("bell02", "timeup")
      Game.ProcessMessage("bell03", "timeup")
      flag_ringing01 = 0
      flag_ringing02 = 0
      flag_ringing03 = 0
      BellTime = BellTimeOriginal
      BellCountDownStart = false
      Game.ProcessMessage("twn_door01", "GateClose")
    end
  end
end
