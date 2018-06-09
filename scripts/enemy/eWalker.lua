Enemy.eWalker_Normal = {
  FootHitPoint = 2,
  FootBrokenWait = 5,
  Appear = function(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 1000, 120)
  end,
  Search = function(_ARG_0_)
    eCannon_Rebirth(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    eCannon_Rebirth(_ARG_0_)
    distance = GetDistance(_ARG_0_)
    if distance < 600 then
      TurnTarget(_ARG_0_)
      ShotLaserHM(_ARG_0_, "LaserGun", "Yellow", 300, 0.25)
      ActionFixed(_ARG_0_, "Special", 1, 1)
      WaitFixed(_ARG_0_, 2)
    elseif distance < 1200 then
      TurnTarget(_ARG_0_)
      ShotLaser(_ARG_0_, "LaserBeam", "Yellow")
      ActionFixed(_ARG_0_, "Sub", 1, 1)
      WaitFixed(_ARG_0_, 2)
    elseif distance < 1800 then
      TurnTarget(_ARG_0_)
      ShotLaser(_ARG_0_, "LaserCannon", "Yellow")
      ActionFixed(_ARG_0_, "Main", 1, 1)
      WaitFixed(_ARG_0_, 2)
    else
      MoveFront(_ARG_0_, 1800, 1.5, 3, 0, 3)
      TurnTarget(_ARG_0_)
      ShotLaser(_ARG_0_, "LaserCannon", "Yellow")
      ActionFixed(_ARG_0_, "Main", 1, 1)
      WaitFixed(_ARG_0_, 2)
    end
  end,
  Return = function(_ARG_0_)
    ReturnWarp(_ARG_0_)
  end,
  OnFind = function(_ARG_0_)
  end,
  OnCaught = function(_ARG_0_)
    CaughtCommon(_ARG_0_)
  end,
  OnSmash = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunAnimation(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 3)
    DieExplosion(_ARG_0_, "DieMachineLarge", 5)
  end
}
Enemy.eWalker_Fix = {
  FootHitPoint = 2,
  FootBrokenWait = 5,
  Appear = function(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 1000, 120)
  end,
  Search = function(_ARG_0_)
    eCannon_Rebirth(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    eCannon_Rebirth(_ARG_0_)
    distance = GetDistance(_ARG_0_)
    if distance < 600 then
      TurnTarget(_ARG_0_)
      ShotLaserHM(_ARG_0_, "LaserGun", "Yellow", 300, 0.25)
      ActionFixed(_ARG_0_, "Special", 1, 1)
      WaitFixed(_ARG_0_, 2)
    elseif distance < 1200 then
      TurnTarget(_ARG_0_)
      ShotLaser(_ARG_0_, "LaserBeam", "Yellow")
      ActionFixed(_ARG_0_, "Sub", 1, 1)
      WaitFixed(_ARG_0_, 2)
    else
      TurnTarget(_ARG_0_)
      ShotLaser(_ARG_0_, "LaserCannon", "Yellow")
      ActionFixed(_ARG_0_, "Main", 1, 1)
      WaitFixed(_ARG_0_, 2)
    end
  end,
  Return = function(_ARG_0_)
    ReturnWarp(_ARG_0_)
  end,
  OnFind = function(_ARG_0_)
  end,
  OnCaught = function(_ARG_0_)
    CaughtCommon(_ARG_0_)
  end,
  OnSmash = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunAnimation(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 3)
    DieExplosion(_ARG_0_, "DieMachineLarge", 5)
  end
}
Enemy.eWalker_Wall_Fix = {
  FootHitPoint = 2,
  FootBrokenWait = 5,
  Appear = function(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 1000, 120)
  end,
  Search = function(_ARG_0_)
    eCannon_Rebirth(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    eCannon_Rebirth(_ARG_0_)
    distance = GetDistance(_ARG_0_)
    if distance < 600 then
      TurnTarget(_ARG_0_)
      ShotLaserHM(_ARG_0_, "LaserGun", "Yellow", 300, 0.25)
      ActionFixed(_ARG_0_, "Special", 1, 1)
      WaitFixed(_ARG_0_, 2)
    elseif distance < 1200 then
      TurnTarget(_ARG_0_)
      ShotLaser(_ARG_0_, "LaserBeam", "Yellow")
      ActionFixed(_ARG_0_, "Sub", 1, 1)
      WaitFixed(_ARG_0_, 2)
    else
      TurnTarget(_ARG_0_)
      ShotLaser(_ARG_0_, "LaserCannon", "Yellow")
      ActionFixed(_ARG_0_, "Main", 1, 1)
      WaitFixed(_ARG_0_, 2)
    end
  end,
  Return = function(_ARG_0_)
    ReturnWarp(_ARG_0_)
  end,
  OnFind = function(_ARG_0_)
  end,
  OnCaught = function(_ARG_0_)
    CaughtCommon(_ARG_0_)
  end,
  OnSmash = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunAnimation(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 3)
    DieExplosion(_ARG_0_, "DieMachineLarge", 5)
  end
}
