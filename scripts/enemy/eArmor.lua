Enemy.eArmor_Normal = {
  Appear = function(_ARG_0_)
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    WaitFixed(_ARG_0_, 2.5)
    TurnTarget(_ARG_0_)
    ChargeAttack(_ARG_0_, 1500, 2000, 1.5)
    WaitFixed(_ARG_0_, 2.5)
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
    StunAnimation(_ARG_0_)
    StunEnd(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunBall(_ARG_0_, "Spine", 70)
  end,
  OnDead = function(_ARG_0_)
    CallReleasePossession(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
  end
}
Enemy.eArmor_Fix = {
  Appear = function(_ARG_0_)
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    TurnTarget(_ARG_0_)
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
    StunAnimation(_ARG_0_)
    StunEnd(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunBall(_ARG_0_, "Spine", 70)
  end,
  OnDead = function(_ARG_0_)
    CallReleasePossession(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
  end
}
