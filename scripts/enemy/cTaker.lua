Enemy.cTaker_Normal = {
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
      ShotObject(_ARG_0_, "CBombS", 2000)
      ActionRotate(_ARG_0_, "Main", 1, 2)
      WaitFixed(_ARG_0_, 2.5)
    else
      MoveSiege(_ARG_0_, 750, 1000, 1.5, 3, 1, 3)
      ShotObject(_ARG_0_, "CBombS", 2000)
      ActionRotate(_ARG_0_, "Main", 1, 2)
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
    CallPowerCore(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieFlameSmall", 1)
  end
}
Enemy.cTaker_Fix = {
  Appear = function(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 750, 90)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    TurnTarget(_ARG_0_)
    ShotObject(_ARG_0_, "CBombS", 2000)
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
    CallPowerCore(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieFlameSmall", 1)
  end
}
Enemy.cTaker_Normal_Bomb = {
  Appear = function(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 750, 90)
  end,
  Search = function(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    name = GetPossessionName(_ARG_0_)
    if name == "R_Toe" then
      MoveFront(_ARG_0_, 500, 1.5, 3, 0.5, 5)
      ShotPossession(_ARG_0_, "R_Toe", 0)
      ActionFixed(_ARG_0_, "Special", 1, 1)
      WaitFixed(_ARG_0_, 3)
    else
      MoveBack(_ARG_0_, 1000, 1.5, 3, 0.5, 5, true)
      ChargePossession(_ARG_0_, "R_Toe", "CTakerBomb")
      ActionFixed(_ARG_0_, "Sub", 1, 1)
      WaitFixed(_ARG_0_, 1.5)
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
    CallReleasePossession(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.75, 1.5)
    CallPowerCore(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieFlameSmall", 1)
  end
}
Enemy.cTaker_Fix_Bomb = {
  Appear = function(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 750, 90)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    name = GetPossessionName(_ARG_0_)
    if name == "R_Toe" then
      ShotPossession(_ARG_0_, "R_Toe", 0)
      ActionFixed(_ARG_0_, "Special", 1, 1)
      WaitFixed(_ARG_0_, 3)
    else
      ChargePossession(_ARG_0_, "R_Toe", "CTakerBomb")
      ActionFixed(_ARG_0_, "Sub", 1, 1)
      WaitFixed(_ARG_0_, 1.5)
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
    CallReleasePossession(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.75, 1.5)
    CallPowerCore(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieFlameSmall", 1)
  end
}
Enemy.cTaker_Chase_Bomb = {
  Appear = function(_ARG_0_)
    AppearDescent(_ARG_0_, 1, 750, 90)
  end,
  Search = function(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    MovePath(_ARG_0_, 1000, 10000, 4, false)
    MovePath(_ARG_0_, 750, 8000, 1, true)
    name = GetPossessionName(_ARG_0_)
    if name == "R_Toe" then
      ShotPossession(_ARG_0_, "R_Toe", 0)
      ActionPath(_ARG_0_, "Special", 1, 500, 7000, true)
    else
      ChargePossession(_ARG_0_, "R_Toe", "CTakerBomb")
      ActionPath(_ARG_0_, "Sub", 1, 500, 7000, true)
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
    CallReleasePossession(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.75, 1.5)
    CallPowerCore(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieFlameSmall", 1)
  end
}
Enemy.cTaker_Homing = {
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
    CallPowerCore(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieFlameSmall", 1)
  end
}
