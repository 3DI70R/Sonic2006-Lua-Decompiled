ActionStage = inherits_from(Object)
function ActionStage.constructor(_ARG_0_)
  Object.constructor(_ARG_0_)
  Game.Log("constructor ActionStage")
  _ARG_0_.states, _ARG_0_.state = {
    begin = ActionStage.Start,
    retry = ActionStage.Retry,
    playing = ActionStage.Playing,
    gameover = ActionStage.GameOver,
    clear = ActionStage.Clear
  }, "begin"
  _ARG_0_._comp = {}
  _ARG_0_.areas = {}
  _ARG_0_._newArea = nil
  _ARG_0_._score = 0
  _ARG_0_._life = 5
  _ARG_0_._playTime = 0
  _ARG_0_._ringCount = 0
  _ARG_0_._stepTime = true
  _ARG_0_._stepMode = "normal"
  _ARG_0_._stepFuncs = {
    normal = ActionStage.stepNormal,
    load = ActionStage.stepLoad,
    load2 = ActionStage.stepLoad2,
    load3 = ActionStage.stepLoad3
  }
  _ARG_0_.result_name = 0
  _ARG_0_._extended = false
end
function ActionStage.Type(_ARG_0_)
  return "ActionStage"
end
function ActionStage.Setup(_ARG_0_)
  Object.Setup(_ARG_0_)
  _ARG_0_:Load()
end
function ActionStage.StageTitle(_ARG_0_)
end
function ActionStage.NewArea(_ARG_0_, _ARG_1_)
  assert(_ARG_1_.Type() == "ActionArea", "Not inherited from ActionArea!")
  _ARG_1_:new():Setup()
  _ARG_0_._areaobj, _ARG_1_:new()._stage = _ARG_1_:new(), _ARG_0_
end
function ActionStage.Load(_ARG_0_)
  _ARG_0_.titleHud = _ARG_0_:StageTitle()
  _ARG_0_.loadingHud = CreateTask("loading")
  Game.SeparateRenderAndExecute(true)
  Game.PreloadPlayer()
  if _ARG_0_.area ~= nil and _ARG_0_.areas[_ARG_0_.area] ~= nil then
    _ARG_0_:NewArea(_ARG_0_.areas[_ARG_0_.area])
  end
  Game.StartPlaying()
end
function ActionStage.AddComponent(_ARG_0_, _ARG_1_)
  while next(_ARG_1_, next(_ARG_1_)) ~= nil do
    table.insert(_ARG_0_._comp, next(_ARG_1_))
  end
end
function ActionStage.stepNormal(_ARG_0_, _ARG_1_)
  if _ARG_0_.loadingHud ~= nil then
    _ARG_0_.loadingHud:ProcessMessage("HudHide")
    _ARG_0_.loadingHud = nil
  end
  if _ARG_0_.areas ~= nil and _ARG_0_._newArea ~= nil and _ARG_0_._newArea ~= _ARG_0_.area and _ARG_0_.areas[_ARG_0_._newArea] ~= nil then
    Game.StopBGM()
    _ARG_0_._areaobj = nil
    Game.ChangeArea()
    _ARG_0_.area = _ARG_0_._newArea
    if _ARG_0_.mainHud ~= nil then
      _ARG_0_.mainHud:ProcessMessage("HudHide")
    end
    _ARG_0_._stepMode = "load"
  end
  if _ARG_0_._stepTime == true then
    _ARG_0_._playTime = _ARG_0_._playTime + _ARG_1_
  end
  if _ARG_0_.mainHud ~= nil then
    _ARG_0_.mainHud:ProcessMessage("HudSetTime", {
      value = _ARG_0_:GetPlayTime()
    })
  end
  if _ARG_0_._areaobj ~= nil then
    _ARG_0_._areaobj:Exec(_ARG_1_)
  end
end
function ActionStage.stepLoad(_ARG_0_, _ARG_1_)
  _ARG_0_._stepMode = "load2"
  Game.DestroyWorld()
end
function ActionStage.stepLoad2(_ARG_0_, _ARG_1_)
  Game.SetupWorld()
  _ARG_0_.loadingHud = CreateTask("loading")
  Game.SeparateRenderAndExecute(true)
  _ARG_0_:NewArea(_ARG_0_.areas[_ARG_0_._newArea])
  Game.StartPlaying()
  _ARG_0_:StartPlaying()
  Game.SeparateRenderAndExecute(false)
  _ARG_0_._stepMode = "load3"
end
function ActionStage.stepLoad3(_ARG_0_, _ARG_1_)
  if _ARG_0_.loadingHud ~= nil then
    _ARG_0_.loadingHud:ProcessMessage("HudHide")
  end
  if _ARG_0_.mainHud ~= nil then
    _ARG_0_.mainHud:ProcessMessage("HudShow")
  end
  _ARG_0_._stepMode = "normal"
end
function ActionStage.Step(_ARG_0_, _ARG_1_)
  _ARG_0_._stepFuncs[_ARG_0_._stepMode](_ARG_0_, _ARG_1_)
end
function ActionStage.ChangeArea(_ARG_0_, _ARG_1_)
  _ARG_0_._newArea = _ARG_1_
  Game.Log("ActionStage.ChangeArea")
