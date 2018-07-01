ActionStage = inherits_from(Object)
function ActionStage:constructor()
  Object.constructor(self)
  Game.Log("constructor ActionStage")
  self.states = {
    begin = ActionStage.Start,
    retry = ActionStage.Retry,
    playing = ActionStage.Playing,
    gameover = ActionStage.GameOver,
    clear = ActionStage.Clear
  }
  self.state = "begin"
  self._comp = {}
  self.areas = {}
  self._newArea = nil
  self._score = 0
  self._life = 5
  self._playTime = 0
  self._ringCount = 0
  self._stepTime = true
  self._stepMode = "normal"
  self._stepFuncs = {
    normal = ActionStage.stepNormal,
    load = ActionStage.stepLoad,
    load2 = ActionStage.stepLoad2,
    load3 = ActionStage.stepLoad3
  }
  self.result_name = 0
  self._extended = false
end
function ActionStage:Type()
  return "ActionStage"
end
function ActionStage:Setup()
  Object.Setup(self)
  self:Load()
end
function ActionStage:StageTitle()
end
function ActionStage:NewArea(area)
  assert(area.Type() == "ActionArea", "Not inherited from ActionArea!")
  local newArea = area:new()
  newArea:Setup()

  self._areaobj = newArea
  newArea._stage = self
end
function ActionStage:Load()
  self.titleHud = self:StageTitle()
  self.loadingHud = CreateTask("loading")
  Game.SeparateRenderAndExecute(true)
  Game.PreloadPlayer()
  if self.area ~= nil and self.areas[self.area] ~= nil then
    self:NewArea(self.areas[self.area])
  end
  Game.StartPlaying()
end
function ActionStage:AddComponent(component)
  while next(component, next(component)) ~= nil do
    table.insert(self._comp, next(component))
  end
end
function ActionStage:stepNormal(deltaTime)
  if self.loadingHud ~= nil then
    self.loadingHud:ProcessMessage("HudHide")
    self.loadingHud = nil
  end
  if self.areas ~= nil and self._newArea ~= nil and self._newArea ~= self.area and self.areas[self._newArea] ~= nil then
    Game.StopBGM()
    self._areaobj = nil
    Game.ChangeArea()
    self.area = self._newArea
    if self.mainHud ~= nil then
      self.mainHud:ProcessMessage("HudHide")
    end
    self._stepMode = "load"
  end
  if self._stepTime == true then
    self._playTime = self._playTime + deltaTime
  end
  if self.mainHud ~= nil then
    self.mainHud:ProcessMessage("HudSetTime", {
      value = self:GetPlayTime()
    })
  end
  if self._areaobj ~= nil then
    self._areaobj:Exec(deltaTime)
  end
end
function ActionStage:stepLoad(deltaTime)
  self._stepMode = "load2"
  Game.DestroyWorld()
end
function ActionStage:stepLoad2(deltaTime)
  Game.SetupWorld()
  self.loadingHud = CreateTask("loading")
  Game.SeparateRenderAndExecute(true)
  self:NewArea(self.areas[self._newArea])
  Game.StartPlaying()
  self:StartPlaying()
  Game.SeparateRenderAndExecute(false)
  self._stepMode = "load3"
end
function ActionStage:stepLoad3(deltaTime)
  if self.loadingHud ~= nil then
    self.loadingHud:ProcessMessage("HudHide")
  end
  if self.mainHud ~= nil then
    self.mainHud:ProcessMessage("HudShow")
  end
  self._stepMode = "normal"
end
function ActionStage:Step(deltaTime)
  self._stepFuncs[self._stepMode](self, deltaTime)
end
function ActionStage:ChangeArea(areaName)
  self._newArea = areaName
  Game.Log("ActionStage.ChangeArea")
end
function ActionStage:Retry()
end
function ActionStage:StartPlaying()
  self._areaobj:StartPlaying()
end
function ActionStage:GetScore()
  return self._score
end
function ActionStage:SetScore(score)
  self._score = score
  if self.mainHud ~= nil then
    self.mainHud:ProcessMessage("HudSetScore", {
      value = self._score
    })
  end
end
function ActionStage:AddScore(score)
  self:SetScore(self._score + score)
end
function ActionStage:GetPlayTime()
  return self._playTime
end
function ActionStage:GetLife()
  return self._life
end
function ActionStage:GetRingCount()
  return self._ringCount
end
function ActionStage:SetLife(lifeCount)
  self._life = lifeCount
  if self.mainHud ~= nil then
    self.mainHud:ProcessMessage("HudSetPlayerCount", {value = lifeCount})
  end
end
function ActionStage:setRingCount(ringCount)
  self._ringCount = ringCount
  if not self._extended and ringCount >= 100 then
    self._extended = true
    self:ExtendLife()
  end
  if self.mainHud ~= nil then
    self.mainHud:ProcessMessage("HudSetRingCount", {value = ringCount})
  end
end
function ActionStage:CalcTimeBonus()
  local timeBonus = 30000 - math.floor(self._playTime) * 40

  if timeBonus < 0 then
    return 0
  end

  return timeBonus
end
function ActionStage:ExtendLife()
  self:SetLife(self:GetLife() + 1)
  Game.ProcessMessage("LEVEL", "PlaySE", {bank = "system", id = "extend"})
end
function ActionStage:MissionComplete()
  self._stepTime = false
end
function ActionStage:GetRankTable()
  return {
    27000,
    25000,
    20000,
    18000
  }
end
function ActionStage:ControlPause(pauseEnabled)
  Game.ProcessMessage("LEVEL", "ControlPause", {enabled = pauseEnabled})
end
function ActionStage:CallEvent(eventData)
  if self._areaobj ~= nil then
    Game.Log("event")
    if self._areaobj[eventData.eventID] ~= nil then
      self._areaobj[eventData.eventID](self._areaobj, eventData.otherID)
    else
      Game.Log("unknown event")
    end
  end
end
function ActionStage:Switch(switchData)
  if self._areaobj ~= nil then
    Game.Log("switch")
    if self._areaobj[switchData.eventID] ~= nil then
      self._areaobj[switchData.eventID](self._areaobj, switchData.on, switchData.otherID, switchData.actorID)
    else
      Game.Log("unknown switch")
    end
  end
end
function ActionStage:PlayerGetsItem(itemData)
  if itemData.item == 4 then
    self:ExtendLife()
  end
  self:AddScore(({
    50,
    100,
    200,
    200,
    200,
    200,
    200,
    200,
    200
  })[itemData.item])
end
function ActionStage:Score(scoreData)
  self:AddScore(scoreData.point)
end
function ActionStage:SetScoreMsg(scoreData)
  self:SetScore(scoreData.point)
end
function ActionStage:PlayerGetsRing(ringGetParams)
  if ringGetParams.score == true then
    self:AddScore(10)
  end
end
function ActionStage:PlayerGetsPsiValue(psiValueData)
  if self.mainHud ~= nil then
    self.mainHud:ProcessMessage("HudSetPower", {
      value = psiValueData.psiValue / 100
    })
  end
end
function ActionStage:GetPlayerCount(outLifeCountData)
  Game.Log("GetPlayerCount")
  outPlayerCountData.count = self._life
end
function ActionStage:PlayerReachesTheGoal(playerInfo)
end
function ActionStage:NotifyRestart(unused)
  self:setRingCount(0)
  self:SetScore(0)
  self:StartPlaying()
end
function ActionStage:SetRingCount(ringCountData)
  self:setRingCount(ringCountData.count)
end
