Enemy.eBusterFly_Normal = {
  Appear = function(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 1000, 90)
  end,
  Search = function(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    TurnTarget(_ARG_0_)
    ShotNormal(_ARG_0_, "BusterMissile")
    ActionRotate(_ARG_0_, "Extra", 2, 3)
    WaitFixed(_ARG_0_, 3)
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
    CallChaosDrive(_ARG_0_, 3)
    DieExplosion(_ARG_0_, "DieMachineMedium", 5)
  end
}
Enemy.eBusterFly_Fix = {
  Appear = function(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 1000, 90)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    TurnTarget(_ARG_0_)
    ShotNormal(_ARG_0_, "BusterMissile")
    ActionRotate(_ARG_0_, "Extra", 2, 3)
    WaitFixed(_ARG_0_, 3)
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
    CallChaosDrive(_ARG_0_, 3)
    DieExplosion(_ARG_0_, "DieMachineMedium", 5)
  end
}
Enemy.eBusterFly_Trans = {
  Appear = function(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 1500, 120)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    MoveSiegeDash(_ARG_0_, 750, 1500, 0.75, 1.25, 1500, 1750, 3)
    TurnTarget(_ARG_0_)
    ShotNormal(_ARG_0_, "BusterMissile")
    ActionRotate(_ARG_0_, "Extra", 2, 3)
    WaitFixed(_ARG_0_, 0.5)
    TurnTarget(_ARG_0_)
    EtcTransform(_ARG_0_, -300, 1000, "eBuster_Trans", 1.25)
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
    CallChaosDrive(_ARG_0_, 3)
    DieExplosion(_ARG_0_, "DieMachineMedium", 5)
  end
}