end
function ActionStage.Retry(_ARG_0_)
end
function ActionStage.StartPlaying(_ARG_0_)
  _ARG_0_._areaobj:StartPlaying()
end
function ActionStage.GetScore(_ARG_0_)
  return _ARG_0_._score
end
function ActionStage.SetScore(_ARG_0_, _ARG_1_)
  _ARG_0_._score = _ARG_1_
  if _ARG_0_.mainHud ~= nil then
    _ARG_0_.mainHud:ProcessMessage("HudSetScore", {
      value = _ARG_0_._score
    })
  end
end
function ActionStage.AddScore(_ARG_0_, _ARG_1_)
  _ARG_0_:SetScore(_ARG_0_._score + _ARG_1_)
end
function ActionStage.GetPlayTime(_ARG_0_)
  return _ARG_0_._playTime
end
function ActionStage.GetLife(_ARG_0_)
  return _ARG_0_._life
end
function ActionStage.GetRingCount(_ARG_0_)
  return _ARG_0_._ringCount
end
function ActionStage.SetLife(_ARG_0_, _ARG_1_)
  _ARG_0_._life = _ARG_1_
  if _ARG_0_.mainHud ~= nil then
    _ARG_0_.mainHud:ProcessMessage("HudSetPlayerCount", {value = _ARG_1_})
  end
end
function ActionStage.setRingCount(_ARG_0_, _ARG_1_)
  _ARG_0_._ringCount = _ARG_1_
  if not _ARG_0_._extended and _ARG_1_ >= 100 then
    _ARG_0_._extended = true
    _ARG_0_:ExtendLife()
  end
  if _ARG_0_.mainHud ~= nil then
    _ARG_0_.mainHud:ProcessMessage("HudSetRingCount", {value = _ARG_1_})
  end
end
function ActionStage.CalcTimeBonus(_ARG_0_)
  if 30000 - math.floor(_ARG_0_._playTime) * 40 < 0 then
    return 0
  end
  return 30000 - math.floor(_ARG_0_._playTime) * 40
end
function ActionStage.ExtendLife(_ARG_0_)
  _ARG_0_:SetLife(_ARG_0_:GetLife() + 1)
  Game.ProcessMessage("LEVEL", "PlaySE", {bank = "system", id = "extend"})
end
function ActionStage.MissionComplete(_ARG_0_)
  _ARG_0_._stepTime = false
end
function ActionStage.GetRankTable(_ARG_0_)
  return {
    27000,
    25000,
    20000,
    18000
  }
end
function ActionStage.ControlPause(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("LEVEL", "ControlPause", {enabled = _ARG_1_})
end
function ActionStage.CallEvent(_ARG_0_, _ARG_1_)
  if _ARG_0_._areaobj ~= nil then
    Game.Log("event")
    if _ARG_0_._areaobj[_ARG_1_.eventID] ~= nil then
      _ARG_0_._areaobj[_ARG_1_.eventID](_ARG_0_._areaobj, _ARG_1_.otherID)
    else
      Game.Log("unknown event")
    end
  end
end
function ActionStage.Switch(_ARG_0_, _ARG_1_)
  if _ARG_0_._areaobj ~= nil then
    Game.Log("switch")
    if _ARG_0_._areaobj[_ARG_1_.eventID] ~= nil then
      _ARG_0_._areaobj[_ARG_1_.eventID](_ARG_0_._areaobj, _ARG_1_.on, _ARG_1_.otherID, _ARG_1_.actorID)
    else
      Game.Log("unknown switch")
    end
  end
end
function ActionStage.PlayerGetsItem(_ARG_0_, _ARG_1_)
  if _ARG_1_.item == 4 then
    _ARG_0_:ExtendLife()
  end
  _ARG_0_:AddScore(({
    50,
    100,
    200,
    200,
    200,
    200,
    200,
    200,
    200
  })[_ARG_1_.item])
end
function ActionStage.Score(_ARG_0_, _ARG_1_)
  _ARG_0_:AddScore(_ARG_1_.point)
end
function ActionStage.SetScoreMsg(_ARG_0_, _ARG_1_)
  _ARG_0_:SetScore(_ARG_1_.point)
end
function ActionStage.PlayerGetsRing(_ARG_0_, _ARG_1_)
  if _ARG_1_.score == true then
    _ARG_0_:AddScore(10)
  end
end
function ActionStage.PlayerGetsPsiValue(_ARG_0_, _ARG_1_)
  if _ARG_0_.mainHud ~= nil then
    _ARG_0_.mainHud:ProcessMessage("HudSetPower", {
      value = _ARG_1_.psiValue / 100
    })
  end
end
function ActionStage.GetPlayerCount(_ARG_0_, _ARG_1_)
  Game.Log("GetPlayerCount")
  _ARG_1_.count = _ARG_0_._life
end
function ActionStage.PlayerReachesTheGoal(_ARG_0_, _ARG_1_)
end
function ActionStage.NotifyRestart(_ARG_0_, _ARG_1_)
  _ARG_0_:setRingCount(0)
  _ARG_0_:SetScore(0)
  _ARG_0_:StartPlaying()
end
function ActionStage.SetRingCount(_ARG_0_, _ARG_1_)
  _ARG_0_:setRingCount(_ARG_1_.count)
end
