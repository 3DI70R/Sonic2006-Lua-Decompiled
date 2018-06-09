eHunter = {
  SubCreateOption = function(_ARG_0_)
    CallCreateEnemyInNode(_ARG_0_, "bomexit06", "eHunterOption", "eHunter_Option", 1)
    CallCreateEnemyInNode(_ARG_0_, "bomexit05", "eHunterOption", "eHunter_Option", 1)
    CallCreateEnemyInNode(_ARG_0_, "bomexit04", "eHunterOption", "eHunter_Option", 1)
    CallCreateEnemyInNode(_ARG_0_, "bomexit03", "eHunterOption", "eHunter_Option", 1)
    CallCreateEnemyInNode(_ARG_0_, "bomexit02", "eHunterOption", "eHunter_Option", 1)
    CallCreateEnemyInNode(_ARG_0_, "bomexit01", "eHunterOption", "eHunter_Option", 1)
  end
}
Enemy.eHunter_Normal = {
  Appear = function(_ARG_0_)
    eHunter.SubCreateOption(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 1000, 90)
  end,
  Search = function(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    CallPossessionState(_ARG_0_, "OnCircle")
    WaitRotate(_ARG_0_, 1.5)
    if GetDistance(_ARG_0_) < 1800 then
      TurnTarget(_ARG_0_)
      CallPushState(_ARG_0_, "SubOnRangeAttack")
    else
      TurnTarget(_ARG_0_)
      CallPossessionState(_ARG_0_, "OnShotVulcanSiege")
      MoveSiege(_ARG_0_, 1700, 1500, 1.5, 3, 0, 7.5)
    end
    eHunter.SubCreateOption(_ARG_0_)
    PossessionFind(_ARG_0_)
    WaitRotate(_ARG_0_, 1.5)
  end,
  Return = function(_ARG_0_)
    ReturnWarp(_ARG_0_)
  end,
  OnFind = function(_ARG_0_)
    PossessionFind(_ARG_0_)
    FindAnimation(_ARG_0_)
  end,
  OnCaught = function(_ARG_0_)
    CaughtCommon(_ARG_0_)
  end,
  OnSmash = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    CallPossessionState(_ARG_0_, "OnStun")
    StunFly(_ARG_0_, 300, 100)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 2)
    PossessionDie(_ARG_0_)
    DieExplosion(_ARG_0_, "DieMachineMedium", 5)
  end,
  SubOnRangeAttack = function(_ARG_0_)
    if GetDistance(_ARG_0_) < 600 then
      CallPossessionState(_ARG_0_, "OnShotLaserHeight")
      WaitRotate(_ARG_0_, 7.5)
    elseif GetDistance(_ARG_0_) < 1200 then
      CallPossessionState(_ARG_0_, "OnShotHomingLaser")
      WaitRotate(_ARG_0_, 2.5)
    elseif GetDistance(_ARG_0_) < 1800 then
      CallPossessionState(_ARG_0_, "OnShotLaser")
      WaitRotate(_ARG_0_, 2)
      MoveFront(_ARG_0_, 400, 2, 3, 0.4, 6)
      WaitRotate(_ARG_0_, 4)
    end
  end
}
Enemy.eHunter_Fix = {
  Appear = function(_ARG_0_)
    eHunter.SubCreateOption(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 1000, 90)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    CallPossessionState(_ARG_0_, "OnCircle")
    WaitRotate(_ARG_0_, 1.5)
    if GetDistance(_ARG_0_) < 1800 then
      TurnTarget(_ARG_0_)
      CallPushState(_ARG_0_, "SubOnRangeAttack")
    else
      TurnTarget(_ARG_0_)
      CallPossessionState(_ARG_0_, "OnShotVulcanCircle")
      WaitRotate(_ARG_0_, 7.5)
    end
    eHunter.SubCreateOption(_ARG_0_)
    PossessionFind(_ARG_0_)
  end,
  Return = function(_ARG_0_)
    ReturnWarp(_ARG_0_)
    eHunter.SubCreateOption(_ARG_0_)
  end,
  OnFind = function(_ARG_0_)
    PossessionFind(_ARG_0_)
    FindAnimation(_ARG_0_)
  end,
  OnCaught = function(_ARG_0_)
    CaughtCommon(_ARG_0_)
  end,
  OnSmash = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    CallPossessionState(_ARG_0_, "OnStun")
    StunFly(_ARG_0_, 300, 100)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 2)
    PossessionDie(_ARG_0_)
    DieExplosion(_ARG_0_, "DieMachineMedium", 5)
  end,
  SubOnRangeAttack = function(_ARG_0_)
    if GetDistance(_ARG_0_) < 600 then
      CallPossessionState(_ARG_0_, "OnShotLaserHeight")
      WaitRotate(_ARG_0_, 7.5)
    elseif GetDistance(_ARG_0_) < 1200 then
      CallPossessionState(_ARG_0_, "OnShotHomingLaser")
      WaitRotate(_ARG_0_, 2.5)
    elseif GetDistance(_ARG_0_) < 1800 then
      CallPossessionState(_ARG_0_, "OnShotLaser")
      WaitFixed(_ARG_0_, 5)
    end
  end
}
Enemy.eHunter_Hide_Fix = {
  Appear = function(_ARG_0_)
    CallMessage(_ARG_0_, "StealthOn")
    AppearDescent(_ARG_0_, 1, 1000, 90)
  end,
  Search = function(_ARG_0_)
    CallMessage(_ARG_0_, "StealthOn")
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    CallPossessionState(_ARG_0_, "OnCircle")
    WaitRotate(_ARG_0_, 1.5)
    if GetDistance(_ARG_0_) < 1800 then
      TurnTarget(_ARG_0_)
      CallPushState(_ARG_0_, "SubOnRangeAttack")
    else
      TurnTarget(_ARG_0_)
      CallPossessionState(_ARG_0_, "OnShotVulcanCircle")
      WaitRotate(_ARG_0_, 7.5)
    end
    eHunter.SubCreateOption(_ARG_0_)
    PossessionFind(_ARG_0_)
  end,
  Return = function(_ARG_0_)
    ReturnWarp(_ARG_0_)
    CallMessage(_ARG_0_, "StealthOn")
  end,
  OnFind = function(_ARG_0_)
    FindAnimation(_ARG_0_)
    eHunter.SubCreateOption(_ARG_0_)
    PossessionFind(_ARG_0_)
  end,
  OnCaught = function(_ARG_0_)
    CaughtCommon(_ARG_0_)
  end,
  OnSmash = function(_ARG_0_)
    CallMessage(_ARG_0_, "StealthOff")
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    CallMessage(_ARG_0_, "StealthOff")
    CallPossessionState(_ARG_0_, "OnStun")
    StunFly(_ARG_0_, 300, 100)
  end,
  OnDead = function(_ARG_0_)
    CallMessage(_ARG_0_, "StealthOff")
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 2)
    PossessionDie(_ARG_0_)
    DieExplosion(_ARG_0_, "DieMachineMedium", 5)
  end,
  SubOnRangeAttack = function(_ARG_0_)
    if GetDistance(_ARG_0_) < 600 then
      CallPossessionState(_ARG_0_, "OnShotLaserHeight")
      WaitRotate(_ARG_0_, 7.5)
    elseif GetDistance(_ARG_0_) < 1200 then
      CallPossessionState(_ARG_0_, "OnShotHomingLaser")
      WaitRotate(_ARG_0_, 2.5)
    elseif GetDistance(_ARG_0_) < 1800 then
      CallPossessionState(_ARG_0_, "OnShotLaser")
      WaitFixed(_ARG_0_, 5)
    end
  end
}
Enemy.eHunter_Option = {
  Appear = function(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    MoveWithCircle(_ARG_0_, 300, 100, -20, 0)
  end,
  Action = function(_ARG_0_)
    MoveWithCircle(_ARG_0_, 400, 100, -60, 0)
  end,
  OnCircle = function(_ARG_0_)
    MoveWithCircle(_ARG_0_, 400, 100, -60, 0)
  end,
  OnShotLaser = function(_ARG_0_)
    ShotLaser(_ARG_0_, "LaserBeam", "Red")
    ActionWithCircle(_ARG_0_, "Sub", 10, 10, 350, 300, -40)
  end,
  OnShotLaserHeight = function(_ARG_0_)
    MoveWithCircle(_ARG_0_, 200, GetRandom(_ARG_0_) * 150 - 150, -60, 2)
    ShotLaser(_ARG_0_, "LaserBeam", "Red")
    ActionWithCircle(_ARG_0_, "Special", 10, 10, 200, GetRandom(_ARG_0_) * 150 - 150, -180)
  end,
  OnShotHomingLaser = function(_ARG_0_)
    MoveWithCircle(_ARG_0_, 350, 100, -30, 2)
    ShotLaserHM(_ARG_0_, "LaserGun", "Red", -50, 0.5)
    ActionFixed(_ARG_0_, "Special", 1, 1)
  end,
  OnShotVulcanCircle = function(_ARG_0_)
    MoveWithCircle(_ARG_0_, 600, 300, 0, 2)
    ShotVulcan(_ARG_0_, "Vulcan", 0.125, "gunshot")
    ActionRotate(_ARG_0_, "Main", 2, 3)
  end,
  OnShotVulcanSiege = function(_ARG_0_)
    MoveWithCircle(_ARG_0_, 350, GetRandom(_ARG_0_) * 150 + 50, -10, 2)
    TurnTarget(_ARG_0_)
    MoveSiege(_ARG_0_, 200, 500, 1, 2, 0.3, 3)
    ShotVulcan(_ARG_0_, "Vulcan", 0.125, "gunshot")
    ActionRotate(_ARG_0_, "Main", 1, 1)
    MoveSiege(_ARG_0_, 200, 400, 1, 2, 0.3, 3)
    ShotVulcan(_ARG_0_, "Vulcan", 0.125, "gunshot")
    ActionRotate(_ARG_0_, "Main", 1, 2)
  end,
  OnCaught = function(_ARG_0_)
    CaughtCommon(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunFly(_ARG_0_, 200, 50)
  end,
  OnDead = function(_ARG_0_)
    CallChaosDrive(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
  end
}
