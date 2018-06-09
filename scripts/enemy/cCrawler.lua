Enemy.cCrawler_Normal = {
  Appear = function(_ARG_0_)
    UnderGroundAppear(_ARG_0_, "cCrawlerImpact", 0.5)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    distance = GetDistance(_ARG_0_)
    if distance < 500 then
      TurnTarget(_ARG_0_)
      WaitAnimation(_ARG_0_, "Attack2")
      WaitFixed(_ARG_0_, 2)
    elseif distance < 1000 then
      TurnTarget(_ARG_0_)
      DivingAttack(_ARG_0_, "cCrawlerImpact", 0)
      MoveFront(_ARG_0_, 150, 1.5, 3, 0, 3)
      UnderGroundAppear(_ARG_0_, "cCrawlerImpact", 1.5)
      WaitFixed(_ARG_0_, 3)
    else
      TurnTarget(_ARG_0_)
      DivingAttack(_ARG_0_, "cCrawlerImpact", 1)
      MoveFront(_ARG_0_, 150, 1.5, 3, 0, 3)
      UnderGroundAppear(_ARG_0_, "cCrawlerImpact", 1.5)
      WaitFixed(_ARG_0_, 3)
    end
  end,
  OnFind = function(_ARG_0_)
    FindAnimation(_ARG_0_)
  end,
  OnCaught = function(_ARG_0_)
    CaughtCommon(_ARG_0_)
  end,
  OnSmash = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunAnimation(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 1, 1.5)
    CallPowerCore(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieFlameLarge", 1)
  end
}
Enemy.cCrawler_Fix = {
  Appear = function(_ARG_0_)
    UnderGroundAppear(_ARG_0_, "cCrawlerImpact", 0.5)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    distance = GetDistance(_ARG_0_)
    if distance < 500 then
      TurnTarget(_ARG_0_)
      WaitAnimation(_ARG_0_, "Attack2")
      WaitFixed(_ARG_0_, 2)
    else
      TurnTarget(_ARG_0_)
      ShotObject(_ARG_0_, "CBombM", 2000)
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
  OnSmash = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunAnimation(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 1, 1.5)
    CallPowerCore(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieFlameLarge", 1)
  end
}
Enemy.cCrawler_Wall_Fix = {
  Appear = function(_ARG_0_)
    UnderGroundAppear(_ARG_0_, "cCrawlerImpact", 0.5)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    distance = GetDistance(_ARG_0_)
    if distance < 500 then
      TurnTarget(_ARG_0_)
      ShotFireBreath(_ARG_0_, "cBiter_F", "MiniBreath", 0, 0, 0, 0, 0)
      ActionRotate(_ARG_0_, "Special", 1, 1)
      WaitFixed(_ARG_0_, 3)
    else
      TurnTarget(_ARG_0_)
      ShotObject(_ARG_0_, "CBombM", 2000)
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
  OnSmash = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunAnimation(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 1, 1.5)
    CallPowerCore(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieFlameLarge", 1)
  end
}
Enemy.cCrawler_Homing = {
  Appear = function(_ARG_0_)
    UnderGroundAppear(_ARG_0_, "cCrawlerImpact", 0.5)
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
  OnSmash = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunAnimation(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 1, 1.5)
    CallPowerCore(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieFlameLarge", 1)
  end
}
Enemy.cCrawler_Wall_Homing = {
  Appear = function(_ARG_0_)
    UnderGroundAppear(_ARG_0_, "cCrawlerImpact", 0.5)
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
  OnSmash = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunAnimation(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 1, 1.5)
    CallPowerCore(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieFlameLarge", 1)
  end
}
Enemy.cCrawler_Freeze = {
  Appear = function(_ARG_0_)
    SearchFreeze(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchFreeze(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    distance = GetDistance(_ARG_0_)
    if distance < 500 then
      TurnTarget(_ARG_0_)
      WaitAnimation(_ARG_0_, "Attack2")
      WaitFixed(_ARG_0_, 2)
    else
      TurnTarget(_ARG_0_)
      ShotObject(_ARG_0_, "CBombM", 2000)
      ActionRotate(_ARG_0_, "Main", 1, 2)
      WaitFixed(_ARG_0_, 2.5)
    end
  end,
  OnFind = function(_ARG_0_)
    UnderGroundAppear(_ARG_0_, "cCrawlerImpact", 1.5)
  end,
  OnCaught = function(_ARG_0_)
    CaughtCommon(_ARG_0_)
  end,
  OnSmash = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunAnimation(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 1, 1.5)
    CallPowerCore(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieFlameLarge", 1)
  end
}
Enemy.cCrawler_Alarm = {
  Appear = function(_ARG_0_)
    UnderGroundAppear(_ARG_0_, "cCrawlerImpact", 0.5)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    distance = GetDistance(_ARG_0_)
    if distance < 500 then
      TurnTarget(_ARG_0_)
      WaitAnimation(_ARG_0_, "Attack2")
      WaitFixed(_ARG_0_, 2)
    else
      TurnTarget(_ARG_0_)
      ShotObject(_ARG_0_, "CBombM", 2000)
      ActionRotate(_ARG_0_, "Main", 1, 2)
      WaitFixed(_ARG_0_, 2.5)
    end
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
  OnSmash = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunAnimation(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 1, 1.5)
    CallPowerCore(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieFlameLarge", 1)
    GroupDie(_ARG_0_)
  end
}
