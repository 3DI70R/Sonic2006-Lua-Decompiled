Town.ShadowA = inherits_from(ActionArea)
function Town.ShadowA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Town.ShdowA")
  Game.Log("!!!!!!!!!!!!!!!!!!")
end
function Town.ShadowA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("Town.ShadowA.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_twn_a.lua"),
    Game.LoadTerrain("stage/twn/a/"),
    Game.LoadStageSet("placement/twn/a/set_twn_a_060228.xml"),
    Game.LoadStageSet("placement/twn/a/dset_twn_a_sonic", "design"),
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
  Game.SetPlayer(21711, 210, 1317, 0, "shadow.lua")
end
flag_candle01 = 0
flag_candle02 = 0
flag_candle03 = 0
flag_candle04 = 0
function Town.ShadowA.candlestick_event(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  Game.Debug()
  Game.Log("Town.ShadowA isfire")
  Game.Log(_ARG_1_)
  Game.Log(_ARG_2_)
  Game.Log("-actorID-")
  Game.Log(_ARG_3_)
  Game.Log("flag_candle01")
  Game.Log(flag_candle01)
  Game.Log("flag_candle02")
  Game.Log(flag_candle02)
  Game.Log("flag_candle03")
  Game.Log(flag_candle03)
  Game.Log("flag_candle04")
  Game.Log(flag_candle04)
  if _ARG_1_ == true then
    Game.Log("isfire: msg.on true ------>")
    if flag_candle01 == 0 then
      flag_candle01 = _ARG_3_
      Game.Log("set flag_candle01")
      Game.Log(flag_candle01)
    elseif flag_candle02 == 0 then
      flag_candle02 = _ARG_3_
      Game.Log("set flag_candle02")
      Game.Log(flag_candle02)
    elseif flag_candle03 == 0 then
      flag_candle03 = _ARG_3_
      Game.Log("set flag_candle03")
      Game.Log(flag_candle03)
    elseif flag_candle04 == 0 then
      flag_candle04 = _ARG_3_
      Game.Log("set flag_candle04")
      Game.Log(flag_candle04)
    else
      Game.Log("isfire: we have no empty flag...")
    end
    Game.Log("isfire: msg.on true ------<")
  elseif _ARG_1_ == false then
    Game.Log("isfire: msg.on false ------>")
    if flag_candle01 == _ARG_3_ then
      Game.Log("clear flag_candle01")
      Game.Log(flag_candle01)
      flag_candle01 = 0
      Game.Log(flag_candle01)
    elseif flag_candle02 == _ARG_3_ then
      Game.Log("clear flag_candle02")
      Game.Log(flag_candle02)
      flag_candle02 = 0
      Game.Log(flag_candle02)
    elseif flag_candle03 == _ARG_3_ then
      Game.Log("clear flag_candle03")
      Game.Log(flag_candle03)
      flag_candle03 = 0
      Game.Log(flag_candle03)
    elseif flag_candle04 == _ARG_3_ then
      Game.Log("clear flag_candle04")
      Game.Log(flag_candle04)
      flag_candle04 = 0
      Game.Log(flag_candle04)
    else
      Game.Log("isfire: unkown actor id ")
      Game.Log(_ARG_3_)
    end
    Game.Log("isfire: msg.on false ------<")
  else
    Game.Log("is fire: unknown msg.on type")
  end
  if flag_candle01 ~= 0 and flag_candle02 ~= 0 and flag_candle03 ~= 0 and flag_candle04 ~= 0 then
    Game.Log("darkness01")
    Game.StartEntityByName("darkness01")
    Game.ProcessMessage("candlestick01", "stop_countdown_timer")
    Game.ProcessMessage("candlestick02", "stop_countdown_timer")
    Game.ProcessMessage("candlestick03", "stop_countdown_timer")
    Game.ProcessMessage("candlestick04", "stop_countdown_timer")
  else
  end
end
