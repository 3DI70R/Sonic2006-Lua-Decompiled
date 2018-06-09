Enemy.eGenesis_sonic = {
  Appear = function(_ARG_0_)
    CallCreateEnemyInNode(_ARG_0_, "Wingpoint01", "eGenesisWing", "eGenesis_wing")
    CallCreateEnemyInNode(_ARG_0_, "Wingpoint02", "eGenesisWing", "eGenesis_wing")
    CallCreateEnemyInNode(_ARG_0_, "Wingpoint03", "eGenesisWing", "eGenesis_wing")
    CallCreateEnemyInNode(_ARG_0_, "Wingpoint04", "eGenesisWing", "eGenesis_wing")
    CallCreateEnemyInNode(_ARG_0_, "Spotlight01", "eGenesisSpotLight", "eGenesisSpotLight")
    CallCreateEnemyInNode(_ARG_0_, "Spotlight02", "eGenesisSpotLight", "eGenesisSpotLight")
    CallCreateEnemyInNode(_ARG_0_, "Spotlight03", "eGenesisSpotLight", "eGenesisSpotLight")
    CallCreateEnemyInNode(_ARG_0_, "Spotlight04", "eGenesisSpotLight", "eGenesisSpotLight")
    CallHintMessage(_ARG_0_, "hint_bos07_e00_sn", true, 1)
    CallHintMessage(_ARG_0_, "hint_bos07_a00_sn", true, 2)
    CallHintMessage(_ARG_0_, "hint_bos07_a02_sn", true, 3)
  end,
  Search = function(_ARG_0_)
    SearchPlayer(_ARG_0_, 0)
  end,
  Action = function(_ARG_0_)
    CallResetCamera(_ARG_0_, "main")
    CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5, 1000)
    MoveHeight(_ARG_0_, 0, false)
    CallPossessionState(_ARG_0_, "SubOnWing90")
    eGenesis_Turn(_ARG_0_, 31, 30)
    WaitRotate(_ARG_0_, 3.5)
    CallPossessionState(_ARG_0_, "SubOnMissle")
    WaitRotate(_ARG_0_, 3)
    CallPossessionState(_ARG_0_, "SubOnWing0")
    eGenesis_Turn(_ARG_0_, -400, 180)
    if 0.5 < GetHP(_ARG_0_) then
      WaitRotate(_ARG_0_, 2.5)
      CallPossessionState(_ARG_0_, "eGenesisSearchLaser_Action")
      eGenesisSpotLight_Wait(_ARG_0_)
    elseif GetHP(_ARG_0_) > 0.25 then
      eGenesis_Turn(_ARG_0_, -400, 180)
      CallHintMessage(_ARG_0_, "hint_bos07_e05_eg", true)
      ShotPointArrive(_ARG_0_, "eGenesisLaserM")
      ActionLockOn(_ARG_0_, "Main", 1, 1, 3, 1200)
    else
      eGenesis_Turn(_ARG_0_, -400, 180)
      CallHintMessage(_ARG_0_, "hint_bos07_a05_pr", true)
      ShotPointArrive(_ARG_0_, "eGenesisLaserS")
      ActionLockOn(_ARG_0_, "Main", 3, 3, 3, 1200)
    end
    WaitRotate(_ARG_0_, 1)
    CallPossessionState(_ARG_0_, "SubOnWing45")
    eGenesis_Turn(_ARG_0_, 31, 30)
    MoveHeight(_ARG_0_, -1000, false)
    WaitRotate(_ARG_0_, 0.5)
    if 0.5 < GetHP(_ARG_0_) then
      CallPossessionState(_ARG_0_, "SubOnCallEFlyerHoming")
      WaitRotate(_ARG_0_, 12)
    else
      CallPossessionState(_ARG_0_, "SubOnCallEGunnerVulcan")
      WaitRotate(_ARG_0_, 7)
    end
  end,
  ActionStepOn = function(_ARG_0_)
    if GetParameter(_ARG_0_, "IsStepOn") < 0.5 then
      CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5)
      CallChangeAction(_ARG_0_)
    elseif 0.5 < GetHP(_ARG_0_) then
      CallHintMessage(_ARG_0_, "hint_bos07_e04_eg", true)
      CallPossessionState(_ARG_0_, "SubOnWing0")
      MoveHeight(_ARG_0_, 0, false)
      WaitAnimation(_ARG_0_, "Open")
      ShotGatlingGun(_ARG_0_, "Vulcan", 0.01, 10, 3)
      ActionRotate(_ARG_0_, "Sub", 1, 1)
      CallPossessionState(_ARG_0_, "SubOnMissle")
      WaitFixed(_ARG_0_, 3)
      WaitAnimation(_ARG_0_, "Open")
      eGenesis_Turn(_ARG_0_, 60, 30)
      ShotGatlingGun(_ARG_0_, "Vulcan", 0.01, 10, 3)
      ActionRotate(_ARG_0_, "Sub", 1, 1)
      WaitAnimation(_ARG_0_, "Close")
    else
      WaitAnimation(_ARG_0_, "Close")
      MoveHeight(_ARG_0_, 0, false)
      eGenesis_Turn(_ARG_0_, 30, 10)
      WaitFixed(_ARG_0_, 5)
      WaitAnimation(_ARG_0_, "Open")
      ShotGatlingGun(_ARG_0_, "Vulcan", 0.01, 10, 3)
      ActionRotate(_ARG_0_, "Sub", 3, 3)
    end
  end,
  eGenesisSearchLaser_Find = function(_ARG_0_)
    CallPossessionState(_ARG_0_, "eGenesisSpotLight_End")
    ShotPointArrive(_ARG_0_, "eGenesisLaserM")
    ActionLockOn(_ARG_0_, "Main", 1, 1, 2, 1200)
  end,
  OnFind = function(_ARG_0_)
    PossessionFind(_ARG_0_)
    FindAnimation(_ARG_0_)
  end,
  OnDamage = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnFatal = function(_ARG_0_)
    if GetHP(_ARG_0_) < 3 / 4 then
      CallHintMessage(_ARG_0_, "hint_bos07_e03_sn", true)
    end
    CallPossessionState(_ARG_0_, "eGenesisSpotLight_End")
    CallReleasePossession(_ARG_0_, (eGenesis_GetWingName(_ARG_0_)))
    CallPossessionState(_ARG_0_, "SubOnGateClose")
    CallMoveTargetPos(_ARG_0_, 38750, 4235, -72750)
    CallSetCamera(_ARG_0_, "clash", 2, 500, -100, -100, 0, 0, 3, 0.5)
    CallChangeAction(_ARG_0_)
    DamageFatal(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    CallResetCamera(_ARG_0_, "main")
    CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5, 1000)
    CallReleasePossession(_ARG_0_)
    CallMessage(_ARG_0_, "BodyRotateOff")
    WaitFixed(_ARG_0_, 0.5)
    CallMoveTargetPos(_ARG_0_, 38750, 4235, -72750)
    CallSetCamera(_ARG_0_, "clash", 2, 500, -100, -100, 0, 0, 3, 0.5)
    WaitRotate(_ARG_0_, 3)
    CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5, 1000)
    MoveHeight(_ARG_0_, 1000, false)
    CallHintMessage(_ARG_0_, "hint_bos07_a06_pr", true)
    MoveKamikaze(_ARG_0_, 3000, 750, 10)
    PlaySeEnemy(_ARG_0_, "genesis01", "dead")
    DieRagdoll(_ARG_0_, 0.5)
    DieExplosion(_ARG_0_, "DieeGenesisCore", 2)
  end,
  eGenesisOnStepOn = function(_ARG_0_)
    CallPossessionState(_ARG_0_, "eGenesisSpotLight_End")
    CallResetCamera(_ARG_0_, "main")
    if GetHP(_ARG_0_) <= 0.5 then
      CallPossessionState(_ARG_0_, "SubOnBerserk")
    end
    CallChangeAction(_ARG_0_, "ActionStepOn")
  end
}
Enemy.eGenesis_silver = {
  Appear = function(_ARG_0_)
    CallCreateEnemyInNode(_ARG_0_, "Wingpoint01", "eGenesisWing", "eGenesis_wing")
    CallCreateEnemyInNode(_ARG_0_, "Wingpoint02", "eGenesisWing", "eGenesis_wing")
    CallCreateEnemyInNode(_ARG_0_, "Wingpoint03", "eGenesisWing", "eGenesis_wing")
    CallCreateEnemyInNode(_ARG_0_, "Wingpoint04", "eGenesisWing", "eGenesis_wing")
    CallCreateEnemyInNode(_ARG_0_, "Spotlight01", "eGenesisSpotLight", "eGenesisSpotLight")
    CallCreateEnemyInNode(_ARG_0_, "Spotlight02", "eGenesisSpotLight", "eGenesisSpotLight")
    CallCreateEnemyInNode(_ARG_0_, "Spotlight03", "eGenesisSpotLight", "eGenesisSpotLight")
    CallCreateEnemyInNode(_ARG_0_, "Spotlight04", "eGenesisSpotLight", "eGenesisSpotLight")
    CallHintMessage(_ARG_0_, "hint_bos07_e00_sv", true, 1)
    CallHintMessage(_ARG_0_, "hint_bos07_a00_bz", true, 2)
    CallHintMessage(_ARG_0_, "hint_bos07_a02_bz", true, 3)
  end,
  Search = function(_ARG_0_)
    SearchPlayer(_ARG_0_, 0)
  end,
  Action = function(_ARG_0_)
    CallResetCamera(_ARG_0_, "main")
    CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5, 1000)
    MoveHeight(_ARG_0_, 0, false)
    CallPossessionState(_ARG_0_, "SubOnWing90")
    eGenesis_Turn(_ARG_0_, 31, 30)
    WaitRotate(_ARG_0_, 3.5)
    CallPossessionState(_ARG_0_, "SubOnMissle")
    WaitRotate(_ARG_0_, 3)
    CallPossessionState(_ARG_0_, "SubOnWing0")
    if 0.5 < GetHP(_ARG_0_) then
      eGenesis_Turn(_ARG_0_, 180, 8)
      WaitRotate(_ARG_0_, 2.5)
      CallPossessionState(_ARG_0_, "eGenesisSpotLight_Action")
      eGenesisSpotLight_Wait(_ARG_0_)
    elseif GetHP(_ARG_0_) > 0.25 then
      eGenesis_Turn(_ARG_0_, -400, 180)
      CallHintMessage(_ARG_0_, "hint_bos07_a05_bz", true)
      ShotPointArrive(_ARG_0_, "eGenesisLaserM")
      ActionLockOn(_ARG_0_, "Main", 1, 1, 2.5, 1200)
    else
      eGenesis_Turn(_ARG_0_, -400, 180)
      CallHintMessage(_ARG_0_, "hint_bos07_a05_bz", true)
      ShotPointArrive(_ARG_0_, "eGenesisLaserS")
      ActionLockOn(_ARG_0_, "Main", 3, 3, 5, 1200)
    end
    WaitRotate(_ARG_0_, 1)
    CallPossessionState(_ARG_0_, "SubOnWing45")
    eGenesis_Turn(_ARG_0_, 31, 30)
    MoveHeight(_ARG_0_, -1000, false)
    WaitRotate(_ARG_0_, 0.5)
    if 0.5 < GetHP(_ARG_0_) then
      CallPossessionState(_ARG_0_, "SubOnCallERounder")
      WaitRotate(_ARG_0_, 12)
    else
      CallPossessionState(_ARG_0_, "SubOnCallEBomber")
      WaitRotate(_ARG_0_, 7)
    end
  end,
  ActionStepOn = function(_ARG_0_)
    if GetParameter(_ARG_0_, "IsStepOn") < 0.5 then
      CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5)
      CallChangeAction(_ARG_0_)
    elseif 0.5 < GetHP(_ARG_0_) then
      CallPossessionState(_ARG_0_, "SubOnWing0")
      MoveHeight(_ARG_0_, 0, false)
      WaitAnimation(_ARG_0_, "Open")
      ShotLaser(_ARG_0_, "LaserBeam", "Blue")
      ActionRotate(_ARG_0_, "Sub", 1, 1)
      CallPossessionState(_ARG_0_, "SubOnMissle")
      WaitFixed(_ARG_0_, 3)
      WaitAnimation(_ARG_0_, "Open")
      eGenesis_Turn(_ARG_0_, 60, 30)
      ShotLaser(_ARG_0_, "LaserBeam", "Blue")
      ActionRotate(_ARG_0_, "Sub", 1, 1)
      WaitAnimation(_ARG_0_, "Close")
    else
      WaitAnimation(_ARG_0_, "Close")
      MoveHeight(_ARG_0_, 0, false)
      eGenesis_Turn(_ARG_0_, 30, 10)
      WaitFixed(_ARG_0_, 5)
      WaitAnimation(_ARG_0_, "Open")
      ShotLaser(_ARG_0_, "LaserBeam", "Blue")
      ActionRotate(_ARG_0_, "Sub", 3, 3)
    end
  end,
  eGenesisSpotLight_Find = function(_ARG_0_)
    CallPossessionState(_ARG_0_, "eGenesisSpotLight_End")
    ShotPointArrive(_ARG_0_, "eGenesisLaserM")
    ActionLockOn(_ARG_0_, "Main", 1, 1, 2, 1200)
  end,
  OnFind = function(_ARG_0_)
    PossessionFind(_ARG_0_)
    WaitRotate(_ARG_0_, 0.1)
    CallPossessionState(_ARG_0_, "SubOnCollisionOn")
    FindAnimation(_ARG_0_)
  end,
  OnFatal = function(_ARG_0_)
    if GetHP(_ARG_0_) < 3 / 4 then
      CallHintMessage(_ARG_0_, "hint_bos07_e03_sv", true)
    end
    CallPossessionState(_ARG_0_, "eGenesisSpotLight_End")
    CallReleasePossession(_ARG_0_, (eGenesis_GetWingName(_ARG_0_)))
    CallPossessionState(_ARG_0_, "SubOnGateClose")
    DamageFatal(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    CallResetCamera(_ARG_0_, "main")
    CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5, 1000)
    CallReleasePossession(_ARG_0_)
    CallMessage(_ARG_0_, "BodyRotateOff")
    WaitRotate(_ARG_0_, 3)
    MoveHeight(_ARG_0_, 1000, false)
    CallHintMessage(_ARG_0_, "hint_bos07_a06_bz", true)
    MoveKamikaze(_ARG_0_, 2000, 750, 10)
    PlaySeEnemy(_ARG_0_, "genesis01", "dead")
    DieRagdoll(_ARG_0_, 0.5)
    DieExplosion(_ARG_0_, "DieeGenesisCore", 2)
  end,
  eGenesisOnStepOn = function(_ARG_0_)
    CallPossessionState(_ARG_0_, "eGenesisSpotLight_End")
    CallResetCamera(_ARG_0_, "main")
    if GetHP(_ARG_0_) <= 0.5 then
      CallPossessionState(_ARG_0_, "SubOnBerserk")
    end
    CallChangeAction(_ARG_0_, "ActionStepOn")
  end
}
Enemy.eGenesis_wing = {
  Action = function(_ARG_0_)
    WaitFixed(_ARG_0_, 1)
  end,
  OnDead = function(_ARG_0_)
    PlaySeEnemy(_ARG_0_, "genesis01", "steam")
    PlaySeEnemy(_ARG_0_, "genesis01", "wing_break")
    PossessionDie(_ARG_0_)
    DieExplosion(_ARG_0_, "DieeGenesisWing", 2)
  end,
  SubOnWing90 = function(_ARG_0_)
    WaitAnimation(_ARG_0_, "AttackMode")
  end,
  SubOnWing45 = function(_ARG_0_)
    WaitAnimation(_ARG_0_, "BuildMode")
  end,
  SubOnWing0 = function(_ARG_0_)
    WaitAnimation(_ARG_0_, "SearchMode")
  end,
  SubOnMissle = function(_ARG_0_)
    ShotNormal(_ARG_0_, "eGenesisMissile")
    ActionFixed(_ARG_0_, "Main", 1, 1)
  end,
  SubOnCallEGunnerVulcan = function(_ARG_0_)
    PossessionRetire(_ARG_0_)
    WaitAnimation(_ARG_0_, "BuildStart")
    WaitAnimation(_ARG_0_, "Build")
    CallCreateEnemyInNode(_ARG_0_, "Egate_F", "eGunner", "eGunnerFly_Boss_Vulcan", 0, "eGunner01", 0, 400, 500, true)
    CallCreateEnemyInNode(_ARG_0_, "Egate_F", "eGunner", "eGunnerFly_Boss_Vulcan", 0, "eGunner02", -100, 450, 1200, true)
    CallCreateEnemyInNode(_ARG_0_, "Egate_F", "eGunner", "eGunnerFly_Boss_Vulcan", 0, "eGunner03", 100, 500, 1900, true)
    WaitAnimation(_ARG_0_, "Build")
    WaitAnimation(_ARG_0_, "BuildEnd")
  end,
  SubOnCallEFlyerHoming = function(_ARG_0_)
    PossessionRetire(_ARG_0_)
    WaitAnimation(_ARG_0_, "BuildStart")
    WaitAnimation(_ARG_0_, "Build")
    CallCreateEnemyInNode(_ARG_0_, "Egate_F", "eFlyer", "eFlyer_Boss_Homing", 0, "eFlyerH01", 0, 400, 500, true)
    CallCreateEnemyInNode(_ARG_0_, "Egate_F", "eFlyer", "eFlyer_Boss_Homing", 0, "eFlyerH02", -100, 450, 1200, true)
    CallCreateEnemyInNode(_ARG_0_, "Egate_F", "eFlyer", "eFlyer_Boss_Homing", 0, "eFlyerH03", 150, 500, 1900, true)
    CallCreateEnemyInNode(_ARG_0_, "Egate_F", "eFlyer", "eFlyer_Boss_Homing", 0, "eFlyerH04", -350, 500, 1900, true)
    WaitAnimation(_ARG_0_, "Build")
    WaitAnimation(_ARG_0_, "BuildEnd")
  end,
  SubOnCallEFlyerVulcan = function(_ARG_0_)
    PossessionRetire(_ARG_0_)
    WaitAnimation(_ARG_0_, "BuildStart")
    WaitAnimation(_ARG_0_, "Build")
    CallCreateEnemyInNode(_ARG_0_, "Egate_F", "eFlyer", "eFlyer_Boss_Vulcan", 0, "eFlyerV01", 0, 400, 500, true)
    CallCreateEnemyInNode(_ARG_0_, "Egate_F", "eFlyer", "eFlyer_Boss_Vulcan", 0, "eFlyerV02", -100, 450, 1200, true)
    CallCreateEnemyInNode(_ARG_0_, "Egate_F", "eFlyer", "eFlyer_Boss_Vulcan", 0, "eFlyerV03", 100, 500, 1900, true)
    WaitAnimation(_ARG_0_, "Build")
    WaitAnimation(_ARG_0_, "BuildEnd")
  end,
  SubOnCallERounder = function(_ARG_0_)
    PossessionRetire(_ARG_0_)
    WaitAnimation(_ARG_0_, "BuildStart")
    CallMessage(_ARG_0_, "GateOpen")
    WaitAnimation(_ARG_0_, "Build")
    CallCreateEnemyInNode(_ARG_0_, "Egate_L", "eRounder", "eRounder_Boss", 0, "eRounderL01", 500, 0, 500, true)
    CallCreateEnemyInNode(_ARG_0_, "Egate_L", "eRounder", "eRounder_Boss", 0, "eRounderL02", -500, 0, 500, true)
    CallCreateEnemyInNode(_ARG_0_, "Egate_R", "eRounder", "eRounder_Boss", 0, "eRounderR01", 500, 0, 500, true)
    CallCreateEnemyInNode(_ARG_0_, "Egate_R", "eRounder", "eRounder_Boss", 0, "eRounderR02", -500, 0, 500, true)
    WaitAnimation(_ARG_0_, "Build", 5)
    CallMessage(_ARG_0_, "GateClose")
    WaitAnimation(_ARG_0_, "BuildEnd")
  end,
  SubOnCallEBomber = function(_ARG_0_)
    PossessionRetire(_ARG_0_)
    WaitAnimation(_ARG_0_, "BuildStart")
    CallMessage(_ARG_0_, "GateOpen")
    WaitAnimation(_ARG_0_, "Build")
    CallCreateEnemyInNode(_ARG_0_, "Egate_L", "eBomber", "eBomber_Boss", 0, "eBomberL01", 500, 0, 500, true)
    CallCreateEnemyInNode(_ARG_0_, "Egate_L", "eBomber", "eBomber_Boss", 0, "eBomberL02", -500, 0, 500, true)
    CallCreateEnemyInNode(_ARG_0_, "Egate_R", "eBomber", "eBomber_Boss", 0, "eBomberR01", 500, 0, 500, true)
    CallCreateEnemyInNode(_ARG_0_, "Egate_R", "eBomber", "eBomber_Boss", 0, "eBomberR02", -500, 0, 500, true)
    WaitAnimation(_ARG_0_, "Build", 5)
    CallMessage(_ARG_0_, "GateClose")
    WaitAnimation(_ARG_0_, "BuildEnd")
  end,
  SubOnBerserk = function(_ARG_0_)
    WaitAnimation(_ARG_0_, "SearchMode")
    ShotNormal(_ARG_0_, "eGenesisMissile")
    ActionFixed(_ARG_0_, "Main", 2, 2)
    WaitFixed(_ARG_0_, 1)
    CallInterruptState(_ARG_0_, "SubOnBerserk")
  end,
  SubOnCollisionOn = function(_ARG_0_)
    CallMessage(_ARG_0_, "CollisionOn")
  end,
  SubOnGateClose = function(_ARG_0_)
    CallMessage(_ARG_0_, "GateClose")
    WaitFixed(_ARG_0_, 1)
  end
}
Enemy.eGenesisSpotLight = {
  eGenesisSearchLaser_Action = function(_ARG_0_)
    SearchLaser(_ARG_0_, "eGenesisLaserPointer", "GenesisLaser", "eGenesisSearchLaser_Find")
    ActionFixed(_ARG_0_, "Main", 11, 11)
    WaitFixed(_ARG_0_, 1)
  end,
  eGenesisSpotLight_Action = function(_ARG_0_)
    eGenesisSpotLight_Search(_ARG_0_, "eGenesisSpotLight_Find", 8)
  end,
  eGenesisSpotLight_End = function(_ARG_0_)
    eGenesisSpotLight_Stop(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    PlaySeEnemy(_ARG_0_, "genesis01", "steam")
    DieExplosion(_ARG_0_, "DieeGenesisCore", 2)
  end
}
