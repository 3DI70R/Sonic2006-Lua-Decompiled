Enemy.eRounder_Normal = {
  Appear = function(_ARG_0_)
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    MoveFront(_ARG_0_, 250, 1.5, 2.5, 0, 5)
    TurnTarget(_ARG_0_)
    CreateExplosion(_ARG_0_, "EnemyImpactS")
    ActionRotate(_ARG_0_, "Main", 1, 1.5)
    WaitFixed(_ARG_0_, 3)
    MoveBack(_ARG_0_, 1000, 1.5, 3, 0.5, 5, false)
    TurnTarget(_ARG_0_)
    ChargeAttack(_ARG_0_, 1500, 2000, 1.5)
    WaitFixed(_ARG_0_, 3)
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
    DieRagdoll(_ARG_0_, 0.1, 1.5)
    CallChaosDrive(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
  end
}
Enemy.eRounder_Fix = {
  Appear = function(_ARG_0_)
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    TurnTarget(_ARG_0_)
    CreateExplosion(_ARG_0_, "EnemyImpactS")
    ActionRotate(_ARG_0_, "Main", 1, 1.5)
    WaitFixed(_ARG_0_, 3)
  end,
  Return = function(_ARG_0_)
    ReturnWarp(_ARG_0_)
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
    DieRagdoll(_ARG_0_, 0.1, 1.5)
    CallChaosDrive(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
  end
}
Enemy.eRounder_Slave = {
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
    DieRagdoll(_ARG_0_, 0.1, 1.5)
    CallChaosDrive(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
  end,
  SubRoundersSiege = function(_ARG_0_)
    FindAnimation(_ARG_0_)
    MoveSiege(_ARG_0_, 750, 1000, 3, 3, 0, 3)
  end,
  SubRoundersFront = function(_ARG_0_)
    FindAnimation(_ARG_0_)
    MoveFront(_ARG_0_, 500, 30, 1.5, 30)
    WaitFixed(_ARG_0_, 3)
  end,
  SubRoundersBack = function(_ARG_0_)
    FindAnimation(_ARG_0_)
    MoveBack(_ARG_0_, 1250, 1.5, 3, 0.5, 5, true)
    WaitFixed(_ARG_0_, 3)
  end,
  SubRoundersCharge = function(_ARG_0_)
    FindAnimation(_ARG_0_)
    TurnTarget(_ARG_0_)
    ChargeAttack(_ARG_0_, 1500, 2000, 1.5)
    WaitFixed(_ARG_0_, 3)
  end
}
Enemy.eRounder_Twn_Chase = {
  Appear = function(_ARG_0_)
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    MoveTracking(_ARG_0_, 10)
    TurnTarget(_ARG_0_)
    ChargeAttack(_ARG_0_, 1500, 2000, 1.5)
    WaitFixed(_ARG_0_, 3)
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
    DieRagdoll(_ARG_0_, 0.1, 1.5)
    CallChaosDrive(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
  end
}
Enemy.eRounder_Twn_Escape = {
  Appear = function(_ARG_0_)
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    MoveEscape(_ARG_0_, 10)
    MoveHide(_ARG_0_, 10)
    MoveVisible(_ARG_0_)
    TurnTarget(_ARG_0_)
    CreateExplosion(_ARG_0_, "EnemyImpactS")
    ActionRotate(_ARG_0_, "Main", 1, 1.5)
    WaitFixed(_ARG_0_, 3)
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
    DieRagdoll(_ARG_0_, 0.1, 1.5)
    CallChaosDrive(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
  end
}
Enemy.eRounder_Boss = {
  Appear = function(_ARG_0_)
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    MoveFront(_ARG_0_, 250, 1.5, 2.5, 0, 5)
    TurnTarget(_ARG_0_)
    CreateExplosion(_ARG_0_, "EnemyImpactS")
    ActionRotate(_ARG_0_, "Main", 1, 1.5)
    WaitFixed(_ARG_0_, 3)
    MoveBack(_ARG_0_, 1000, 1.5, 3, 0.5, 5, false)
    TurnTarget(_ARG_0_)
    ChargeAttack(_ARG_0_, 1500, 2000, 1.5)
    WaitFixed(_ARG_0_, 3)
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
    DieRagdoll(_ARG_0_, 0.5, 5)
    CallChaosDrive(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
  end
}
