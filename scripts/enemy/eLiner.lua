Enemy.eLiner_Normal = {
  Appear = function(_ARG_0_)
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    MoveSwing(_ARG_0_, 500, 750, 3)
    TurnTarget(_ARG_0_)
    ShotObject(_ARG_0_, "EschBomb", 500)
    ActionRotate(_ARG_0_, "Main", 1, 1)
    WaitFixed(_ARG_0_, 1.5)
    TurnTarget(_ARG_0_)
    ChargeAttack(_ARG_0_, 1500, 2000, 1.5)
    WaitFixed(_ARG_0_, 1.5)
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
  OnStun = function(_ARG_0_)
    StunAnimation(_ARG_0_)
  end,
  OnGuardBreak = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
    StunAnimation(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
  end
}
Enemy.eLiner_Chase = {
  Appear = function(_ARG_0_)
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    MoveParallel(_ARG_0_, 500, 60, 2000, 5)
    ShotObject(_ARG_0_, "EschBomb", 500)
    ActionRotate(_ARG_0_, "Main", 1, 1)
    WaitFixed(_ARG_0_, 1.5)
  end,
  OnFind = function(_ARG_0_)
    FindAnimation(_ARG_0_)
  end,
  OnDamage = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnCaught = function(_ARG_0_)
    CaughtCommon(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunAnimation(_ARG_0_)
  end,
  OnGuardBreak = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
    StunAnimation(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
  end
}
Enemy.eLiner_Slave = {
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
  OnCaught = function(_ARG_0_)
    CaughtCommon(_ARG_0_)
  end,
  OnDamage = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunAnimation(_ARG_0_)
  end,
  OnGuardBreak = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
    StunAnimation(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
  end,
  SubLinersSwing = function(_ARG_0_)
    FindAnimation(_ARG_0_)
    MoveSwing(_ARG_0_, 500, 750, 3)
  end,
  SubLinersFront = function(_ARG_0_)
    FindAnimation(_ARG_0_)
    MoveFront(_ARG_0_, 500, 30, 1.5, 30)
    WaitFixed(_ARG_0_, 3)
  end,
  SubLinersBack = function(_ARG_0_)
    FindAnimation(_ARG_0_)
    MoveBack(_ARG_0_, 1250, 1.5, 3, 0.5, 5, true)
    WaitFixed(_ARG_0_, 3)
  end,
  SubLinersCharge = function(_ARG_0_)
    FindAnimation(_ARG_0_)
    TurnTarget(_ARG_0_)
    ChargeAttack(_ARG_0_, 1500, 2000, 1.5)
    WaitFixed(_ARG_0_, 3)
  end
}
