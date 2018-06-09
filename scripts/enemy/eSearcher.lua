Enemy.eSearcher_Normal = {
  Appear = function(_ARG_0_)
    CallCreateEnemyInNode(_ARG_0_, "bomexit03", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit02", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit01", "eSearcherOption", "eSearcher_Option", 0)
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
      MoveFront(_ARG_0_, 1700, 1.5, 3, 0, 4.5)
    end
    CallCreateEnemyInNode(_ARG_0_, "bomexit03", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit02", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit01", "eSearcherOption", "eSearcher_Option", 0)
    PossessionFind(_ARG_0_)
    WaitFixed(_ARG_0_, 3)
  end,
  Return = function(_ARG_0_)
    ReturnWarp(_ARG_0_)
    CallCreateEnemyInNode(_ARG_0_, "bomexit03", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit02", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit01", "eSearcherOption", "eSearcher_Option", 0)
  end,
  OnFind = function(_ARG_0_)
    PossessionFind(_ARG_0_)
    FindAnimation(_ARG_0_)
  end,
  OnCaught = function(_ARG_0_)
    CaughtCommon(_ARG_0_)
  end,
  OnDamage = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
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
    CallChaosDrive(_ARG_0_, 1)
    PossessionDie(_ARG_0_)
    DieExplosion(_ARG_0_, "DieMachineMedium", 5)
  end,
  SubOnRangeAttack = function(_ARG_0_)
    if GetDistance(_ARG_0_) < 600 then
      ShotObject(_ARG_0_, "EschBombE", 1000)
      ActionRotate(_ARG_0_, "Main", 1, 2)
      WaitFixed(_ARG_0_, 2.5)
    elseif GetDistance(_ARG_0_) < 1200 then
      CallPossessionState(_ARG_0_, "OnShotLaser")
      WaitFixed(_ARG_0_, 5)
    elseif GetDistance(_ARG_0_) < 1800 then
      CallPossessionState(_ARG_0_, "OnShotVulcanSiege")
      WaitRotate(_ARG_0_, 12.5)
    end
  end
}
Enemy.eSearcher_Fix = {
  Appear = function(_ARG_0_)
    CallCreateEnemyInNode(_ARG_0_, "bomexit03", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit02", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit01", "eSearcherOption", "eSearcher_Option", 0)
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
      ShotVulcan(_ARG_0_, "Vulcan", 0.125, "gunshot")
      ActionRotate(_ARG_0_, "Sub", 4, 8)
      WaitFixed(_ARG_0_, 1.5)
    end
    CallCreateEnemyInNode(_ARG_0_, "bomexit03", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit02", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit01", "eSearcherOption", "eSearcher_Option", 0)
    PossessionFind(_ARG_0_)
    WaitFixed(_ARG_0_, 3)
  end,
  Return = function(_ARG_0_)
    ReturnWarp(_ARG_0_)
    CallCreateEnemyInNode(_ARG_0_, "bomexit03", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit02", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit01", "eSearcherOption", "eSearcher_Option", 0)
  end,
  OnFind = function(_ARG_0_)
    PossessionFind(_ARG_0_)
    FindAnimation(_ARG_0_)
  end,
  OnCaught = function(_ARG_0_)
    CaughtCommon(_ARG_0_)
  end,
  OnDamage = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
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
    CallChaosDrive(_ARG_0_, 1)
    PossessionDie(_ARG_0_)
    DieExplosion(_ARG_0_, "DieMachineMedium", 5)
  end,
  SubOnRangeAttack = function(_ARG_0_)
    if GetDistance(_ARG_0_) < 600 then
      ShotObject(_ARG_0_, "EschBombE", 1000)
      ActionRotate(_ARG_0_, "Main", 1, 2)
      WaitFixed(_ARG_0_, 2.5)
    elseif GetDistance(_ARG_0_) < 1200 then
      CallPossessionState(_ARG_0_, "OnShotLaser")
      WaitFixed(_ARG_0_, 5)
    elseif GetDistance(_ARG_0_) < 1800 then
      CallPossessionState(_ARG_0_, "OnShotVulcanCircle")
      WaitRotate(_ARG_0_, 7.5)
    end
  end
}
Enemy.eSearcher_Fix_Rocket = {
  Appear = function(_ARG_0_)
    CallCreateEnemyInNode(_ARG_0_, "bomexit03", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit02", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit01", "eSearcherOption", "eSearcher_Option", 0)
    AppearDescent(_ARG_0_, 1, 1000, 90)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    CallPossessionState(_ARG_0_, "OnCircle")
    WaitRotate(_ARG_0_, 1.5)
    TurnTarget(_ARG_0_)
    ShotPoint(_ARG_0_, "Rocket_H")
    ActionRotate(_ARG_0_, "Main", 1, 2)
    WaitFixed(_ARG_0_, 2.5)
    TurnTarget(_ARG_0_)
    CallCreateEnemyInNode(_ARG_0_, "bomexit03", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit02", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit01", "eSearcherOption", "eSearcher_Option", 0)
    PossessionFind(_ARG_0_)
    WaitFixed(_ARG_0_, 3)
  end,
  Return = function(_ARG_0_)
    ReturnWarp(_ARG_0_)
    CallCreateEnemyInNode(_ARG_0_, "bomexit03", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit02", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit01", "eSearcherOption", "eSearcher_Option", 0)
  end,
  OnFind = function(_ARG_0_)
    PossessionFind(_ARG_0_)
    FindAnimation(_ARG_0_)
  end,
  OnCaught = function(_ARG_0_)
    CaughtCommon(_ARG_0_)
  end,
  OnDamage = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
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
    CallChaosDrive(_ARG_0_, 1)
    PossessionDie(_ARG_0_)
    DieExplosion(_ARG_0_, "DieMachineMedium", 5)
  end
}
Enemy.eSearcher_Fix_Bomb = {
  Appear = function(_ARG_0_)
    CallCreateEnemyInNode(_ARG_0_, "bomexit03", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit02", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit01", "eSearcherOption", "eSearcher_Option", 0)
    AppearDescent(_ARG_0_, 1, 1000, 90)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    CallPossessionState(_ARG_0_, "OnCircle")
    WaitRotate(_ARG_0_, 1.5)
    TurnTarget(_ARG_0_)
    ShotObject(_ARG_0_, "EschBombE", 1000)
    ActionRotate(_ARG_0_, "Main", 1, 2)
    WaitFixed(_ARG_0_, 2.5)
    TurnTarget(_ARG_0_)
    CallCreateEnemyInNode(_ARG_0_, "bomexit03", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit02", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit01", "eSearcherOption", "eSearcher_Option", 0)
    PossessionFind(_ARG_0_)
    WaitFixed(_ARG_0_, 3)
  end,
  Return = function(_ARG_0_)
    ReturnWarp(_ARG_0_)
    CallCreateEnemyInNode(_ARG_0_, "bomexit03", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit02", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit01", "eSearcherOption", "eSearcher_Option", 0)
  end,
  OnFind = function(_ARG_0_)
    PossessionFind(_ARG_0_)
    FindAnimation(_ARG_0_)
  end,
  OnCaught = function(_ARG_0_)
    CaughtCommon(_ARG_0_)
  end,
  OnDamage = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
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
    CallChaosDrive(_ARG_0_, 1)
    PossessionDie(_ARG_0_)
    DieExplosion(_ARG_0_, "DieMachineMedium", 5)
  end
}
Enemy.eSearcher_Alarm = {
  Appear = function(_ARG_0_)
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    CallPossessionState(_ARG_0_, "OnCircle")
    WaitRotate(_ARG_0_, 1.5)
    if GetDistance(_ARG_0_) < 1800 then
      MoveHeight(_ARG_0_, 450, false)
      TurnTarget(_ARG_0_)
      CallPushState(_ARG_0_, "SubOnRangeAttack")
      MoveHeight(_ARG_0_, 0, false)
    else
      MoveHeight(_ARG_0_, 0, false)
    end
    CallCreateEnemyInNode(_ARG_0_, "bomexit03", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit02", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit01", "eSearcherOption", "eSearcher_Option", 0)
    PossessionFind(_ARG_0_)
    CallPossessionState(_ARG_0_, "OnCircle")
    WaitFixed(_ARG_0_, 3)
  end,
  Return = function(_ARG_0_)
    ReturnWarp(_ARG_0_)
    CallCreateEnemyInNode(_ARG_0_, "bomexit03", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit02", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit01", "eSearcherOption", "eSearcher_Option", 0)
  end,
  OnFind = function(_ARG_0_)
    WaitAnimation(_ARG_0_, "Warning")
    GroupBoot(_ARG_0_)
    WaitFixed(_ARG_0_, 1.5)
    GroupFind(_ARG_0_)
    MoveHeight(_ARG_0_, 450, false)
    CallCreateEnemyInNode(_ARG_0_, "bomexit03", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit02", "eSearcherOption", "eSearcher_Option", 0)
    CallCreateEnemyInNode(_ARG_0_, "bomexit01", "eSearcherOption", "eSearcher_Option", 0)
    PossessionFind(_ARG_0_)
  end,
  OnCaught = function(_ARG_0_)
    CaughtCommon(_ARG_0_)
  end,
  OnDamage = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnSmash = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    MoveHeight(_ARG_0_, 0, false)
    CallPossessionState(_ARG_0_, "OnStun")
    StunFly(_ARG_0_, 300, 100)
    MoveHeight(_ARG_0_, 450, false)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 1)
    PossessionDie(_ARG_0_)
    DieExplosion(_ARG_0_, "DieMachineMedium", 5)
    GroupDie(_ARG_0_)
  end,
  SubOnRangeAttack = function(_ARG_0_)
    if GetDistance(_ARG_0_) < 600 then
      ShotObject(_ARG_0_, "EschBombE", 1000)
      ActionRotate(_ARG_0_, "Main", 1, 2)
      WaitFixed(_ARG_0_, 2.5)
    elseif GetDistance(_ARG_0_) < 1200 then
      CallPossessionState(_ARG_0_, "OnShotLaser")
      WaitFixed(_ARG_0_, 5)
    elseif GetDistance(_ARG_0_) < 1800 then
      CallPossessionState(_ARG_0_, "OnShotVulcanCircle")
      WaitRotate(_ARG_0_, 7.5)
    end
  end
}
Enemy.eSearcher_Option = {
  Appear = function(_ARG_0_)
    MoveWithCircleWarp(_ARG_0_, 300, 100)
  end,
  Search = function(_ARG_0_)
    MoveWithCircle(_ARG_0_, 300, 100, 60, 0)
  end,
  Action = function(_ARG_0_)
    MoveWithCircle(_ARG_0_, 300, 100, 60, 0)
  end,
  OnCircle = function(_ARG_0_)
    MoveWithCircle(_ARG_0_, 300, 100, -60, 0)
  end,
  OnShotLaser = function(_ARG_0_)
    ShotLaser(_ARG_0_, "LaserBeam", "Blue")
    ActionWithCircle(_ARG_0_, "Sub", 10, 10, 400, 300, 60)
  end,
  OnShotHomingLaser = function(_ARG_0_)
    ShotLaserHM(_ARG_0_, "LaserGun", "Blue", -50, 0.5)
    ActionFixed(_ARG_0_, "Main", 1, 1)
  end,
  OnShotVulcanCircle = function(_ARG_0_)
    MoveWithCircle(_ARG_0_, 600, 300, 0, 2)
    ShotVulcan(_ARG_0_, "Vulcan", 0.125, "gunshot")
    ActionRotate(_ARG_0_, "Main", 1, 2)
  end,
  OnShotVulcanSiege = function(_ARG_0_)
    MoveWithCircle(_ARG_0_, 350, GetRandom(_ARG_0_) * 150 + 50, -10, 2)
    TurnTarget(_ARG_0_)
    MoveSiege(_ARG_0_, 200, 500, 1, 2, 0.3, 3)
    ShotVulcan(_ARG_0_, "Vulcan", 0.125, "gunshot")
    ActionRotate(_ARG_0_, "Main", 1, 1)
    MoveSiege(_ARG_0_, 200, 400, 1, 2, 0.3, 3)
    ShotVulcan(_ARG_0_, "Vulcan", 0.125, "gunshot")
    ActionRotate(_ARG_0_, "Main", 1, 1)
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
