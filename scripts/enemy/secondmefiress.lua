Enemy.secondmefiress_shadow = {
  Phase = "shadow2",
  TerrainBaseHeight = 1000,
  MaxUnits = 1000,
  UnitHP = 1,
  MovableRadius,
  MinAppearRadius,
  MaxAppearRadius,
  LodNear,
  MoveSpeed,
  DodgeSpeed,
  ApproachSpeed,
  EscapeSpeed,
  CircularFlightSpeed,
  DeltaSpeed,
  MinSpringAppearHeight,
  MaxSpringAppearHeight,
  SpringSpeed,
  SpringG,
  SpringErrorRadius,
  SpringFailedTime,
  HoldErrorAngle,
  HoldSpace,
  MaxHoldUnits,
  HoldExplosionWaitTime,
  MinAttackAppearHeight,
  MaxAttackAppearHeight,
  MaxAttackHomingHeight,
  AttackSpeed,
  AttackHomingSpeed,
  AttackTime,
  MinEncirclementHeight,
  MaxEncirclementHeight,
  MinEncirclementRadius,
  MaxEncirclementRadius,
  TargetLostDistance,
  BlownSpeed,
  SmashBlownSpeed,
  BlownTime,
  ParalysisTime,
  DeathBallWaitTime,
  DeathBallLifeTime,
  DeathBallSpeed,
  DeathBallHomingRate,
  InitParameters = function(_ARG_0_)
    Enemy.secondmefiress_shadow.MovableRadius = 30
    Enemy.secondmefiress_shadow.MinAppearRadius = 5
    Enemy.secondmefiress_shadow.MaxAppearRadius = 7.5
    Enemy.secondmefiress_shadow.LodNear = 15
    Enemy.secondmefiress_shadow.MoveSpeed = 10
    Enemy.secondmefiress_shadow.DodgeSpeed = 0.3
    Enemy.secondmefiress_shadow.ApproachSpeed = 9
    Enemy.secondmefiress_shadow.EscapeSpeed = 9
    Enemy.secondmefiress_shadow.CircularFlightSpeed = 30
    Enemy.secondmefiress_shadow.DeltaSpeed = 0.5
    Enemy.secondmefiress_shadow.MinSpringAppearHeight = 8
    Enemy.secondmefiress_shadow.MaxSpringAppearHeight = 10
    Enemy.secondmefiress_shadow.SpringSpeed = 15
    Enemy.secondmefiress_shadow.SpringG = 9.8
    Enemy.secondmefiress_shadow.SpringErrorRadius = 2
    Enemy.secondmefiress_shadow.SpringFailedTime = 0.25
    Enemy.secondmefiress_shadow.HoldErrorAngle = 15
    Enemy.secondmefiress_shadow.HoldSpace = 0.2
    Enemy.secondmefiress_shadow.MaxHoldUnits = 5
    Enemy.secondmefiress_shadow.HoldExplosionWaitTime = 1
    Enemy.secondmefiress_shadow.MinAttackAppearHeight = 2
    Enemy.secondmefiress_shadow.MaxAttackAppearHeight = 4
    Enemy.secondmefiress_shadow.MaxAttackHomingHeight = 10
    Enemy.secondmefiress_shadow.AttackSpeed = 10
    Enemy.secondmefiress_shadow.AttackHomingSpeed = 40
    Enemy.secondmefiress_shadow.AttackTime = 3
    Enemy.secondmefiress_shadow.AttackHomingTime = 1.5
    Enemy.secondmefiress_shadow.MinEncirclementHeight = 0.75
    Enemy.secondmefiress_shadow.MaxEncirclementHeight = 2.75
    Enemy.secondmefiress_shadow.MinEncirclementRadius = 12
    Enemy.secondmefiress_shadow.MaxEncirclementRadius = 18
    Enemy.secondmefiress_shadow.TargetLostDistance = 24
    Enemy.secondmefiress_shadow.BlownSpeed = 10
    Enemy.secondmefiress_shadow.SmashBlownSpeed = 20
    Enemy.secondmefiress_shadow.BlownTime = 1.5
    Enemy.secondmefiress_shadow.ParalysisTime = 5
    Enemy.secondmefiress_shadow.DeathBallWaitTime = 4
    Enemy.secondmefiress_shadow.DeathBallLifeTime = 8
    Enemy.secondmefiress_shadow.DeathBallSpeed = 7.5
    Enemy.secondmefiress_shadow.DeathBallHomingRate = 0.25
    FirstMefiress_UpdateParameters(_ARG_0_)
  end,
  Appear = function(_ARG_0_)
    _UPVALUE0_ = 0
    _UPVALUE1_ = 0
    _UPVALUE2_ = 0
    _UPVALUE3_ = 0
    CallMessage(_ARG_0_, "guard_on")
    SetParameter(_ARG_0_, "FatalEvent", 0, 0.1)
    SetParameter(_ARG_0_, "FatalEvent", 1, 0.5)
    Enemy.secondmefiress_shadow.InitParameters(_ARG_0_)
    CallHintMessage(_ARG_0_, "hint_bos05_e00_sd", true, 1)
    CallHintMessage(_ARG_0_, "hint_bos05_a00_rg", true, 2)
    CallHintMessage(_ARG_0_, "hint_bos05_a01_rg", true, 3)
    WaitFixed(_ARG_0_, 1.5)
  end,
  Search = function(_ARG_0_)
    SearchPlayer(_ARG_0_, 0)
  end,
  Action = function(_ARG_0_)
    _UPVALUE0_ = 0
    _UPVALUE1_ = 0
    _UPVALUE2_ = 0
    hp = GetHP(_ARG_0_)
    FirstMefiress_SetPointGroup(_ARG_0_, "MefiressWarp01")
    if 0 < GetParameter(_ARG_0_, "TargetBoostLevel") then
      if hp <= 0.1 then
        CallPushState(_ARG_0_, "OnFatal")
      elseif hp <= 0.25 then
        if _UPVALUE3_ == 0 then
          CallPushState(_ARG_0_, "SubOnIllusionDeathVulcan")
          _UPVALUE3_ = _UPVALUE3_ + 1
        elseif _UPVALUE3_ == 1 then
          CallPushState(_ARG_0_, "SubOnFinalDeathBall")
          _UPVALUE3_ = 0
        end
      elseif hp <= 0.5 then
        if _UPVALUE3_ == 0 then
          CallPushState(_ARG_0_, "SubOnRandomDeathVulcan")
          _UPVALUE3_ = _UPVALUE3_ + 1
        elseif _UPVALUE3_ == 1 then
          CallPushState(_ARG_0_, "SubOnIllusionDeathBall")
          _UPVALUE3_ = 0
        end
      elseif _UPVALUE3_ == 0 then
        CallPushState(_ARG_0_, "SubOnRandomDeathVulcan")
        _UPVALUE3_ = _UPVALUE3_ + 1
      elseif _UPVALUE3_ == 1 then
        CallPushState(_ARG_0_, "SubOnFirstDeathBall")
        _UPVALUE3_ = 0
      end
      WaitFixed(_ARG_0_, 3)
      return
    elseif GetParameter(_ARG_0_, "NumKyozoress") > 0 then
      WaitFixed(_ARG_0_, 3)
      return
    elseif GetParameter(_ARG_0_, "InDark") == 1 then
      if hp <= 0.25 then
        FirstMefiress_SetPointGroup(_ARG_0_, "KyozoressAppear")
        FirstMefiress_DoCommand(_ARG_0_, "summon", 0)
        FirstMefiress_DoCommand(_ARG_0_, "summon", 0 + 1)
        FirstMefiress_DoCommand(_ARG_0_, "summon", 0 + 2)
        FirstMefiress_DoCommand(_ARG_0_, "summon", 0 + 3)
        FirstMefiress_DoCommand(_ARG_0_, "summon", 0 + 4)
        FirstMefiress_DoCommand(_ARG_0_, "summon", 0 + 5)
      elseif hp <= 0.5 then
        FirstMefiress_SetPointGroup(_ARG_0_, "KyozoressAppear")
        if 0.5 > GetRandom(_ARG_0_) then
        end
        FirstMefiress_DoCommand(_ARG_0_, "summon", 1)
        FirstMefiress_DoCommand(_ARG_0_, "summon", 1 + 1)
        FirstMefiress_DoCommand(_ARG_0_, "summon", 1 + 3)
        FirstMefiress_DoCommand(_ARG_0_, "summon", 1 + 4)
      else
        FirstMefiress_SetPointGroup(_ARG_0_, "KyozoressAppear")
        if 0.5 > GetRandom(_ARG_0_) then
        end
        FirstMefiress_DoCommand(_ARG_0_, "summon", 1)
        FirstMefiress_DoCommand(_ARG_0_, "summon", 1 + 2)
        FirstMefiress_DoCommand(_ARG_0_, "summon", 1 + 4)
      end
      return
    end
    CallPushState(_ARG_0_, "SubOnZakoressDive")
    if hp <= 0.25 then
      FirstMefiress_SetPointGroup(_ARG_0_, "KyozoressAppear")
      FirstMefiress_DoCommand(_ARG_0_, "summon", 0)
      FirstMefiress_DoCommand(_ARG_0_, "summon", 0 + 1)
      FirstMefiress_DoCommand(_ARG_0_, "summon", 0 + 2)
      FirstMefiress_DoCommand(_ARG_0_, "summon", 0 + 3)
      FirstMefiress_DoCommand(_ARG_0_, "summon", 0 + 4)
      FirstMefiress_DoCommand(_ARG_0_, "summon", 0 + 5)
    elseif hp <= 0.5 then
      FirstMefiress_SetPointGroup(_ARG_0_, "KyozoressAppear")
      if 0.5 > GetRandom(_ARG_0_) then
      end
      FirstMefiress_DoCommand(_ARG_0_, "summon", 1)
      FirstMefiress_DoCommand(_ARG_0_, "summon", 1 + 2)
      FirstMefiress_DoCommand(_ARG_0_, "summon", 1 + 4)
    else
      FirstMefiress_SetPointGroup(_ARG_0_, "KyozoressAppear")
      if 0.25 > GetRandom(_ARG_0_) then
      elseif 0.5 > GetRandom(_ARG_0_) then
      elseif GetRandom(_ARG_0_) < 0.75 then
      end
      FirstMefiress_DoCommand(_ARG_0_, "summon", 3)
      FirstMefiress_DoCommand(_ARG_0_, "summon", 3 + 2)
      CallHintMessage(_ARG_0_, "hint_bos05_e02_rg", true)
    end
  end,
  SubOnRandomWarp = function(_ARG_0_)
    FirstMefiress_RandomWarp(_ARG_0_, _UPVALUE0_)
    FirstMefiress_RandomWarp(_ARG_0_, _UPVALUE0_)
    FirstMefiress_RandomWarp(_ARG_0_, _UPVALUE0_)
  end,
  SubOnZakoressDive = function(_ARG_0_)
    CallMessage(_ARG_0_, "guard_on")
    CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5, 100)
    FirstMefiress_Warp(_ARG_0_, 0, 1400, 0, 5)
    WaitFixed(_ARG_0_, 1)
    if hp <= 0.25 then
      FirstMefiress_DoCommand(_ARG_0_, "dive", 60, 40, 0.1, 1)
      WaitFixed(_ARG_0_, 2)
      FirstMefiress_DoCommand(_ARG_0_, "dive", 60, 40, 0.1, 1)
      WaitFixed(_ARG_0_, 2)
      FirstMefiress_DoCommand(_ARG_0_, "dive", 60, 40, 0.1, 1)
      WaitFixed(_ARG_0_, 2)
      FirstMefiress_DoCommand(_ARG_0_, "dive", 60, 40, 0.1, 1)
      WaitFixed(_ARG_0_, 2)
      FirstMefiress_DoCommand(_ARG_0_, "dive", 60, 40, 0.1, 1)
      WaitFixed(_ARG_0_, 3)
    elseif 0.5 >= hp then
      FirstMefiress_DoCommand(_ARG_0_, "dive", 45, 40, 0.1, 1.5)
      WaitFixed(_ARG_0_, 3)
      FirstMefiress_DoCommand(_ARG_0_, "dive", 45, 40, 0.1, 1.5)
      WaitFixed(_ARG_0_, 3)
      FirstMefiress_DoCommand(_ARG_0_, "dive", 45, 40, 0.1, 1.5)
      WaitFixed(_ARG_0_, 3)
    else
      FirstMefiress_DoCommand(_ARG_0_, "dive", 30, 40, 0.1, 2)
      WaitFixed(_ARG_0_, 3)
      FirstMefiress_DoCommand(_ARG_0_, "dive", 30, 40, 0.1, 2)
      WaitFixed(_ARG_0_, 3)
      FirstMefiress_DoCommand(_ARG_0_, "dive", 30, 40, 0.1, 2)
      WaitFixed(_ARG_0_, 3)
    end
    WaitFixed(_ARG_0_, 2.5)
    CallPushState(_ARG_0_, "SubOnRandomWarp")
    CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5, 100)
    WaitFixed(_ARG_0_, 2)
    CallHintMessage(_ARG_0_, "hint_bos05_e06_mf", false)
    SecondMefiress_Darkin(_ARG_0_, 9, 9.8 * 4.5, 3)
    CallResetCamera(_ARG_0_, "main")
    WaitFixed(_ARG_0_, 1)
    CallResetCamera(_ARG_0_, "main")
    CallMessage(_ARG_0_, "guard_off")
  end,
  SubOnFirstDeathBall = function(_ARG_0_)
    WaitFixed(_ARG_0_, 2.5)
    FirstMefiress_RandomWarp(_ARG_0_, _UPVALUE0_)
    CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5, 100)
    CallHintMessage(_ARG_0_, "hint_bos04_e10_mf", false)
    FirstMefiress_DeathBall(_ARG_0_)
    CallResetCamera(_ARG_0_, "main")
    WaitFixed(_ARG_0_, 2.5)
  end,
  SubOnRandomDeathVulcan = function(_ARG_0_)
    WaitFixed(_ARG_0_, 2.5)
    CallHintMessage(_ARG_0_, "hint_bos04_e05_mf", false)
    FirstMefiress_RandomWarp(_ARG_0_, _UPVALUE0_)
    CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5, 100)
    ShotVulcan(_ARG_0_, "DeathVulcan", 1)
    ActionRotate(_ARG_0_, "Main", 1, 1)
    FirstMefiress_RandomWarp(_ARG_0_, _UPVALUE0_)
    ShotVulcan(_ARG_0_, "DeathVulcan", 1)
    ActionRotate(_ARG_0_, "Main", 1, 1)
    FirstMefiress_RandomWarp(_ARG_0_, _UPVALUE0_)
    ShotVulcan(_ARG_0_, "DeathVulcan", 1)
    ActionRotate(_ARG_0_, "Main", 1, 1)
    FirstMefiress_RandomWarp(_ARG_0_, _UPVALUE0_)
    ShotVulcan(_ARG_0_, "DeathVulcan", 1)
    ActionRotate(_ARG_0_, "Main", 1, 1)
    FirstMefiress_RandomWarp(_ARG_0_, _UPVALUE0_)
    ShotVulcan(_ARG_0_, "DeathVulcan", 1)
    ActionRotate(_ARG_0_, "Main", 1, 1)
    WaitFixed(_ARG_0_, 2.5)
    CallResetCamera(_ARG_0_, "main")
  end,
  SubOnIllusionDeathBall = function(_ARG_0_)
    FirstMefiress_SetPointGroup(_ARG_0_, "MefiressWarp01")
    FirstMefiress_RandomWarp(_ARG_0_, _UPVALUE0_)
    FirstMefiress_DoCommand(_ARG_0_, "illusion")
    FirstMefiress_RandomWarp(_ARG_0_, _UPVALUE0_)
    FirstMefiress_DoCommand(_ARG_0_, "illusion")
    FirstMefiress_RandomWarp(_ARG_0_, _UPVALUE0_)
    CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5, 100)
    CallHintMessage(_ARG_0_, "hint_bos04_e04_mf", false)
    FirstMefiress_DeathBall(_ARG_0_)
    CallResetCamera(_ARG_0_, "main")
    WaitFixed(_ARG_0_, 2.5)
  end,
  SubOnIllusionDeathVulcan = function(_ARG_0_)
    FirstMefiress_SetPointGroup(_ARG_0_, "MefiressWarp02")
    FirstMefiress_RandomWarp(_ARG_0_, _UPVALUE0_)
    FirstMefiress_DoCommand(_ARG_0_, "illusion")
    FirstMefiress_RandomWarp(_ARG_0_, _UPVALUE0_)
    FirstMefiress_DoCommand(_ARG_0_, "illusion")
    FirstMefiress_RandomWarp(_ARG_0_, _UPVALUE0_)
    FirstMefiress_DoCommand(_ARG_0_, "illusion")
    FirstMefiress_RandomWarp(_ARG_0_, _UPVALUE0_)
    FirstMefiress_DoCommand(_ARG_0_, "illusion")
    FirstMefiress_RandomWarp(_ARG_0_, _UPVALUE0_)
    CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5, 100)
    CallHintMessage(_ARG_0_, "hint_bos04_e04_mf", false)
    FirstMefiress_DeathBall(_ARG_0_)
    CallResetCamera(_ARG_0_, "main")
    WaitFixed(_ARG_0_, 2.5)
    FirstMefiress_SetPointGroup(_ARG_0_, "MefiressWarp01")
  end,
  SubOnFinalDeathBall = function(_ARG_0_)
    FirstMefiress_SetPointGroup(_ARG_0_, "MefiressWarp01")
    FirstMefiress_RandomWarp(_ARG_0_, _UPVALUE0_)
    FirstMefiress_DoCommand(_ARG_0_, "illusion")
    FirstMefiress_RandomWarp(_ARG_0_, _UPVALUE0_)
    FirstMefiress_DoCommand(_ARG_0_, "illusion")
    FirstMefiress_RandomWarp(_ARG_0_, _UPVALUE0_)
    FirstMefiress_DoCommand(_ARG_0_, "illusion")
    FirstMefiress_RandomWarp(_ARG_0_, _UPVALUE0_)
    FirstMefiress_DoCommand(_ARG_0_, "illusion")
    FirstMefiress_RandomWarp(_ARG_0_, _UPVALUE0_)
    CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5, 100)
    CallHintMessage(_ARG_0_, "hint_bos04_e04_mf", false)
    FirstMefiress_DeathBall(_ARG_0_)
    CallResetCamera(_ARG_0_, "main")
    WaitFixed(_ARG_0_, 5)
    FirstMefiress_SetPointGroup(_ARG_0_, "MefiressWarp01")
  end,
  OnDamage = function(_ARG_0_)
    CallHintMessage(_ARG_0_, "hint_bos04_e11_mf", false)
    CallResetCamera(_ARG_0_, "main")
    CallMessage(_ARG_0_, "guard_off")
    if _UPVALUE0_ < 1 then
      DamageKnockBack(_ARG_0_)
      _UPVALUE0_ = _UPVALUE0_ + 1
    end
    CallMessage(_ARG_0_, "guard_on")
    CallPushState(_ARG_0_, "SubOnRandomWarp")
    CallMessage(_ARG_0_, "guard_off")
  end,
  OnStun = function(_ARG_0_)
    CallResetCamera(_ARG_0_, "main")
    CallMessage(_ARG_0_, "guard_off")
    if _UPVALUE0_ < 1 then
      DamageKnockBack(_ARG_0_)
      _UPVALUE0_ = _UPVALUE0_ + 1
    end
    CallMessage(_ARG_0_, "guard_on")
    CallPushState(_ARG_0_, "SubOnRandomWarp")
    CallMessage(_ARG_0_, "guard_off")
  end,
  OnDeathBallCancel = function(_ARG_0_)
    CallResetCamera(_ARG_0_, "main")
    CallMessage(_ARG_0_, "guard_off")
    if _UPVALUE0_ < 3 then
      FirstMefiress_Tired(_ARG_0_, 5)
      _UPVALUE0_ = _UPVALUE0_ + 1
    else
      CallMessage(_ARG_0_, "guard_on")
      CallPushState(_ARG_0_, "SubOnRandomWarp")
      CallMessage(_ARG_0_, "guard_off")
    end
  end,
  OnBeginTargetBoost = function(_ARG_0_)
    CallResetCamera(_ARG_0_, "main")
    CallMessage(_ARG_0_, "guard_off")
    if GetParameter(_ARG_0_, "InDark") == 1 then
      WaitFixed(_ARG_0_, 1.5)
      CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5, 100)
      SecondMefiress_Darkout(_ARG_0_, 0.5, 10)
      CallResetCamera(_ARG_0_, "main")
    end
    CallInterruptState(_ARG_0_, "Action")
  end,
  OnEndTargetBoost = function(_ARG_0_)
    CallResetCamera(_ARG_0_, "main")
    CallResetCamera(_ARG_0_, "foo")
    CallResetCamera(_ARG_0_, "bar")
    CallMessage(_ARG_0_, "guard_off")
    hp = GetHP(_ARG_0_)
    if hp <= 0.25 then
      CallHintMessage(_ARG_0_, "hint_bos04_e12_mf", false)
      CallHintMessage(_ARG_0_, "hint_bos05_e05_mf", true)
    elseif hp <= 0.5 then
      CallHintMessage(_ARG_0_, "hint_bos04_e12_mf", false)
      CallHintMessage(_ARG_0_, "hint_bos05_e04_mf", true)
    else
      CallHintMessage(_ARG_0_, "hint_bos04_e12_mf", false)
    end
    CallInterruptState(_ARG_0_, "Action")
  end,
  OnFatal = function(_ARG_0_)
    CallResetCamera(_ARG_0_, "main")
    if GetParameter(_ARG_0_, "FatalEventId") == 0 then
      CallSetCamera(_ARG_0_, "foo", 1, 1000, 0, 0, 0, 100)
      for _FORARG_ = 1, 10 do
        FirstMefiress_Warp(_ARG_0_, 1000 * math.cos(0), Enemy.secondmefiress_shadow.TerrainBaseHeight + 75, 1000 * math.sin(0), 10)
        FirstMefiress_DoCommand(_ARG_0_, "illusion")
      end
      FirstMefiress_Warp(_ARG_0_, 1000 * math.cos(0 + 2 * math.pi / 10), Enemy.secondmefiress_shadow.TerrainBaseHeight + 75 + 1000 / 10, 1000 * math.sin(0 + 2 * math.pi / 10), 10)
      CallResetCamera(_ARG_0_, "foo")
      CallSetCamera(_ARG_0_, "bar", 1, 1000, 0, 0, 0, 100, 1.5)
      CallHintMessage(_ARG_0_, "hint_bos05_e07_mf", false)
      FirstMefiress_DeathBall(_ARG_0_, 15, "LL")
    elseif GetParameter(_ARG_0_, "FatalEventId") == 1 then
      CallMessage(_ARG_0_, "guard_on")
      FirstMefiress_Warp(_ARG_0_, 0, 750, 0, 30)
      WaitFixed(_ARG_0_, 1)
      CallMessage(_ARG_0_, "guard_off")
      CallPushState(_ARG_0_, "SubOnIllusionDeathBall")
    end
  end,
  OnDead = function(_ARG_0_)
    CallMessage(_ARG_0_, "dead")
    WaitFixed(_ARG_0_, 9999)
  end
}
Enemy.kyozoress = {
  Appear = function(_ARG_0_)
    Kyozoress_Appear(_ARG_0_, 3)
  end,
  Search = function(_ARG_0_)
    SearchPlayer(_ARG_0_, 0)
  end,
  Action = function(_ARG_0_)
    WaitAnimation(_ARG_0_, "Wait", 3)
    if GetDistance(_ARG_0_) < 1250 then
      Kyozoress_Dive(_ARG_0_)
    elseif GetDistance(_ARG_0_) < 2500 then
      CallPushState(_ARG_0_, "SubOnArmAttack")
    elseif GetRandom(_ARG_0_) < 0.3 then
      CallPushState(_ARG_0_, "SubOnSwingLaserR")
    elseif GetRandom(_ARG_0_) < 0.6 then
      CallPushState(_ARG_0_, "SubOnSwingLaserL")
    else
      CallPushState(_ARG_0_, "SubOnRiseLaser")
    end
  end,
  SubOnRiseLaser = function(_ARG_0_)
    WaitAnimation(_ARG_0_, "attackUD01")
    Kyozoress_ChargeDeathBeam(_ARG_0_, "down", 3)
    CallMessage(_ARG_0_, "collision_off")
    ShotLaser(_ARG_0_, "KyozoressBeam", "Kyozoress")
    ActionAnimation(_ARG_0_, "down")
    CallMessage(_ARG_0_, "collision_on")
    WaitAnimation(_ARG_0_, "attackUD04", 1)
    WaitAnimation(_ARG_0_, "attackUD05")
  end,
  SubOnSwingLaserL = function(_ARG_0_)
    WaitAnimation(_ARG_0_, "attackLR01")
    Kyozoress_ChargeDeathBeam(_ARG_0_, "left", 3)
    CallMessage(_ARG_0_, "collision_off")
    ShotLaser(_ARG_0_, "KyozoressBeam", "Kyozoress")
    ActionAnimation(_ARG_0_, "left")
    CallMessage(_ARG_0_, "collision_on")
    WaitAnimation(_ARG_0_, "attackLR04", 3)
    WaitAnimation(_ARG_0_, "attackLR05")
  end,
  SubOnSwingLaserR = function(_ARG_0_)
    WaitAnimation(_ARG_0_, "attackRL01")
    Kyozoress_ChargeDeathBeam(_ARG_0_, "right", 3)
    CallMessage(_ARG_0_, "collision_off")
    ShotLaser(_ARG_0_, "KyozoressBeam", "Kyozoress")
    ActionAnimation(_ARG_0_, "right")
    CallMessage(_ARG_0_, "collision_on")
    WaitAnimation(_ARG_0_, "attackRL04", 3)
    WaitAnimation(_ARG_0_, "attackRL05")
  end,
  SubOnArmAttack = function(_ARG_0_)
    CreateExplosion(_ARG_0_, "DarkWaveL")
    ActionFixed(_ARG_0_, "Main", 1, 1)
    CallMessage(_ARG_0_, "collision_on")
    WaitAnimation(_ARG_0_, "attack02", 3)
    CallMessage(_ARG_0_, "collision_off")
    WaitAnimation(_ARG_0_, "attack03")
  end,
  OnStun = function(_ARG_0_)
    CallMessage(_ARG_0_, "collision_on")
    StunGround(_ARG_0_)
    CallMessage(_ARG_0_, "collision_off")
  end,
  OnDead = function(_ARG_0_)
    Kyozoress_Breakup(_ARG_0_)
  end
}
