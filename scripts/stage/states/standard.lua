ActionStage.Start = inherits_from(State)
function ActionStage.Start.constructor(_ARG_0_)
  Game.Log("construct ActionStage.Start")
end
function ActionStage.Start.Main(_ARG_0_, _ARG_1_)
  Game.Log("Start:Main")
  if _ARG_1_.titleHud ~= nil then
    _ARG_1_.titleHud:ProcessMessage("HudHide")
  end
  if _ARG_1_.bgm ~= nil then
    Game.PlayBGM(_ARG_1_.bgm)
  end
  _ARG_1_:ChangeState("playing")
end
ActionStage.Retry = inherits_from(State)
function ActionStage.Retry.constructor(_ARG_0_)
  Game.Log("construct ActionStage.Retry")
end
function ActionStage.Retry.Main(_ARG_0_, _ARG_1_)
  Game.Sleep(1.5)
  Game.Retry()
  Game.Sleep(0)
  _ARG_1_:ChangeState("playing")
end
ActionStage.Playing = inherits_from(State)
function ActionStage.Playing.Main(_ARG_0_, _ARG_1_)
  _ARG_1_:StartPlaying()
  if _ARG_1_.mainHud ~= nil then
    _ARG_1_.mainHud:ProcessMessage("HudSetPlayerCount", {
      value = _ARG_1_:GetLife()
    })
    while true do
      Game.Sleep(10)
    end
  end
end
function ActionStage.Playing.PlayerDies(_ARG_0_, _ARG_1_)
  if _ARG_1_._life > 0 then
    _ARG_1_._life = _ARG_1_._life - 1
    Game.Log("miss!!")
    _ARG_1_:ChangeState("retry")
  else
    _ARG_1_:ChangeState("gameover")
  end
end
ActionStage.Clear = inherits_from(State)
function ActionStage.Clear.Main(_ARG_0_, _ARG_1_)
  Game.Log("Clear:Main")
  _ARG_1_:ControlPause(false)
  CreateTask("missioncompleted")
  Game.PlayBGM("clear")
  if _ARG_1_.mainHud ~= nil then
    _ARG_1_.mainHud:ProcessMessage("HudHide")
  end
  Game.Sleep(5)
  _ARG_1_.notify = false

  -- For loop reconstructed
  for r = 1, 4 do
    if ({
      stage = _ARG_1_.result_name,
      score = _ARG_1_:GetScore(),
      time = _ARG_1_:GetPlayTime(),
      ring = _ARG_1_:GetRingCount(),
      timeBonus = _ARG_1_:CalcTimeBonus(),
      rank = r,
      totalScore = self.score + self.timeBonus,
    }).totalScore > _ARG_1_:GetRankTable()[r] then
      break
    end
  end

  while _ARG_1_.notify == false do
    Game.Sleep(0)
  end
  Game.End()
end
function ActionStage.Clear.HudNotify(_ARG_0_, _ARG_1_, _ARG_2_)
  Game.Log("notify")
  _ARG_1_.notify = true
end
ActionStage.GameOver = inherits_from(State)
function ActionStage.GameOver.Main(_ARG_0_, _ARG_1_)
  Game.Log("GameOver:Main")
  Game.Sleep(5)
  Game.End()
end
