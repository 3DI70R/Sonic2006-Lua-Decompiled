Enemy.eSweeper_Fix = {
  Appear = function(_ARG_0_)
    CallMessage(_ARG_0_, "StealthOn")
    CallCreatePhysicsAttachment(_ARG_0_, "bomb", "EbomBombE")
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    TurnTarget(_ARG_0_)
    ShotPossession(_ARG_0_, "bomb", 1000)
    ActionRotate(_ARG_0_, "Main", 1, 1)
    ChargePossession(_ARG_0_, "bomb", "EbomBombE")
    ActionFixed(_ARG_0_, "Sub", 1, 1)
    WaitFixed(_ARG_0_, 1)
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
    StunBall(_ARG_0_, "Spine", 70)
  end,
  OnDead = function(_ARG_0_)
    CallReleasePossession(_ARG_0_)
    CallMessage(_ARG_0_, "StealthOff")
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 3)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
    GroupDie(_ARG_0_)
  end
}
Enemy.eSweeper_Wall_Fix = {
  Appear = function(_ARG_0_)
    CallMessage(_ARG_0_, "StealthOn")
    CallCreatePhysicsAttachment(_ARG_0_, "bomb", "EbomBombE")
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    TurnTarget(_ARG_0_)
    ShotPossession(_ARG_0_, "bomb", 1000)
    ActionRotate(_ARG_0_, "Main", 1, 1)
    ChargePossession(_ARG_0_, "bomb", "EbomBombE")
    ActionFixed(_ARG_0_, "Sub", 1, 1)
    WaitFixed(_ARG_0_, 1)
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
  OnSmash = function(_ARG_0_)
    CallMessage(_ARG_0_, "StealthOff")
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    CallMessage(_ARG_0_, "StealthOff")
    StunBall(_ARG_0_, "Spine", 60)
  end,
  OnDead = function(_ARG_0_)
    CallReleasePossession(_ARG_0_)
    CallMessage(_ARG_0_, "StealthOff")
    DieRagdoll(_ARG_0_, 0.5)
    CallChaosDrive(_ARG_0_, 1)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
    GroupDie(_ARG_0_)
  end
}
