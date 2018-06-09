Enemy.eLancerFly_Normal = {
  Appear = function(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 1000, 90)
  end,
  Search = function(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    if GetDistance(_ARG_0_) < 2100 then
      TurnTarget(_ARG_0_)
      CallPushState(_ARG_0_, "SubOnRangeAttack")
    else
      MoveSiege(_ARG_0_, 1200, 1800, 1.5, 3, 0, 3)
    end
  end,
  OnFind = function(_ARG_0_)
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
    StunGround(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineMedium", 5)
  end,
  SubOnRangeAttack = function(_ARG_0_)
    if GetDistance(_ARG_0_) < 1000 then
      ShotVulcan(_ARG_0_, "Vulcan", 0.125, "gunshot")
      ActionFixed(_ARG_0_, "Sub", 3, 5)
      WaitFixed(_ARG_0_, 2.5)
    else
      ShotNormal(_ARG_0_, "EnemyLaser")
      ActionRotate(_ARG_0_, "Main", 2, 3)
      WaitFixed(_ARG_0_, 2.5)
    end
  end
}
Enemy.eLancerFly_Fix = {
  Appear = function(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 1000, 90)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    TurnTarget(_ARG_0_)
    CallPushState(_ARG_0_, "SubOnRangeAttack")
  end,
  OnFind = function(_ARG_0_)
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
    StunGround(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineMedium", 5)
  end,
  SubOnRangeAttack = function(_ARG_0_)
    if GetDistance(_ARG_0_) < 1000 then
      ShotVulcan(_ARG_0_, "Vulcan", 0.125, "gunshot")
      ActionFixed(_ARG_0_, "Sub", 3, 5)
      WaitFixed(_ARG_0_, 2.5)
    else
      ShotNormal(_ARG_0_, "EnemyLaser")
      ActionRotate(_ARG_0_, "Main", 2, 3)
      WaitFixed(_ARG_0_, 2.5)
    end
  end
}
Enemy.eLancerFly_Fix_Laser = {
  Appear = function(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 1500, 120)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    TurnTarget(_ARG_0_)
    ShotNormal(_ARG_0_, "EnemyLaser")
    ActionRotate(_ARG_0_, "Main", 2, 3)
    WaitFixed(_ARG_0_, 5)
  end,
  Return = function(_ARG_0_)
    ReturnWarp(_ARG_0_)
  end,
  OnFind = function(_ARG_0_)
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
    StunGround(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineMedium", 5)
  end
}
Enemy.eLancerFly_Chase = {
  Appear = function(_ARG_0_)
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    MovePath(_ARG_0_, 1000, 10000, 4, false)
    MovePath(_ARG_0_, 750, 8000, 1, true)
    ShotNormal(_ARG_0_, "EnemyLaser")
    ActionPath(_ARG_0_, "Sub", 7, 500, 7000, true)
    MovePath(_ARG_0_, 1000, 9000, 2, false)
    MovePath(_ARG_0_, 750, 8000, 1, true)
    ShotNormal(_ARG_0_, "EnemyLaser")
    ActionPath(_ARG_0_, "Sub", 7, 500, 7000, true)
    MovePath(_ARG_0_, 1000, 9000, 2, false)
    MovePath(_ARG_0_, 750, 8000, 1, true)
    ShotNormal(_ARG_0_, "EnemyLaser")
    ActionPath(_ARG_0_, "Sub", 7, 500, 7000, true)
    MovePath(_ARG_0_, 1000, 10000, 100, false)
  end,
  OnFind = function(_ARG_0_)
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
    StunGround(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineMedium", 5)
  end
}
Enemy.eLancerFly_Trans = {
  Appear = function(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 1500, 120)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    MoveSiegeDash(_ARG_0_, 750, 1500, 0.75, 1.25, 1400, 1600, 3)
    TurnTarget(_ARG_0_)
    ShotNormal(_ARG_0_, "EnemyLaser")
    ActionRotate(_ARG_0_, "Main", 2, 3)
    WaitFixed(_ARG_0_, 5)
    TurnTarget(_ARG_0_)
    EtcTransform(_ARG_0_, -300, 1000, "eLancer_Trans", 1.25)
  end,
  Return = function(_ARG_0_)
    ReturnWarp(_ARG_0_)
  end,
  OnFind = function(_ARG_0_)
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
    StunGround(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineMedium", 5)
  end
}
