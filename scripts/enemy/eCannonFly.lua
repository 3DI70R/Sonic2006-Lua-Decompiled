Enemy.eCannonFly_Normal = {
  FootHitPoint = 1,
  FootBrokenWait = 7.5,
  Appear = function(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 1000, 120)
  end,
  Search = function(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    distance = GetDistance(_ARG_0_)
    if distance < 750 then
      TurnTarget(_ARG_0_)
      ShotVulcan(_ARG_0_, "Vulcan", 0.125, "gunshot")
      ActionRotate(_ARG_0_, "Sub", 2, 3)
      WaitFixed(_ARG_0_, 3)
    else
      TurnTarget(_ARG_0_)
      ShotNormal(_ARG_0_, "LaunchMissile")
      ActionFixed(_ARG_0_, "Main", 1, 2)
      WaitFixed(_ARG_0_, 3)
    end
    MoveSiege(_ARG_0_, 750, 1000, 1.5, 3, 0, 3)
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
  end,
  OnStun = function(_ARG_0_)
    StunGround(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineLarge", 5)
  end
}
Enemy.eCannonFly_Fix = {
  FootHitPoint = 1,
  FootBrokenWait = 7.5,
  Appear = function(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 1000, 120)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    distance = GetDistance(_ARG_0_)
    if distance < 750 then
      TurnTarget(_ARG_0_)
      ShotVulcan(_ARG_0_, "Vulcan", 0.125, "gunshot")
      ActionRotate(_ARG_0_, "Sub", 2, 3)
      WaitFixed(_ARG_0_, 3)
    else
      TurnTarget(_ARG_0_)
      ShotNormal(_ARG_0_, "LaunchMissile")
      ActionFixed(_ARG_0_, "Main", 1, 2)
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
  end,
  OnStun = function(_ARG_0_)
    StunGround(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineLarge", 5)
  end
}
Enemy.eCannonFly_Trans = {
  FootHitPoint = 1,
  FootBrokenWait = 7.5,
  Appear = function(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 1000, 120)
  end,
  Search = function(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    distance = GetDistance(_ARG_0_)
    if distance < 750 then
      TurnTarget(_ARG_0_)
      ShotVulcan(_ARG_0_, "Vulcan", 0.125, "gunshot")
      ActionRotate(_ARG_0_, "Sub", 2, 3)
      WaitFixed(_ARG_0_, 3)
    else
      TurnTarget(_ARG_0_)
      ShotNormal(_ARG_0_, "LaunchMissile")
      ActionFixed(_ARG_0_, "Main", 1, 2)
      WaitFixed(_ARG_0_, 3)
    end
    EtcTransform(_ARG_0_, -300, 500, "eCannon_Trans", 1.25)
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
    EtcTransform(_ARG_0_, -300, 500, "eCannon_Trans")
  end,
  OnStun = function(_ARG_0_)
    StunGround(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineLarge", 5)
  end
}
Enemy.eCannonFly_Carrier = {
  FootHitPoint = 1,
  FootBrokenWait = 7.5,
  Appear = function(_ARG_0_)
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    TurnTarget(_ARG_0_)
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
  end,
  OnStun = function(_ARG_0_)
    StunGround(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineLarge", 5)
  end
}
