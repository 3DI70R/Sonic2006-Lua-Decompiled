Enemy.eBluster_Normal = {
  Appear = function(_ARG_0_)
    CallMessage(_ARG_0_, "StealthOn")
    AppearDescent(_ARG_0_, 0.75, 1250, 90)
  end,
  Search = function(_ARG_0_)
    CallMessage(_ARG_0_, "StealthOn")
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    MoveSiege(_ARG_0_, 750, 1000, 1.5, 3, 1, 3)
    TurnTarget(_ARG_0_)
    ShotNormal(_ARG_0_, "EnemyLaser")
    ActionFixed(_ARG_0_, "Main", 2, 3)
    WaitFixed(_ARG_0_, 3)
  end,
  Return = function(_ARG_0_)
    ReturnWarp(_ARG_0_)
    CallMessage(_ARG_0_, "StealthOn")
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
    CallMessage(_ARG_0_, "StealthOff")
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    CallMessage(_ARG_0_, "StealthOff")
    StunFly(_ARG_0_, 300, 100)
  end,
  OnDead = function(_ARG_0_)
    CallMessage(_ARG_0_, "StealthOff")
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineMedium", 5)
    GroupDie(_ARG_0_)
  end
}
Enemy.eBluster_Fix = {
  Appear = function(_ARG_0_)
    CallMessage(_ARG_0_, "StealthOn")
    AppearDescent(_ARG_0_, 0.75, 1250, 90)
  end,
  Search = function(_ARG_0_)
    CallMessage(_ARG_0_, "StealthOn")
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    TurnTarget(_ARG_0_)
    ShotNormal(_ARG_0_, "EnemyLaser")
    ActionFixed(_ARG_0_, "Main", 2, 3)
    WaitFixed(_ARG_0_, 3)
  end,
  Return = function(_ARG_0_)
    ReturnWarp(_ARG_0_)
    CallMessage(_ARG_0_, "StealthOn")
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
    CallMessage(_ARG_0_, "StealthOff")
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    CallMessage(_ARG_0_, "StealthOff")
    StunFly(_ARG_0_, 300, 100)
  end,
  OnDead = function(_ARG_0_)
    CallMessage(_ARG_0_, "StealthOff")
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineMedium", 5)
    GroupDie(_ARG_0_)
  end
}
Enemy.eBluster_Homing = {
  Appear = function(_ARG_0_)
    CallMessage(_ARG_0_, "StealthOn")
    AppearDescent(_ARG_0_, 0.75, 1250, 90)
  end,
  Search = function(_ARG_0_)
    CallMessage(_ARG_0_, "StealthOn")
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    TurnTarget(_ARG_0_)
  end,
  Return = function(_ARG_0_)
    ReturnWarp(_ARG_0_)
    CallMessage(_ARG_0_, "StealthOn")
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
    CallMessage(_ARG_0_, "StealthOff")
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    CallMessage(_ARG_0_, "StealthOff")
    StunFly(_ARG_0_, 300, 100)
  end,
  OnDead = function(_ARG_0_)
    CallMessage(_ARG_0_, "StealthOff")
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineMedium", 5)
    GroupDie(_ARG_0_)
  end
}
