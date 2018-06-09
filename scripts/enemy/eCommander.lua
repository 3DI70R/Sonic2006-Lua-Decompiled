Enemy.eCommander_Normal = {
  Appear = function(_ARG_0_)
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    MoveSiege(_ARG_0_, 750, 1000, 1.5, 3, 1, 3)
    GuardRotate(_ARG_0_, 2)
    WaitFixed(_ARG_0_, 1)
    ChargeAttack(_ARG_0_, 1500, 2000, 1.5)
    WaitFixed(_ARG_0_, 2)
  end,
  Return = function(_ARG_0_)
    ReturnWarp(_ARG_0_)
  end,
  OnFind = function(_ARG_0_)
    FindAnimation(_ARG_0_)
    GroupFind(_ARG_0_)
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
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
  end
}
Enemy.eCommander_Fix = {
  Appear = function(_ARG_0_)
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    GuardRotate(_ARG_0_, 2.5)
    WaitFixed(_ARG_0_, 1)
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
    GroupFind(_ARG_0_)
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
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
  end
}
Enemy.eCommander_Master = {
  Appear = function(_ARG_0_)
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    WaitAnimation(_ARG_0_, "Command")
    GroupCommand(_ARG_0_, "SubRoundersSiege")
    WaitFixed(_ARG_0_, 1)
    GuardRotate(_ARG_0_, 5)
    WaitFixed(_ARG_0_, 2.5)
    WaitAnimation(_ARG_0_, "Command")
    GroupCommand(_ARG_0_, "SubRoundersCharge")
    WaitFixed(_ARG_0_, 1)
    GuardRotate(_ARG_0_, 5)
    WaitFixed(_ARG_0_, 2.5)
  end,
  Return = function(_ARG_0_)
    ReturnWarp(_ARG_0_)
  end,
  OnFind = function(_ARG_0_)
    FindAnimation(_ARG_0_)
    GroupFind(_ARG_0_)
    WaitFixed(_ARG_0_, 2.5)
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
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
    GroupDie(_ARG_0_)
  end
}
Enemy.eCommander_Alarm = {
  Appear = function(_ARG_0_)
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    GroupFind(_ARG_0_)
    WaitAnimation(_ARG_0_, "Command")
    GroupCommand(_ARG_0_, "SubRoundersSiege")
    WaitFixed(_ARG_0_, 1)
    GuardRotate(_ARG_0_, 5)
    WaitFixed(_ARG_0_, 2.5)
    WaitAnimation(_ARG_0_, "Command")
    GroupCommand(_ARG_0_, "SubRoundersCharge")
    WaitFixed(_ARG_0_, 1)
    GuardRotate(_ARG_0_, 5)
    WaitFixed(_ARG_0_, 2.5)
    ChargeAttack(_ARG_0_, 1500, 2000, 1.5)
    WaitFixed(_ARG_0_, 2)
  end,
  Return = function(_ARG_0_)
    ReturnWarp(_ARG_0_)
  end,
  OnFind = function(_ARG_0_)
    WaitAnimation(_ARG_0_, "Warning")
    GroupBoot(_ARG_0_)
    WaitFixed(_ARG_0_, 2.5)
    GroupFind(_ARG_0_)
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
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
    GroupDie(_ARG_0_)
  end
}
