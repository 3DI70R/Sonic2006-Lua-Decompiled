Enemy.cTitan_Normal = {
  Appear = function(_ARG_0_)
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    distance = GetDistance(_ARG_0_)
    if distance < 500 then
      TurnTarget(_ARG_0_)
      WaitAnimation(_ARG_0_, "Open")
      CreateExplosion(_ARG_0_, "EnemyImpactM")
      ActionFixed(_ARG_0_, "Special", 1, 1)
      WaitAnimation(_ARG_0_, "Close")
      WaitFixed(_ARG_0_, 1.5)
    elseif distance < 1000 then
      MoveFront(_ARG_0_, 500, 1, 2, 0, 2)
      WaitAnimation(_ARG_0_, "Open")
      CreateExplosion(_ARG_0_, "EnemyImpactM")
      ActionFixed(_ARG_0_, "Special", 1, 1)
      WaitAnimation(_ARG_0_, "Close")
      WaitFixed(_ARG_0_, 1.5)
    elseif distance < 1500 then
      ChargePossession(_ARG_0_, "effects_point", "CDarkRockL", true)
      ActionFixed(_ARG_0_, "Sub", 1, 1)
      TurnTarget(_ARG_0_)
      ShotPossession(_ARG_0_, "effects_point", 2000)
      ActionFixed(_ARG_0_, "Main", 1, 1)
      WaitFixed(_ARG_0_, 1.5)
    else
      ChargePossession(_ARG_0_, "effects_point", "CDarkRockL", true)
      ActionFixed(_ARG_0_, "Sub", 1, 1)
      MoveFront(_ARG_0_, 1000, 1.5, 3, 0, 3)
      TurnTarget(_ARG_0_)
      ShotPossession(_ARG_0_, "effects_point", 2000)
      ActionFixed(_ARG_0_, "Main", 1, 1)
      WaitFixed(_ARG_0_, 1.5)
    end
  end,
  Return = function(_ARG_0_)
    ReturnWalk(_ARG_0_)
  end,
  OnFind = function(_ARG_0_)
    FindAnimation(_ARG_0_)
  end,
  OnCaught = function(_ARG_0_)
    CaughtCommon(_ARG_0_)
  end,
  OnDamage = function(_ARG_0_)
    if GetParameter(_ARG_0_, "IsOpenHead") > 0.5 then
      DamageKnockBack(_ARG_0_)
    end
  end,
  OnSmash = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunGround(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    CallReleasePossession(_ARG_0_)
    DieRagdoll(_ARG_0_, 1, 1.5)
    CallPowerCore(_ARG_0_, 3)
    DieExplosion(_ARG_0_, "DieChaosLarge", 1)
  end
}
Enemy.cTitan_Fix = {
  Appear = function(_ARG_0_)
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    distance = GetDistance(_ARG_0_)
    if distance < 750 then
      TurnTarget(_ARG_0_)
      WaitAnimation(_ARG_0_, "Open")
      CreateExplosion(_ARG_0_, "EnemyImpactM")
      ActionFixed(_ARG_0_, "Special", 1, 1)
      WaitAnimation(_ARG_0_, "Close")
      WaitFixed(_ARG_0_, 1.5)
    elseif distance < 1250 then
      ChargePossession(_ARG_0_, "effects_point", "CDarkRockL", true)
      ActionFixed(_ARG_0_, "Sub", 1, 1)
      TurnTarget(_ARG_0_)
      ShotPossession(_ARG_0_, "effects_point", 2000)
      ActionFixed(_ARG_0_, "Main", 1, 1)
      WaitFixed(_ARG_0_, 1.5)
    else
      ChargePossession(_ARG_0_, "effects_point", "CDarkRockL", true)
      ActionFixed(_ARG_0_, "Sub", 1, 1)
      TurnTarget(_ARG_0_)
      ShotPossession(_ARG_0_, "effects_point", 3000)
      ActionFixed(_ARG_0_, "Main", 1, 1)
      WaitFixed(_ARG_0_, 1.5)
    end
  end,
  Return = function(_ARG_0_)
    ReturnWalk(_ARG_0_)
  end,
  OnFind = function(_ARG_0_)
    FindAnimation(_ARG_0_)
  end,
  OnCaught = function(_ARG_0_)
    CaughtCommon(_ARG_0_)
  end,
  OnDamage = function(_ARG_0_)
    if GetParameter(_ARG_0_, "IsOpenHead") > 0.5 then
      DamageKnockBack(_ARG_0_)
    end
  end,
  OnSmash = function(_ARG_0_)
    WaitAnimation(_ARG_0_, "Open")
    DamageKnockBack(_ARG_0_)
    WaitAnimation(_ARG_0_, "Close")
  end,
  OnStun = function(_ARG_0_)
    StunGround(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    CallReleasePossession(_ARG_0_)
    DieRagdoll(_ARG_0_, 1, 1.5)
    CallPowerCore(_ARG_0_, 3)
    DieExplosion(_ARG_0_, "DieChaosLarge", 1)
  end
}
Enemy.cTitan_Freeze = {
  Appear = function(_ARG_0_)
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchFreeze(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    distance = GetDistance(_ARG_0_)
    if distance < 500 then
      TurnTarget(_ARG_0_)
      WaitAnimation(_ARG_0_, "Open")
      CreateExplosion(_ARG_0_, "EnemyImpactM")
      ActionFixed(_ARG_0_, "Special", 1, 1)
      WaitAnimation(_ARG_0_, "Close")
      WaitFixed(_ARG_0_, 1.5)
    elseif distance < 1000 then
      MoveFront(_ARG_0_, 500, 1, 2, 0, 2)
      WaitAnimation(_ARG_0_, "Open")
      CreateExplosion(_ARG_0_, "EnemyImpactM")
      ActionFixed(_ARG_0_, "Special", 1, 1)
      WaitAnimation(_ARG_0_, "Close")
      WaitFixed(_ARG_0_, 1.5)
    elseif distance < 1500 then
      ChargePossession(_ARG_0_, "effects_point", "CDarkRockL", true)
      ActionFixed(_ARG_0_, "Sub", 1, 1)
      TurnTarget(_ARG_0_)
      ShotPossession(_ARG_0_, "effects_point", 2000)
      ActionFixed(_ARG_0_, "Main", 1, 1)
      WaitFixed(_ARG_0_, 1.5)
    else
      ChargePossession(_ARG_0_, "effects_point", "CDarkRockL", true)
      ActionFixed(_ARG_0_, "Sub", 1, 1)
      MoveFront(_ARG_0_, 1000, 1.5, 3, 0, 3)
      TurnTarget(_ARG_0_)
      ShotPossession(_ARG_0_, "effects_point", 2000)
      ActionFixed(_ARG_0_, "Main", 1, 1)
      WaitFixed(_ARG_0_, 1.5)
    end
  end,
  Return = function(_ARG_0_)
    ReturnWalk(_ARG_0_)
  end,
  OnFind = function(_ARG_0_)
    FindAnimation(_ARG_0_)
  end,
  OnCaught = function(_ARG_0_)
    CaughtCommon(_ARG_0_)
  end,
  OnDamage = function(_ARG_0_)
    if GetParameter(_ARG_0_, "IsOpenHead") > 0.5 then
      DamageKnockBack(_ARG_0_)
    end
  end,
  OnSmash = function(_ARG_0_)
    WaitAnimation(_ARG_0_, "Open")
    DamageKnockBack(_ARG_0_)
    WaitAnimation(_ARG_0_, "Close")
  end,
  OnStun = function(_ARG_0_)
    StunGround(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    CallReleasePossession(_ARG_0_)
    DieRagdoll(_ARG_0_, 1, 1.5)
    CallPowerCore(_ARG_0_, 3)
    DieExplosion(_ARG_0_, "DieChaosLarge", 1)
  end
}
Enemy.cTitan_Alarm = {
  Appear = function(_ARG_0_)
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    distance = GetDistance(_ARG_0_)
    if distance < 750 then
      TurnTarget(_ARG_0_)
      WaitAnimation(_ARG_0_, "Open")
      CreateExplosion(_ARG_0_, "EnemyImpactM")
      ActionFixed(_ARG_0_, "Special", 1, 1)
      WaitAnimation(_ARG_0_, "Close")
      WaitFixed(_ARG_0_, 1.5)
    elseif distance < 1250 then
      ChargePossession(_ARG_0_, "effects_point", "CDarkRockL", true)
      ActionFixed(_ARG_0_, "Sub", 1, 1)
      TurnTarget(_ARG_0_)
      ShotPossession(_ARG_0_, "effects_point", 2000)
      ActionFixed(_ARG_0_, "Main", 1, 1)
      WaitFixed(_ARG_0_, 1.5)
    else
      ChargePossession(_ARG_0_, "effects_point", "CDarkRockL", true)
      ActionFixed(_ARG_0_, "Sub", 1, 1)
      TurnTarget(_ARG_0_)
      ShotPossession(_ARG_0_, "effects_point", 3000)
      ActionFixed(_ARG_0_, "Main", 1, 1)
      WaitFixed(_ARG_0_, 1.5)
    end
  end,
  Return = function(_ARG_0_)
    ReturnWalk(_ARG_0_)
  end,
  OnFind = function(_ARG_0_)
    FindAnimation(_ARG_0_)
    GroupBoot(_ARG_0_)
    WaitFixed(_ARG_0_, 2.5)
    GroupFind(_ARG_0_)
  end,
  OnCaught = function(_ARG_0_)
    CaughtCommon(_ARG_0_)
  end,
  OnDamage = function(_ARG_0_)
    if GetParameter(_ARG_0_, "IsOpenHead") > 0.5 then
      DamageKnockBack(_ARG_0_)
    end
  end,
  OnSmash = function(_ARG_0_)
    WaitAnimation(_ARG_0_, "Open")
    DamageKnockBack(_ARG_0_)
    WaitAnimation(_ARG_0_, "Close")
  end,
  OnStun = function(_ARG_0_)
    StunGround(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    CallReleasePossession(_ARG_0_)
    DieRagdoll(_ARG_0_, 1, 1.5)
    CallPowerCore(_ARG_0_, 3)
    DieExplosion(_ARG_0_, "DieChaosLarge", 1)
    GroupDie(_ARG_0_)
  end
}
