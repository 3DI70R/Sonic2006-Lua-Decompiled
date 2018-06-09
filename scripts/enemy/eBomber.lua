Enemy.eBomber_Normal = {
  Appear = function(_ARG_0_)
    CallCreatePhysicsAttachment(_ARG_0_, "bomb", "EbomBomb")
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    MoveSiege(_ARG_0_, 750, 1000, 1.5, 3, 1, 3)
    ShotPossession(_ARG_0_, "bomb", 1000)
    ActionFixed(_ARG_0_, "Main", 1, 1)
    ChargePossession(_ARG_0_, "bomb", "EbomBomb")
    ActionFixed(_ARG_0_, "Sub", 1, 1)
    WaitFixed(_ARG_0_, 1)
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
  OnSmash = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunBall(_ARG_0_, "Spine", 60)
  end,
  OnDead = function(_ARG_0_)
    CallReleasePossession(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
  end
}
Enemy.eBomber_Fix = {
  Appear = function(_ARG_0_)
    CallCreatePhysicsAttachment(_ARG_0_, "bomb", "EbomBomb")
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    TurnTarget(_ARG_0_)
    ShotPossession(_ARG_0_, "bomb", 1000)
    ActionRotate(_ARG_0_, "Main", 1, 1)
    ChargePossession(_ARG_0_, "bomb", "EbomBomb")
    ActionFixed(_ARG_0_, "Sub", 1, 1)
    WaitFixed(_ARG_0_, 1)
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
  OnSmash = function(_ARG_0_)
    StunAnimation(_ARG_0_)
    StunEnd(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunBall(_ARG_0_, "Spine", 60)
  end,
  OnDead = function(_ARG_0_)
    CallReleasePossession(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
  end
}
Enemy.eBomber_Wall_Normal = {
  Appear = function(_ARG_0_)
    CallCreatePhysicsAttachment(_ARG_0_, "bomb", "EbomBomb")
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    MoveSiege(_ARG_0_, 1000, 1250, 1.5, 3, 1, 3)
    ShotPossession(_ARG_0_, "bomb", 1000)
    ActionFixed(_ARG_0_, "Main", 1, 1)
    ChargePossession(_ARG_0_, "bomb", "EbomBomb")
    ActionFixed(_ARG_0_, "Sub", 1, 1)
    WaitFixed(_ARG_0_, 1)
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
  OnSmash = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunBall(_ARG_0_, "Spine", 60)
  end,
  OnDead = function(_ARG_0_)
    CallReleasePossession(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
  end
}
Enemy.eBomber_Wall_Fix = {
  Appear = function(_ARG_0_)
    CallCreatePhysicsAttachment(_ARG_0_, "bomb", "EbomBomb")
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    TurnTarget(_ARG_0_)
    ShotPossession(_ARG_0_, "bomb", 1000)
    ActionRotate(_ARG_0_, "Main", 1, 1)
    ChargePossession(_ARG_0_, "bomb", "EbomBomb")
    ActionFixed(_ARG_0_, "Sub", 1, 1)
    WaitFixed(_ARG_0_, 1)
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
  OnSmash = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunBall(_ARG_0_, "Spine", 60)
  end,
  OnDead = function(_ARG_0_)
    CallReleasePossession(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5)
    CallChaosDrive(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
  end
}
Enemy.eBomber_Allaround = {
  Appear = function(_ARG_0_)
    CallCreatePhysicsAttachment(_ARG_0_, "bomb", "EbomBomb")
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    TurnTarget(_ARG_0_)
    MoveSiege(_ARG_0_, 750, 1000, 2.5, 5, 1, 5)
    ShotPossession(_ARG_0_, "bomb", 1000)
    ActionFixed(_ARG_0_, "Main", 1, 1)
    ChargePossession(_ARG_0_, "bomb", "EbomBomb")
    ActionFixed(_ARG_0_, "Sub", 1, 1)
    WaitFixed(_ARG_0_, 1)
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
  OnSmash = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunBall(_ARG_0_, "Spine", 60)
  end,
  OnDead = function(_ARG_0_)
    CallReleasePossession(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
  end
}
Enemy.eBomber_Boss = {
  Appear = function(_ARG_0_)
    CallCreatePhysicsAttachment(_ARG_0_, "bomb", "EbomBombBoss")
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    MoveSiege(_ARG_0_, 750, 1000, 1.5, 3, 1, 3)
    ShotPossession(_ARG_0_, "bomb", 1000)
    ActionFixed(_ARG_0_, "Main", 1, 1)
    ChargePossession(_ARG_0_, "bomb", "EbomBombBoss")
    ActionFixed(_ARG_0_, "Sub", 1, 1)
    WaitFixed(_ARG_0_, 1)
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
  OnSmash = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunBall(_ARG_0_, "Spine", 60)
  end,
  OnDead = function(_ARG_0_)
    CallReleasePossession(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 5)
    CallChaosDrive(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
  end
}
