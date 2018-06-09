Enemy.firstmefiress_omega = {
  Phase = "omega",
  MaxUnits = 256,
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
    Enemy.firstmefiress_omega.MinAppearRadius = 6
    Enemy.firstmefiress_omega.MaxAppearRadius = 9
    Enemy.firstmefiress_omega.LodNear = 15
    Enemy.firstmefiress_omega.MoveSpeed = 10
    Enemy.firstmefiress_omega.DodgeSpeed = 0.5
    Enemy.firstmefiress_omega.ApproachSpeed = 9
    Enemy.firstmefiress_omega.EscapeSpeed = 9
    Enemy.firstmefiress_omega.CircularFlightSpeed = 25
    Enemy.firstmefiress_omega.DeltaSpeed = 0.5
    Enemy.firstmefiress_omega.MinSpringAppearHeight = 2
    Enemy.firstmefiress_omega.MaxSpringAppearHeight = 4
    Enemy.firstmefiress_omega.SpringSpeed = 5
    Enemy.firstmefiress_omega.SpringG = 9.8
    Enemy.firstmefiress_omega.SpringErrorRadius = 1
    Enemy.firstmefiress_omega.SpringFailedTime = 0.25
    Enemy.firstmefiress_omega.HoldErrorAngle = 15
    Enemy.firstmefiress_omega.HoldSpace = 0.2
    Enemy.firstmefiress_omega.MaxHoldUnits = 5
    Enemy.firstmefiress_omega.HoldExplosionWaitTime = 2
    Enemy.firstmefiress_omega.MinAttackAppearHeight = 2
    Enemy.firstmefiress_omega.MaxAttackAppearHeight = 4
    Enemy.firstmefiress_omega.MaxAttackHomingHeight = 10
    Enemy.firstmefiress_omega.AttackSpeed = 7.5
    Enemy.firstmefiress_omega.AttackHomingSpeed = 30
    Enemy.firstmefiress_omega.AttackTime = 2.5
    Enemy.firstmefiress_omega.AttackHomingTime = 1
    Enemy.firstmefiress_omega.MinEncirclementHeight = 0.75
    Enemy.firstmefiress_omega.MaxEncirclementHeight = 3.5
    Enemy.firstmefiress_omega.MinEncirclementRadius = 8
    Enemy.firstmefiress_omega.MaxEncirclementRadius = 16
    Enemy.firstmefiress_omega.TargetLostDistance = 20
    Enemy.firstmefiress_omega.BlownSpeed = 12
    Enemy.firstmefiress_omega.SmashBlownSpeed = 12
    Enemy.firstmefiress_omega.BlownTime = 0.25
    Enemy.firstmefiress_omega.ParalysisTime = 2.5
    Enemy.firstmefiress_omega.DeathBallWaitTime = 2.5
    Enemy.firstmefiress_omega.DeathBallLifeTime = 7.5
    Enemy.firstmefiress_omega.DeathBallSpeed = 7.5
    Enemy.firstmefiress_omega.DeathBallHomingRate = 0.5
    FirstMefiress_UpdateParameters(_ARG_0_)
  end,
  EscapeParameters = function(_ARG_0_)
    Enemy.firstmefiress_omega.DodgeSpeed = 0.3
    Enemy.firstmefiress_omega.ApproachSpeed = 5
    Enemy.firstmefiress_omega.EscapeSpeed = 10
    Enemy.firstmefiress_omega.MinEncirclementRadius = 10
    Enemy.firstmefiress_omega.MaxEncirclementRadius = 20
    Enemy.firstmefiress_omega.TargetLostDistance = 25
    FirstMefiress_UpdateParameters(_ARG_0_)
  end,
  Appear = function(_ARG_0_)
    CallHintMessage(_ARG_0_, "hint_bos04_e00_om", true, 1)
    CallHintMessage(_ARG_0_, "hint_bos04_a07_sd", true, 2)
    _UPVALUE0_ = 0
    math.randomseed(1)
    Enemy.firstmefiress_omega.InitParameters(_ARG_0_)
    CallMessage(_ARG_0_, "guard_on")
    if IsDebug() then
      FirstMefiress_DoCommand(_ARG_0_, "encirclement", 1, 15)
    else
      FirstMefiress_DoCommand(_ARG_0_, "encirclement", 200, 8)
    end
    WaitFixed(_ARG_0_, 1.5)
    CallMessage(_ARG_0_, "guard_off")
  end,
  Search = function(_ARG_0_)
    SearchPlayer(_ARG_0_, 0)
  end,
  Action = function(_ARG_0_)
    _UPVALUE0_ = 0
    _UPVALUE1_ = 0
    _UPVALUE2_ = 0
    _UPVALUE3_ = 0
    CallMessage(_ARG_0_, "guard_off")
    FirstMefiress_SetPointGroup(_ARG_0_, "MefiressWarp01")
    if GetParameter(_ARG_0_, "NumKilledUnit") >= 75 then
      CallHintMessage(_ARG_0_, "hint_bos04_a06_om", true)
    elseif GetParameter(_ARG_0_, "NumKilledUnit") >= 25 then
      CallHintMessage(_ARG_0_, "hint_bos04_a05_om", true)
    end
    if GetParameter(_ARG_0_, "NumUnit") < 100 then
      CallMessage(_ARG_0_, "guard_on")
      CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5, 100)
      FirstMefiress_Warp(_ARG_0_, 0, 500, 0, 15)
      FirstMefiress_DoCommand(_ARG_0_, "encirclement", 100, 15)
      CallResetCamera(_ARG_0_, "main")
      CallMessage(_ARG_0_, "guard_off")
      return
    end
    if GetHP(_ARG_0_) <= 0.25 then
      Enemy.firstmefiress_omega.EscapeParameters(_ARG_0_)
      if _UPVALUE0_ == 0 then
        FirstMefiress_RandomWarp(_ARG_0_, 30)
        CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5, 100)
        WaitFixed(_ARG_0_, 1.5)
        CallHintMessage(_ARG_0_, "hint_bos04_e10_mf", false)
        FirstMefiress_DeathBall(_ARG_0_)
        CallResetCamera(_ARG_0_, "main")
        WaitFixed(_ARG_0_, 3)
        FirstMefiress_RandomWarp(_ARG_0_, 30)
        CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5, 100)
        WaitFixed(_ARG_0_, 1.5)
        CallHintMessage(_ARG_0_, "hint_bos04_e10_mf", false)
        FirstMefiress_DeathBall(_ARG_0_)
        CallResetCamera(_ARG_0_, "main")
        WaitFixed(_ARG_0_, 3)
        FirstMefiress_RandomWarp(_ARG_0_, 30)
        CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5, 100)
        WaitFixed(_ARG_0_, 1.5)
        CallHintMessage(_ARG_0_, "hint_bos04_e10_mf", false)
        FirstMefiress_DeathBall(_ARG_0_)
        CallResetCamera(_ARG_0_, "main")
        WaitFixed(_ARG_0_, 4.5)
        _UPVALUE0_ = _UPVALUE0_ + 1
      elseif _UPVALUE0_ == 1 then
        FirstMefiress_RandomWarp(_ARG_0_, 30)
        WaitFixed(_ARG_0_, 0.5)
        FirstMefiress_RandomWarp(_ARG_0_, 30)
        WaitFixed(_ARG_0_, 0.5)
        FirstMefiress_RandomWarp(_ARG_0_, 30)
        CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5, 100)
        WaitFixed(_ARG_0_, 1.5)
        CallHintMessage(_ARG_0_, "hint_bos04_e05_mf", false)
        ShotVulcan(_ARG_0_, "DeathVulcan", 1)
        ActionRotate(_ARG_0_, "Main", 6, 6)
        WaitFixed(_ARG_0_, 1)
        CallResetCamera(_ARG_0_, "main")
        _UPVALUE0_ = 0
      end
    elseif GetHP(_ARG_0_) <= 0.5 then
      Enemy.firstmefiress_omega.EscapeParameters(_ARG_0_)
      if _UPVALUE0_ == 0 then
        FirstMefiress_RandomWarp(_ARG_0_, 30)
        CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5, 100)
        WaitFixed(_ARG_0_, 1.5)
        CallHintMessage(_ARG_0_, "hint_bos04_e05_mf", false)
        ShotVulcan(_ARG_0_, "DeathVulcan", 1.25)
        ActionRotate(_ARG_0_, "Main", 3, 3)
        WaitFixed(_ARG_0_, 1.5)
        CallResetCamera(_ARG_0_, "main")
        _UPVALUE0_ = _UPVALUE0_ + 1
      elseif _UPVALUE0_ == 1 then
        FirstMefiress_RandomWarp(_ARG_0_, 30)
        CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5, 100)
        WaitFixed(_ARG_0_, 1.5)
        CallHintMessage(_ARG_0_, "hint_bos04_e10_mf", false)
        FirstMefiress_DeathBall(_ARG_0_)
        CallResetCamera(_ARG_0_, "main")
        WaitFixed(_ARG_0_, 3)
        _UPVALUE0_ = 0
      end
    else
      Enemy.firstmefiress_omega.EscapeParameters(_ARG_0_)
      if _UPVALUE0_ == 0 then
        FirstMefiress_RandomWarp(_ARG_0_, 30)
        WaitFixed(_ARG_0_, 1)
        CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5, 100)
        FirstMefiress_DoCommand(_ARG_0_, "spring", 50, GetRandomAppearRadius(_ARG_0_, Enemy.firstmefiress_omega.MinAppearRadius, Enemy.firstmefiress_omega.MaxAppearRadius), 1, 2, 6.5)
        WaitFixed(_ARG_0_, 3)
        CallResetCamera(_ARG_0_, "main")
        _UPVALUE0_ = _UPVALUE0_ + 1
      elseif _UPVALUE0_ == 1 then
        FirstMefiress_RandomWarp(_ARG_0_, 30)
        WaitFixed(_ARG_0_, 1)
        CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5, 100)
        FirstMefiress_DoCommand(_ARG_0_, "attack", 50, 4.5, 1.5, 1.5)
        WaitFixed(_ARG_0_, 3)
        CallResetCamera(_ARG_0_, "main")
        _UPVALUE0_ = 0
      end
    end
    WaitFixed(_ARG_0_, 2.5)
    Enemy.firstmefiress_omega.InitParameters(_ARG_0_)
    WaitFixed(_ARG_0_, 2.5)
  end,
  OnDamage = function(_ARG_0_)
    if GetHP(_ARG_0_) <= 0.5 then
      CallHintMessage(_ARG_0_, "hint_bos04_e11_mf", false)
      CallHintMessage(_ARG_0_, "hint_bos04_e07_mf", true)
    end
    CallResetCamera(_ARG_0_, "main")
    CallMessage(_ARG_0_, "guard_off")
    if _UPVALUE0_ < 1 then
      DamageKnockBack(_ARG_0_)
      _UPVALUE0_ = _UPVALUE0_ + 1
    end
    CallMessage(_ARG_0_, "guard_on")
  end,
  OnStun = function(_ARG_0_)
    CallResetCamera(_ARG_0_, "main")
    CallMessage(_ARG_0_, "guard_off")
    if _UPVALUE0_ < 1 then
      DamageKnockBack(_ARG_0_)
      _UPVALUE0_ = _UPVALUE0_ + 1
    end
    CallMessage(_ARG_0_, "guard_on")
  end,
  OnDeathBallCancel = function(_ARG_0_)
    CallResetCamera(_ARG_0_, "main")
    CallMessage(_ARG_0_, "guard_off")
    if _UPVALUE0_ < 3 then
      FirstMefiress_Tired(_ARG_0_, 5)
      _UPVALUE0_ = _UPVALUE0_ + 1
    else
      CallMessage(_ARG_0_, "guard_on")
      FirstMefiress_RandomWarp(_ARG_0_, WARP_SPEED)
      CallMessage(_ARG_0_, "guard_off")
    end
  end,
  OnDead = function(_ARG_0_)
    CallMessage(_ARG_0_, "dead")
    WaitFixed(_ARG_0_, 9999)
  end
}
