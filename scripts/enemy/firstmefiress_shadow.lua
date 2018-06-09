function ToMeter(_ARG_0_)
  return _ARG_0_ * 100
end
function GetRandomAppearRadius(_ARG_0_, _ARG_1_, _ARG_2_)
  return _ARG_1_ + (_ARG_2_ - _ARG_1_) * GetRandom(_ARG_0_)
end
Enemy.firstmefiress_shadow = {
  Phase = "shadow",
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
    Enemy.firstmefiress_shadow.MinAppearRadius = 5
    Enemy.firstmefiress_shadow.MaxAppearRadius = 7.5
    Enemy.firstmefiress_shadow.LodNear = 15
    Enemy.firstmefiress_shadow.MoveSpeed = 10
    Enemy.firstmefiress_shadow.DodgeSpeed = 0.5
    Enemy.firstmefiress_shadow.ApproachSpeed = 9
    Enemy.firstmefiress_shadow.EscapeSpeed = 9
    Enemy.firstmefiress_shadow.CircularFlightSpeed = 25
    Enemy.firstmefiress_shadow.DeltaSpeed = 0.5
    Enemy.firstmefiress_shadow.MinSpringAppearHeight = 1
    Enemy.firstmefiress_shadow.MaxSpringAppearHeight = 2.5
    Enemy.firstmefiress_shadow.SpringSpeed = 5
    Enemy.firstmefiress_shadow.SpringG = 9.8
    Enemy.firstmefiress_shadow.SpringErrorRadius = 2
    Enemy.firstmefiress_shadow.SpringFailedTime = 0.25
    Enemy.firstmefiress_shadow.HoldErrorAngle = 15
    Enemy.firstmefiress_shadow.HoldSpace = 0.2
    Enemy.firstmefiress_shadow.MaxHoldUnits = 5
    Enemy.firstmefiress_shadow.HoldExplosionWaitTime = 2
    Enemy.firstmefiress_shadow.MinAttackAppearHeight = 2
    Enemy.firstmefiress_shadow.MaxAttackAppearHeight = 4
    Enemy.firstmefiress_shadow.MaxAttackHomingHeight = 10
    Enemy.firstmefiress_shadow.AttackSpeed = 7.5
    Enemy.firstmefiress_shadow.AttackHomingSpeed = 30
    Enemy.firstmefiress_shadow.AttackTime = 2.5
    Enemy.firstmefiress_shadow.AttackHomingTime = 1
    Enemy.firstmefiress_shadow.MinEncirclementHeight = 0.75
    Enemy.firstmefiress_shadow.MaxEncirclementHeight = 3.5
    Enemy.firstmefiress_shadow.MinEncirclementRadius = 8
    Enemy.firstmefiress_shadow.MaxEncirclementRadius = 16
    Enemy.firstmefiress_shadow.TargetLostDistance = 20
    Enemy.firstmefiress_shadow.BlownSpeed = 12
    Enemy.firstmefiress_shadow.SmashBlownSpeed = 12
    Enemy.firstmefiress_shadow.BlownTime = 0.25
    Enemy.firstmefiress_shadow.ParalysisTime = 5
    Enemy.firstmefiress_shadow.DeathBallWaitTime = 5
    Enemy.firstmefiress_shadow.DeathBallLifeTime = 10
    Enemy.firstmefiress_shadow.DeathBallSpeed = 6
    Enemy.firstmefiress_shadow.DeathBallHomingRate = 0.25
    FirstMefiress_UpdateParameters(_ARG_0_)
  end,
  SwarmParameters = function(_ARG_0_)
    Enemy.firstmefiress_shadow.DodgeSpeed = 0.4
    Enemy.firstmefiress_shadow.ApproachSpeed = 6
    Enemy.firstmefiress_shadow.EscapeSpeed = 6
    Enemy.firstmefiress_shadow.MinEncirclementRadius = 8
    Enemy.firstmefiress_shadow.MaxEncirclementRadius = 14
    Enemy.firstmefiress_shadow.TargetLostDistance = 16
    FirstMefiress_UpdateParameters(_ARG_0_)
  end,
  EscapeParameters = function(_ARG_0_)
    Enemy.firstmefiress_shadow.DodgeSpeed = 0.3
    Enemy.firstmefiress_shadow.ApproachSpeed = 5
    Enemy.firstmefiress_shadow.EscapeSpeed = 10
    Enemy.firstmefiress_shadow.MinEncirclementRadius = 10
    Enemy.firstmefiress_shadow.MaxEncirclementRadius = 20
    Enemy.firstmefiress_shadow.TargetLostDistance = 25
    FirstMefiress_UpdateParameters(_ARG_0_)
  end,
  Appear = function(_ARG_0_)
    CallHintMessage(_ARG_0_, "hint_bos04_e00_sd", true, 1)
    CallHintMessage(_ARG_0_, "hint_bos04_a08_sd", true, 2)
    CallHintMessage(_ARG_0_, "hint_bos04_a02_sd", true, 3)
    SetParameter(_ARG_0_, "FatalEvent", 0, 0.5)
    _UPVALUE0_ = 0
    math.randomseed(1)
    Enemy.firstmefiress_shadow.InitParameters(_ARG_0_)
    Enemy.firstmefiress_shadow.SwarmParameters(_ARG_0_)
    CallMessage(_ARG_0_, "guard_on")
    if IsDebug() then
      FirstMefiress_DoCommand(_ARG_0_, "encirclement", 1, 15)
    else
      FirstMefiress_DoCommand(_ARG_0_, "encirclement", 200, 15)
    end
    WaitFixed(_ARG_0_, 1.5)
    CallMessage(_ARG_0_, "guard_off")
  end,
  Search = function(_ARG_0_)
    SearchPlayer(_ARG_0_, 0)
  end,
  Action = function(_ARG_0_)
    _UPVALUE0_ = 0
    FirstMefiress_SetPointGroup(_ARG_0_, "MefiressWarp01")
    WaitFixed(_ARG_0_, 1.5)
    Enemy.firstmefiress_shadow.InitParameters(_ARG_0_)
    if GetParameter(_ARG_0_, "NumKilledUnit") >= 90 then
      CallHintMessage(_ARG_0_, "hint_bos04_e03_mf", true)
    elseif GetParameter(_ARG_0_, "NumKilledUnit") >= 60 then
      CallHintMessage(_ARG_0_, "hint_bos04_a00_sd", true)
    elseif GetParameter(_ARG_0_, "NumKilledUnit") >= 30 then
      CallHintMessage(_ARG_0_, "hint_bos04_e02_mf", true)
    end
    if GetParameter(_ARG_0_, "NumUnit") < 100 then
      FirstMefiress_DoCommand(_ARG_0_, "encirclement", 50, 20)
      WaitFixed(_ARG_0_, 1.5)
      FirstMefiress_DoCommand(_ARG_0_, "encirclement", 50, 25)
      WaitFixed(_ARG_0_, 1.5)
      return
    end
    if GetParameter(_ARG_0_, "NumKilledUnit") >= 90 then
      FirstMefiress_DoCommand(_ARG_0_, "spring", 50, GetRandomAppearRadius(_ARG_0_, Enemy.firstmefiress_shadow.MinAppearRadius, Enemy.firstmefiress_shadow.MaxAppearRadius), 1, 2, 0)
      WaitFixed(_ARG_0_, 3)
    elseif GetParameter(_ARG_0_, "NumKilledUnit") >= 60 then
      FirstMefiress_DoCommand(_ARG_0_, "spring", 40, GetRandomAppearRadius(_ARG_0_, Enemy.firstmefiress_shadow.MinAppearRadius, Enemy.firstmefiress_shadow.MaxAppearRadius), 1.5, 1.5, 0)
      WaitFixed(_ARG_0_, 3)
    elseif GetParameter(_ARG_0_, "NumKilledUnit") >= 30 then
      FirstMefiress_DoCommand(_ARG_0_, "spring", 30, GetRandomAppearRadius(_ARG_0_, Enemy.firstmefiress_shadow.MinAppearRadius, Enemy.firstmefiress_shadow.MaxAppearRadius), 2, 1, 0)
      WaitFixed(_ARG_0_, 3)
    else
      FirstMefiress_DoCommand(_ARG_0_, "spring", 20, GetRandomAppearRadius(_ARG_0_, Enemy.firstmefiress_shadow.MinAppearRadius, Enemy.firstmefiress_shadow.MaxAppearRadius), 2.5, 0.5, 0)
      WaitFixed(_ARG_0_, 3)
    end
    WaitFixed(_ARG_0_, 2.5)
    Enemy.firstmefiress_shadow.SwarmParameters(_ARG_0_)
    WaitFixed(_ARG_0_, 2.5)
  end,
  OnBeginTargetBoost = function(_ARG_0_)
    CallHintMessage(_ARG_0_, "hint_bos04_e12_mf", false)
    CallHintMessage(_ARG_0_, "hint_bos04_e06_mf", true)
    CallSetCamera(_ARG_0_, "main", 1, 300, -100, 100, 0, 0, 1, 0.5)
    Enemy.firstmefiress_shadow.EscapeParameters(_ARG_0_)
    FirstMefiress_Embody(_ARG_0_, 1)
    CallInterruptState(_ARG_0_, "SubWarpAttack")
  end,
  SubWarpAttack = function(_ARG_0_)
    _UPVALUE0_ = 0
    _UPVALUE1_ = 0
    _UPVALUE2_ = 0
    hp = GetHP(_ARG_0_)
    CallMessage(_ARG_0_, "guard_off")
    if hp <= 0.5 then
      if _UPVALUE3_ == 0 then
        FirstMefiress_RandomWarp(_ARG_0_, 30)
        CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5, 100)
        WaitFixed(_ARG_0_, 1.5)
        CallHintMessage(_ARG_0_, "hint_bos04_e05_mf", false)
        ShotVulcan(_ARG_0_, "DeathVulcan", 1.25)
        ActionRotate(_ARG_0_, "Main", 3, 3)
        WaitFixed(_ARG_0_, 3)
        CallResetCamera(_ARG_0_, "main")
        _UPVALUE3_ = _UPVALUE3_ + 1
      elseif _UPVALUE3_ == 1 then
        FirstMefiress_RandomWarp(_ARG_0_, 30)
        WaitFixed(_ARG_0_, 1.5)
        CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5, 100)
        CallHintMessage(_ARG_0_, "hint_bos04_e10_mf", false)
        FirstMefiress_DeathBall(_ARG_0_)
        CallResetCamera(_ARG_0_, "main")
        WaitFixed(_ARG_0_, 10)
        _UPVALUE3_ = 0
      end
    elseif _UPVALUE3_ == 0 then
      FirstMefiress_RandomWarp(_ARG_0_, 30)
      CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5, 100)
      WaitFixed(_ARG_0_, 1.5)
      CallHintMessage(_ARG_0_, "hint_bos04_e08_mf", false)
      FirstMefiress_DoCommand(_ARG_0_, "attack", 30, 4, 2, 2)
      WaitFixed(_ARG_0_, 4)
      CallResetCamera(_ARG_0_, "main")
      WaitFixed(_ARG_0_, 3)
      _UPVALUE3_ = _UPVALUE3_ + 1
    elseif _UPVALUE3_ == 1 then
      FirstMefiress_RandomWarp(_ARG_0_, 30)
      CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5, 100)
      WaitFixed(_ARG_0_, 1.5)
      CallHintMessage(_ARG_0_, "hint_bos04_e09_mf", false)
      ShotVulcan(_ARG_0_, "DeathVulcan", 1.25)
      ActionRotate(_ARG_0_, "Main", 3, 3)
      WaitFixed(_ARG_0_, 3)
      CallResetCamera(_ARG_0_, "main")
      _UPVALUE3_ = 0
    end
    CallInterruptState(_ARG_0_, "SubWarpAttack")
  end,
  OnEndTargetBoost = function(_ARG_0_)
    CallHintMessage(_ARG_0_, "hint_bos04_e04_mf", false)
    CallResetCamera(_ARG_0_, "main")
    Enemy.firstmefiress_shadow.InitParameters(_ARG_0_)
    FirstMefiress_Disembody(_ARG_0_)
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
    CallInterruptState(_ARG_0_, "SubWarpAttack")
  end,
  OnFatal = function(_ARG_0_)
    if GetParameter(_ARG_0_, "FatalEventId") == 0 then
      CallMessage(_ARG_0_, "guard_on")
      FirstMefiress_Warp(_ARG_0_, 0, 300, 0, 30)
      WaitFixed(_ARG_0_, 1)
      CallMessage(_ARG_0_, "guard_off")
      CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5, 100)
      CallHintMessage(_ARG_0_, "hint_bos04_e10_mf", false)
      FirstMefiress_DeathBall(_ARG_0_)
      CallResetCamera(_ARG_0_, "main")
      WaitFixed(_ARG_0_, 10)
    end
    CallMessage(_ARG_0_, "guard_on")
    CallInterruptState(_ARG_0_, "SubWarpAttack")
  end,
  OnStun = function(_ARG_0_)
    CallResetCamera(_ARG_0_, "main")
    CallMessage(_ARG_0_, "guard_off")
    if _UPVALUE0_ < 1 then
      DamageKnockBack(_ARG_0_)
      _UPVALUE0_ = _UPVALUE0_ + 1
    end
    CallMessage(_ARG_0_, "guard_on")
    CallInterruptState(_ARG_0_, "SubWarpAttack")
  end,
  OnDeathBallCancel = function(_ARG_0_)
    CallResetCamera(_ARG_0_, "main")
    CallMessage(_ARG_0_, "guard_off")
    if _UPVALUE0_ < 3 then
      FirstMefiress_Tired(_ARG_0_, 5)
      _UPVALUE0_ = _UPVALUE0_ + 1
    else
      CallMessage(_ARG_0_, "guard_on")
      CallInterruptState(_ARG_0_, "SubWarpAttack")
    end
  end,
  OnDead = function(_ARG_0_)
    CallMessage(_ARG_0_, "dead")
    WaitFixed(_ARG_0_, 9999)
  end
}
