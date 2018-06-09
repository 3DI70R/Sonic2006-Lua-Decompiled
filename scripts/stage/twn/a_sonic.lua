Town.SonicA = inherits_from(ActionArea)
function Town.SonicA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Town.SonicA")
end
function Town.SonicA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("Town.SonicA.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_twn_a.lua"),
    Game.LoadTerrain("stage/twn/a/"),
    Game.LoadStageSet("placement/twn/a/set_twn_a_060228.xml"),
    Game.LoadStageSet("placement/twn/a/dset_twn_a_sonic.xml", "design"),
    Game.LoadStageSet("placement/twn/a/twn_mapA_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/twn/scene_twn_a.lua"),
    Game.LoadCameraSet("placement/twn/a/set_twn_a_060228.xml"),
    Game.LoadKynapse("kynapse/town_a.kbf"),
    Game.LoadTownsmanInfo("kynapse/town_man_info_a.lua"),
    Game.SetAreaName("town_a"),
    Game.PlayBGM("stg_twn_a"),
    Game.LoadVoiceBank("sound/voice_twn_e"),
    Game.LoadRaderMap("twn/twn_radermap_a")
  })
  Game.SetGenArea({
    size = {
      100 * 100,
      100 * 100,
      100 * 100
    },
    offset = {
      0,
      0,
      0
    },
    border = {
      20 * 100
    }
  })
  Game.SetPlayer(6293, 301, -17780, -45, "sonic_new.lua")
end
BellTimeOriginal = 240
BellTime = BellTimeOriginal
BellCountDownStart = false
flag_ringing01 = 0
flag_ringing02 = 0
flag_ringing03 = 0
function Town.SonicA.kane(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
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
    Game.ProcessMessage("wvo_doorA01", "GateOpen")
  end
end
function Town.SonicA.Step(_ARG_0_, _ARG_1_)
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
    end
  end
end
