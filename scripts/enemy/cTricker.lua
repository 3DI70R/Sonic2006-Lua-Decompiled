Enemy.cTricker_Normal = {
  Appear = function(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 750, 90)
  end,
  Search = function(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    distance = GetDistance(_ARG_0_)
    if distance < 750 then
      TurnTarget(_ARG_0_)
      WaitPosAdjustment(_ARG_0_, 380, 500, 150, 2)
      GlidingAttack(_ARG_0_, 2500)
      WaitFixed(_ARG_0_, 2.5)
    else
      MoveSwing(_ARG_0_, 500, 750, 3)
      TurnTarget(_ARG_0_)
      WaitPosAdjustment(_ARG_0_, 380, 500, 150, 2)
      GlidingAttack(_ARG_0_, 2500)
      WaitFixed(_ARG_0_, 2.5)
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
    StunFly(_ARG_0_, 300, 100)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.75, 1.5)
    CallPowerCore(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieChaosSmall", 1)
  end
}
Enemy.cTricker_Fix = {
  Appear = function(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 750, 90)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    TurnTarget(_ARG_0_)
    ShotNormal(_ARG_0_, "DarkShot")
    ActionRotate(_ARG_0_, "Main", 1, 2)
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
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunFly(_ARG_0_, 300, 100)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.75, 1.5)
    CallPowerCore(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieChaosSmall", 1)
  end
}
Enemy.cTricker_Homing = {
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
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunFly(_ARG_0_, 300, 100)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.75, 1.5)
    CallPowerCore(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieChaosSmall", 1)
  end
}
Enemy.cTricker_Master = {
  Appear = function(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 750, 90)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    distance = GetDistance(_ARG_0_)
    if distance < 1500 then
      WaitAnimation(_ARG_0_, "Command")
      GroupCommand(_ARG_0_, "SubTrickersGlind")
      WaitFixed(_ARG_0_, 1.5)
      TurnTarget(_ARG_0_)
      WaitFixed(_ARG_0_, 3)
    else
      WaitAnimation(_ARG_0_, "Command")
      GroupCommand(_ARG_0_, "SubTrickersSwing")
      WaitFixed(_ARG_0_, 4.5)
      WaitAnimation(_ARG_0_, "Command")
      GroupCommand(_ARG_0_, "SubTrickersGlind")
      WaitFixed(_ARG_0_, 1.5)
      TurnTarget(_ARG_0_)
      WaitFixed(_ARG_0_, 3)
    end
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
  OnSmash = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunFly(_ARG_0_, 300, 100)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.75, 1.5)
    CallPowerCore(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieChaosSmall", 1)
    GroupDie(_ARG_0_)
  end
}
Enemy.cTricker_Slave = {
  Appear = function(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 750, 90)
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
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunFly(_ARG_0_, 300, 100)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.75, 1.5)
    CallPowerCore(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieChaosSmall", 1)
  end,
  SubTrickersSwing = function(_ARG_0_)
    WaitAnimation(_ARG_0_, "Answer")
    MoveSwing(_ARG_0_, 500, 750, 3)
  end,
  SubTrickersGlind = function(_ARG_0_)
    WaitAnimation(_ARG_0_, "Answer")
    TurnTarget(_ARG_0_)
    WaitPosAdjustment(_ARG_0_, 380, 500, 150, 2)
    GlidingAttack(_ARG_0_, 2500)
    WaitFixed(_ARG_0_, 2.5)
  end
}
Enemy.cTricker_Alarm = {
  Appear = function(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 750, 90)
  end,
  Search = function(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    distance = GetDistance(_ARG_0_)
    if distance < 1500 then
      WaitAnimation(_ARG_0_, "Command")
      GroupCommand(_ARG_0_, "SubTrickersGlind")
      WaitFixed(_ARG_0_, 1.5)
      TurnTarget(_ARG_0_)
      WaitFixed(_ARG_0_, 3)
    else
      WaitAnimation(_ARG_0_, "Command")
      GroupCommand(_ARG_0_, "SubTrickersSwing")
      WaitFixed(_ARG_0_, 4.5)
      WaitAnimation(_ARG_0_, "Command")
      GroupCommand(_ARG_0_, "SubTrickersGlind")
      WaitFixed(_ARG_0_, 1.5)
      TurnTarget(_ARG_0_)
      WaitFixed(_ARG_0_, 3)
    end
  end,
  OnFind = function(_ARG_0_)
    WaitAnimation(_ARG_0_, "Warning")
    GroupBoot(_ARG_0_)
    GroupFind(_ARG_0_)
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
    StunFly(_ARG_0_, 300, 100)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.75, 1.5)
    CallPowerCore(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieChaosSmall", 1)
    GroupDie(_ARG_0_)
  end
}
