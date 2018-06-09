Enemy.eKeeper_Normal = {
  Appear = function(_ARG_0_)
    CallCreateEGuardianArm(_ARG_0_, "R_Forearm", "EKeeperRightArm")
    CallCreateEGuardianArm(_ARG_0_, "L_Forearm", "EKeeperLeftArm")
    AppearDescent(_ARG_0_, 1, 1000, 90)
  end,
  Search = function(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    MoveFront(_ARG_0_, 1200, 1.5, 3, 0, 4.5)
    TurnTarget(_ARG_0_)
    name = GetPossessionName(_ARG_0_)
    if name == "R_Forearm" or name == "L_Forearm" then
      random = GetRandom(_ARG_0_)
      if random <= 5 / 10 then
        ShotPossessionHM(_ARG_0_, name)
      else
        ShotPossessionHM(_ARG_0_, nil)
      end
      ActionRotate(_ARG_0_, "Special", 1, 1)
      WaitFixed(_ARG_0_, 0.5)
    else
      ShotLaser(_ARG_0_, "LaserBeam", "Red")
      ActionRotate(_ARG_0_, "Sub", 5, 10)
      WaitFixed(_ARG_0_, 3)
      CallCreateEGuardianArm(_ARG_0_, "R_Forearm", "EKeeperRightArm", true)
      CallCreateEGuardianArm(_ARG_0_, "L_Forearm", "EKeeperLeftArm", true)
    end
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
    name = GetPossessionName(_ARG_0_)
    CallReleasePossession(_ARG_0_, name)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunAnimation(_ARG_0_)
    CallCreateEGuardianArm(_ARG_0_, "R_Forearm", "EKeeperRightArm", true)
    CallCreateEGuardianArm(_ARG_0_, "L_Forearm", "EKeeperLeftArm", true)
    StunEnd(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    CallReleasePossession(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 3)
    DieExplosion(_ARG_0_, "DieMachineLarge", 5)
  end
}
Enemy.eKeeper_Fix = {
  Appear = function(_ARG_0_)
    CallCreateEGuardianArm(_ARG_0_, "R_Forearm", "EKeeperRightArm")
    CallCreateEGuardianArm(_ARG_0_, "L_Forearm", "EKeeperLeftArm")
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    TurnTarget(_ARG_0_)
    name = GetPossessionName(_ARG_0_)
    if name == "R_Forearm" or name == "L_Forearm" then
      random = GetRandom(_ARG_0_)
      if random <= 5 / 10 then
        ShotPossessionHM(_ARG_0_, name)
      else
        ShotPossessionHM(_ARG_0_, nil)
      end
      ActionRotate(_ARG_0_, "Special", 1, 1)
      WaitFixed(_ARG_0_, 0.5)
    else
      ShotLaser(_ARG_0_, "LaserBeam", "Red")
      ActionRotate(_ARG_0_, "Sub", 5, 10)
      WaitFixed(_ARG_0_, 3)
      CallCreateEGuardianArm(_ARG_0_, "R_Forearm", "EKeeperRightArm", true)
      CallCreateEGuardianArm(_ARG_0_, "L_Forearm", "EKeeperLeftArm", true)
    end
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
    name = GetPossessionName(_ARG_0_)
    CallReleasePossession(_ARG_0_, name)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunAnimation(_ARG_0_)
    CallCreateEGuardianArm(_ARG_0_, "R_Forearm", "EKeeperRightArm", true)
    CallCreateEGuardianArm(_ARG_0_, "L_Forearm", "EKeeperLeftArm", true)
    StunEnd(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    CallReleasePossession(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 3)
    DieExplosion(_ARG_0_, "DieMachineLarge", 5)
  end
}
Enemy.eKeeper_Ball_Normal = {
  Appear = function(_ARG_0_)
    CallCreatePhysicsAttachment(_ARG_0_, "R_Forearm", "EKeeperIronBall")
    CallCreatePhysicsAttachment(_ARG_0_, "L_Forearm", "EKeeperIronBall")
    AppearDescent(_ARG_0_, 1, 1000, 90)
  end,
  Search = function(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    MoveFront(_ARG_0_, 1200, 1.5, 3, 0, 4.5)
    TurnTarget(_ARG_0_)
    name = GetPossessionName(_ARG_0_)
    if name == "R_Forearm" or name == "L_Forearm" then
      random = GetRandom(_ARG_0_)
      if random <= 5 / 10 then
        ShotPossession(_ARG_0_, name, 1800)
      else
        ShotPossession(_ARG_0_, nil, 1800)
      end
      ActionRotate(_ARG_0_, "Special", 1, 1)
      WaitFixed(_ARG_0_, 0.5)
    else
      ShotLaser(_ARG_0_, "LaserBeam", "Red")
      ActionRotate(_ARG_0_, "Sub", 5, 10)
      WaitFixed(_ARG_0_, 3)
      CallCreatePhysicsAttachment(_ARG_0_, "R_Forearm", "EKeeperIronBall", true)
      CallCreatePhysicsAttachment(_ARG_0_, "L_Forearm", "EKeeperIronBall", true)
    end
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
    name = GetPossessionName(_ARG_0_)
    CallReleasePossession(_ARG_0_, name)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunAnimation(_ARG_0_)
    CallCreatePhysicsAttachment(_ARG_0_, "R_Forearm", "EKeeperIronBall", true)
    CallCreatePhysicsAttachment(_ARG_0_, "L_Forearm", "EKeeperIronBall", true)
    StunEnd(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    CallReleasePossession(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 3)
    DieExplosion(_ARG_0_, "DieMachineLarge", 5)
  end
}
Enemy.eKeeper_Ball_Fix = {
  Appear = function(_ARG_0_)
    CallCreatePhysicsAttachment(_ARG_0_, "R_Forearm", "EKeeperIronBall")
    CallCreatePhysicsAttachment(_ARG_0_, "L_Forearm", "EKeeperIronBall")
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    TurnTarget(_ARG_0_)
    name = GetPossessionName(_ARG_0_)
    if name == "R_Forearm" or name == "L_Forearm" then
      random = GetRandom(_ARG_0_)
      if random <= 5 / 10 then
        ShotPossession(_ARG_0_, name, 1800)
      else
        ShotPossession(_ARG_0_, nil, 1800)
      end
      ActionRotate(_ARG_0_, "Special", 1, 1)
      WaitFixed(_ARG_0_, 0.5)
    else
      ShotLaser(_ARG_0_, "LaserBeam", "Red")
      ActionRotate(_ARG_0_, "Sub", 5, 10)
      WaitFixed(_ARG_0_, 3)
      CallCreatePhysicsAttachment(_ARG_0_, "R_Forearm", "EKeeperIronBall", true)
      CallCreatePhysicsAttachment(_ARG_0_, "L_Forearm", "EKeeperIronBall", true)
    end
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
    name = GetPossessionName(_ARG_0_)
    CallReleasePossession(_ARG_0_, name)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunAnimation(_ARG_0_)
    CallCreatePhysicsAttachment(_ARG_0_, "R_Forearm", "EKeeperIronBall", true)
    CallCreatePhysicsAttachment(_ARG_0_, "L_Forearm", "EKeeperIronBall", true)
    StunEnd(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    CallReleasePossession(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 3)
    DieExplosion(_ARG_0_, "DieMachineLarge", 5)
  end
}
Enemy.eKeeper_Freeze = {
  Appear = function(_ARG_0_)
    CallCreateEGuardianArm(_ARG_0_, "R_Forearm", "EKeeperRightArm")
    CallCreateEGuardianArm(_ARG_0_, "L_Forearm", "EKeeperLeftArm")
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchFreeze(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    MoveFront(_ARG_0_, 1200, 1.5, 3, 0, 4.5)
    name = GetPossessionName(_ARG_0_)
    if name == "R_Forearm" or name == "L_Forearm" then
      TurnTarget(_ARG_0_)
      random = GetRandom(_ARG_0_)
      if random <= 5 / 10 then
        ShotPossessionHM(_ARG_0_, name)
      else
        ShotPossessionHM(_ARG_0_, nil)
      end
      ActionRotate(_ARG_0_, "Special", 1, 1)
      WaitFixed(_ARG_0_, 0.5)
    else
      ShotLaser(_ARG_0_, "LaserBeam", "Red")
      ActionRotate(_ARG_0_, "Sub", 5, 10)
      WaitFixed(_ARG_0_, 3)
      CallCreateEGuardianArm(_ARG_0_, "R_Forearm", "EKeeperRightArm", true)
      CallCreateEGuardianArm(_ARG_0_, "L_Forearm", "EKeeperLeftArm", true)
    end
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
    name = GetPossessionName(_ARG_0_)
    CallReleasePossession(_ARG_0_, name)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunAnimation(_ARG_0_)
    CallCreateEGuardianArm(_ARG_0_, "R_Forearm", "EKeeperRightArm", true)
    CallCreateEGuardianArm(_ARG_0_, "L_Forearm", "EKeeperLeftArm", true)
    StunEnd(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    CallReleasePossession(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 3)
    DieExplosion(_ARG_0_, "DieMachineLarge", 5)
  end
}
