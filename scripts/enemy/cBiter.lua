Enemy.cBiter_Normal = {
  Appear = function(_ARG_0_)
    UnderGroundAppear(_ARG_0_, "cBiterImpact", 0)
  end,
  Search = function(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    if GetDistance(_ARG_0_) < 1800 then
      TurnTarget(_ARG_0_)
      CallPushState(_ARG_0_, "SubOnRangeAttack")
    else
      MoveSiege(_ARG_0_, 1500, 1700, 1.5, 3, 0, 3)
    end
  end,
  OnFind = function(_ARG_0_)
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
    DieRagdoll(_ARG_0_, 1, 1.5)
    CallPowerCore(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieFlameMedium", 1)
  end,
  SubOnRangeAttack = function(_ARG_0_)
    if GetDistance(_ARG_0_) < 900 then
      ShotFireBreath(_ARG_0_, "cBiter_F", "MiniBreath", 0, 0, 0, 0, 0)
      ActionRotate(_ARG_0_, "Special", 1, 1)
      WaitFixed(_ARG_0_, 3)
    elseif GetDistance(_ARG_0_) < 1800 then
      MoveJumpAttackFrame(_ARG_0_, 1, 500, 1000, 0.5)
      WaitFixed(_ARG_0_, 3)
    end
  end
}
Enemy.cBiter_Fix = {
  Appear = function(_ARG_0_)
    UnderGroundAppear(_ARG_0_, "cBiterImpact", 0)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    TurnTarget(_ARG_0_)
    ShotFireBreath(_ARG_0_, "cBiter_F", "MiniBreath", 0, 0, 0, 0, 0)
    ActionRotate(_ARG_0_, "Special", 1, 1)
    WaitFixed(_ARG_0_, 5)
  end,
  OnFind = function(_ARG_0_)
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
    DieRagdoll(_ARG_0_, 1, 1.5)
    CallPowerCore(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieFlameMedium", 1)
  end
}
Enemy.cBiter_Wall_Normal = {
  Appear = function(_ARG_0_)
    UnderGroundAppear(_ARG_0_, "cBiterImpact", 0)
  end,
  Search = function(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    if GetDistance(_ARG_0_) < 1800 then
      TurnTarget(_ARG_0_)
      CallPushState(_ARG_0_, "SubOnRangeAttack")
    else
      MoveSiege(_ARG_0_, 1500, 1700, 1.5, 3, 0, 3)
    end
  end,
  OnFind = function(_ARG_0_)
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
    DieRagdoll(_ARG_0_, 1, 1.5)
    CallPowerCore(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieFlameMedium", 1)
  end,
  SubOnRangeAttack = function(_ARG_0_)
    if GetDistance(_ARG_0_) < 900 then
      ShotFireBreath(_ARG_0_, "cBiter_F", "MiniBreath", 0, 0, 0, 0, 0)
      ActionRotate(_ARG_0_, "Special", 1, 1)
      WaitFixed(_ARG_0_, 1.5)
    elseif GetDistance(_ARG_0_) < 1800 then
      MoveJumpAttackFrame(_ARG_0_, 1, 500, 1000, 0.5)
      WaitFixed(_ARG_0_, 3)
    end
  end
}
Enemy.cBiter_Wall_Fix = {
  Appear = function(_ARG_0_)
    UnderGroundAppear(_ARG_0_, "cBiterImpact", 0)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    TurnTarget(_ARG_0_)
    ShotFireBreath(_ARG_0_, "cBiter_F", "MiniBreath", 0, 0, 0, 0, 0)
    ActionRotate(_ARG_0_, "Special", 1, 1)
    WaitFixed(_ARG_0_, 5)
  end,
  OnFind = function(_ARG_0_)
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
    DieRagdoll(_ARG_0_, 1, 1.5)
    CallPowerCore(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieFlameMedium", 1)
  end
}
Enemy.cBiter_Freeze = {
  Appear = function(_ARG_0_)
    SearchFreeze(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchFreeze(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    TurnTarget(_ARG_0_)
    ShotFireBreath(_ARG_0_, "cBiter_F", "MiniBreath", 0, 0, 0, 0, 0)
    ActionRotate(_ARG_0_, "Special", 1, 1)
    WaitFixed(_ARG_0_, 5)
  end,
  OnFind = function(_ARG_0_)
    UnderGroundAppear(_ARG_0_, "cBiterImpact", 0.5)
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
    DieRagdoll(_ARG_0_, 1, 1.5)
    CallPowerCore(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieFlameMedium", 1)
  end
}
