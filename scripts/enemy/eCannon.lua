Enemy.eCannon_Normal = {
  FootHitPoint = 1,
  FootBrokenWait = 10,
  Appear = function(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 1000, 120)
  end,
  Search = function(_ARG_0_)
    eCannon_Rebirth(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    eCannon_Rebirth(_ARG_0_)
    if GetDistance(_ARG_0_) < 1800 then
      TurnTarget(_ARG_0_)
      CallPushState(_ARG_0_, "SubOnRangeAttack")
    else
      MoveFront(_ARG_0_, 1700, 1.5, 3, 0, 3)
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
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineLarge", 5)
  end,
  SubOnRangeAttack = function(_ARG_0_)
    if GetDistance(_ARG_0_) < 600 then
      ShotNormal(_ARG_0_, "LaunchMissile")
      ActionFixed(_ARG_0_, "Special", 1, 2)
      WaitFixed(_ARG_0_, 3)
    elseif GetDistance(_ARG_0_) < 1200 then
      ShotVulcan(_ARG_0_, "Vulcan", 0.125, "gunshot")
      ActionFixed(_ARG_0_, "Sub", 2, 3)
      WaitFixed(_ARG_0_, 3)
    elseif GetDistance(_ARG_0_) < 1800 then
      ShotLaser(_ARG_0_, "LaserCannon", "Blue")
      ActionFixed(_ARG_0_, "Main", 1, 1)
      WaitFixed(_ARG_0_, 3)
    end
  end
}
Enemy.eCannon_Fix = {
  FootHitPoint = 1,
  FootBrokenWait = 7.5,
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
      ShotNormal(_ARG_0_, "LaunchMissile")
      ActionFixed(_ARG_0_, "Special", 1, 2)
      WaitFixed(_ARG_0_, 3)
    elseif distance < 1200 then
      TurnTarget(_ARG_0_)
      ShotVulcan(_ARG_0_, "Vulcan", 0.125, "gunshot")
      ActionFixed(_ARG_0_, "Sub", 2, 3)
      WaitFixed(_ARG_0_, 3)
    else
      TurnTarget(_ARG_0_)
      ShotLaser(_ARG_0_, "LaserCannon", "Blue")
      ActionFixed(_ARG_0_, "Main", 1, 1)
      WaitFixed(_ARG_0_, 3)
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
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineLarge", 5)
  end
}
Enemy.eCannon_Fix_Laser = {
  FootHitPoint = 1,
  FootBrokenWait = 7.5,
  Appear = function(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 1000, 120)
  end,
  Search = function(_ARG_0_)
    eCannon_Rebirth(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    eCannon_Rebirth(_ARG_0_)
    TurnTarget(_ARG_0_)
    ShotLaser(_ARG_0_, "LaserCannon", "Blue")
    ActionFixed(_ARG_0_, "Main", 1, 2)
    WaitFixed(_ARG_0_, 3)
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
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineLarge", 5)
  end
}
Enemy.eCannon_Fix_Launcher = {
  FootHitPoint = 1,
  FootBrokenWait = 7.5,
  Appear = function(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 1000, 120)
  end,
  Search = function(_ARG_0_)
    eCannon_Rebirth(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    eCannon_Rebirth(_ARG_0_)
    TurnTarget(_ARG_0_)
    ShotNormal(_ARG_0_, "LaunchMissile")
    ActionFixed(_ARG_0_, "Special", 2, 3)
    WaitFixed(_ARG_0_, 3)
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
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineLarge", 5)
  end
}
Enemy.eCannon_Wall_Fix = {
  FootHitPoint = 1,
  FootBrokenWait = 7.5,
  Appear = function(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 1000, 120)
  end,
  Search = function(_ARG_0_)
    eCannon_Rebirth(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    eCannon_Rebirth(_ARG_0_)
    TurnTarget(_ARG_0_)
    ShotLaser(_ARG_0_, "LaserCannon", "Blue")
    ActionFixed(_ARG_0_, "Main", 1, 2)
    WaitFixed(_ARG_0_, 3)
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
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineLarge", 5)
  end
}
Enemy.eCannon_Trans = {
  FootHitPoint = 1,
  FootBrokenWait = 10,
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
      EtcTransform(_ARG_0_, 300, 750, "eCannonFly_Trans", 1.25)
    elseif distance < 1200 then
      TurnTarget(_ARG_0_)
      ShotNormal(_ARG_0_, "LaunchMissile")
      ActionFixed(_ARG_0_, "Special", 1, 2)
      WaitFixed(_ARG_0_, 3)
    else
      TurnTarget(_ARG_0_)
      ShotVulcan(_ARG_0_, "Vulcan", 0.125, "gunshot")
      ActionFixed(_ARG_0_, "Sub", 2, 3)
      WaitFixed(_ARG_0_, 3)
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
    EtcTransform(_ARG_0_, 300, 750, "eCannonFly_Trans", 1.25)
  end,
  OnStun = function(_ARG_0_)
    StunAnimation(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineLarge", 5)
  end
}
