Enemy.eWyvern = {
  Appear = function(_ARG_0_)
    CallHintMessage(_ARG_0_, "hint_bos08_e00_sn", true, 1)
    CallHintMessage(_ARG_0_, "hint_bos08_a06_pr", true, 2)
    CallHintMessage(_ARG_0_, "hint_bos08_a00_sn", true, 3)
    CallCreatePhysicsAttachment(_ARG_0_, "wHead", "EWyvernHead")
    CallSetCollision(_ARG_0_, "SetCollisionGrip", 60, 250)
    AppearDescent(_ARG_0_, 1, 1500, 120)
  end,
  Search = function(_ARG_0_)
    MoveHeight(_ARG_0_, 600, false)
    TurnTarget(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    hitpoint = GetHP(_ARG_0_)
    if hitpoint < 2 / 7 then
      CallHintMessage(_ARG_0_, "hint_bos08_a07_pr", true)
      ActionWingLaser(_ARG_0_, "Main", 18000, 100, 100, 15000, -1, 6)
    elseif hitpoint > 6 / 7 then
      ActionWingLaser(_ARG_0_, "Main", 18000, 100, 100, 15000, -1, 6)
    else
      CallHintMessage(_ARG_0_, "hint_bos08_e09_eg", false)
      ShotNormal(_ARG_0_, "eWyvernLaser")
      ActionWingLaser(_ARG_0_, "Main", 15000, 2, 2, 15000, -1, 3)
    end
    hitpoint = GetHP(_ARG_0_)
    if hitpoint < 2 / 7 then
      CallSetCamera(_ARG_0_, "main", 1, 900, 0, 200, 0, -100, 0, 0.5)
      MovePoint(_ARG_0_, "WingAttackPosition")
      TurnTarget(_ARG_0_)
      WaitRotate(_ARG_0_, 4.5)
      CallHintMessage(_ARG_0_, "hint_bos08_e04_eg", false)
      WingAttack(_ARG_0_, 600, 12000, 5000, 16000)
      MovePoint(_ARG_0_, "WingAttackPosition")
      TurnTarget(_ARG_0_)
      WaitRotate(_ARG_0_, 3)
      WingAttack(_ARG_0_, 600, 14000, 5000, 16000)
      MovePoint(_ARG_0_, "WingAttackPosition")
      WaitRotate(_ARG_0_, 3)
      WingAttack(_ARG_0_, 600, 16000, 5000, 16000)
      CallResetCamera(_ARG_0_, "main")
      return
    elseif hitpoint < 5 / 7 then
      TurnTarget(_ARG_0_)
      MovePoint(_ARG_0_, "FloatLaserPositon")
      CallSetCamera(_ARG_0_, "main", 1, 900, 0, 200, 0, -100, 0, 0.5)
      CallHintMessage(_ARG_0_, "hint_bos08_e03_eg", false)
      ShotLaserHM(_ARG_0_, "eWyvernBeamL", "Blue", 600, 0.1)
      ActionLockOn(_ARG_0_, "Sub", 1, 1, 2, 1500, true)
      CallResetCamera(_ARG_0_, "main")
    else
      TurnTarget(_ARG_0_)
      MovePoint(_ARG_0_, "FloatLaserPositon")
      CallSetCamera(_ARG_0_, "main", 1, 900, 0, 200, 0, -100, 0, 0.5)
      floor_num = GetNearFloorNum(_ARG_0_, "break01", "break02", "break05")
      if floor_num == 0 then
        hitpoint = GetHP(_ARG_0_)
        if hitpoint > 6 / 7 then
        else
          CallHintMessage(_ARG_0_, "hint_bos08_e02_eg", false)
        end
        ShotLaserHM(_ARG_0_, "eWyvernBeamS", "Blue", 600, 0.1)
        ActionTargetGroupMulti(_ARG_0_, "Sub", "break05", 1, 1, 6, 3, 500)
      end
      if floor_num == 1 then
        hitpoint = GetHP(_ARG_0_)
        if hitpoint > 6 / 7 then
        else
          CallHintMessage(_ARG_0_, "hint_bos08_e02_eg", false)
        end
        ShotLaserHM(_ARG_0_, "eWyvernBeamS", "Blue", 600, 0.1)
        ActionTargetGroupMulti(_ARG_0_, "Sub", "break05", 1, 1, 6, 3, 500)
      end
      if floor_num == 2 then
        hitpoint = GetHP(_ARG_0_)
        if hitpoint > 6 / 7 then
        else
          CallHintMessage(_ARG_0_, "hint_bos08_e02_eg", false)
        end
        ShotLaserHM(_ARG_0_, "eWyvernBeamS", "Blue", 600, 0.1)
        ActionTargetGroupMulti(_ARG_0_, "Sub", "break05", 1, 1, 6, 3, 500)
      end
      CallResetCamera(_ARG_0_, "main")
    end
    bCatchHead = CheckCatchPossession(_ARG_0_, "wHead")
    if bCatchHead then
      CallSetCamera(_ARG_0_, "main", 1, 900, 0, 200, 0, -100, 0, 0.5)
      MovePoint(_ARG_0_, "WingAttackPosition")
      TurnTarget(_ARG_0_)
      WaitRotate(_ARG_0_, 3)
      CallHintMessage(_ARG_0_, "hint_bos08_e04_eg", false)
      WingAttack(_ARG_0_, 600, 10000, 5000, 16000)
      TurnTarget(_ARG_0_)
      CallHintMessage(_ARG_0_, "hint_bos08_e07_eg", false)
      CallHintMessage(_ARG_0_, "hint_bos08_a05_sn", true)
      WaitFixed(_ARG_0_, 0.5)
      MovePoint(_ARG_0_, "WingAttackPosition")
      TurnTarget(_ARG_0_)
      WaitRotate(_ARG_0_, 3)
      WingAttack(_ARG_0_, 600, 10000, 5000, 16000)
      TurnTarget(_ARG_0_)
      WaitFixed(_ARG_0_, 0.5)
      CallResetCamera(_ARG_0_, "main")
    else
      CallSetCamera(_ARG_0_, "main", 1, 900, 0, 200, 0, -100, 0, 0.5)
      MovePoint(_ARG_0_, "OptionAttackPosition")
      TurnTarget(_ARG_0_)
      CallHintMessage(_ARG_0_, "hint_bos08_e08_eg", false)
      PlaySeEnemy(_ARG_0_, "wyvern01", "head_open")
      eWyvernReleaseOption(_ARG_0_)
      CallHintMessage(_ARG_0_, "hint_bos08_e05_eg", false)
      CallHintMessage(_ARG_0_, "hint_bos08_a03_sn", true)
      CallPossessionState(_ARG_0_, "eWyvernOption_Action")
      eWyvernWaitActionOption(_ARG_0_)
      PlaySeEnemy(_ARG_0_, "wyvern01", "head_close")
      eWyvernCatchOption(_ARG_0_)
      WaitFixed(_ARG_0_, 1)
      CallResetCamera(_ARG_0_, "main")
    end
  end,
  OnRodeo = function(_ARG_0_)
    CallHintMessage(_ARG_0_, "hint_bos08_e10_eg", false)
    CallResetCamera(_ARG_0_, "main")
    PlaySeEnemy(_ARG_0_, "wyvern01", "jamming")
    RodeoSky(_ARG_0_, "break04", 20, 12500, 10000, 18000, 1000, 8000, 0.05, 5000, 0.25, 0)
    CallSetCamera(_ARG_0_, "twotarget", 2, 500, -100, -100, 0, 0, 3, 0)
    WaitLevel(_ARG_0_, 3)
    CallResetCamera(_ARG_0_, "twotarget")
  end,
  OnDamage = function(_ARG_0_)
    CallResetCamera(_ARG_0_, "main")
    CallPossessionState(_ARG_0_, "eWyvernOption_End")
    CallSetCamera(_ARG_0_, "twotarget", 2, 500, -100, -100, 0, 0, 2.5, 0.5)
    CallMoveTargetPos(_ARG_0_, 0, 0, 20044)
    if GetHP(_ARG_0_) < 2 / 7 then
      CallHintMessage(_ARG_0_, "hint_bos08_e14_sn", true)
    elseif GetHP(_ARG_0_) < 3 / 7 then
      CallHintMessage(_ARG_0_, "hint_bos08_e11_eg", false)
    else
      CallHintMessage(_ARG_0_, "hint_bos08_e10_eg", false)
    end
    DamageKnockBack(_ARG_0_)
    WaitLevel(_ARG_0_, 1)
    bExistBreakThree = CheckGroupMemberExist(_ARG_0_, "break03")
    if bExistBreakThree then
      CallSetCamera(_ARG_0_, "main", 1, 900, 0, 200, 0, -100, 0, 0.5)
      MovePoint(_ARG_0_, "TailNeedlePosition")
      TurnTarget(_ARG_0_)
      CallResetCamera(_ARG_0_, "main")
      if GetHP(_ARG_0_) < 2 / 7 then
      else
        CallHintMessage(_ARG_0_, "hint_bos08_e06_eg", false)
        CallHintMessage(_ARG_0_, "hint_bos08_a04_pr", true)
      end
      ShotTailNeedle(_ARG_0_, "TailNeedle")
      ActionTargetGroupMulti(_ARG_0_, "Special", "break03", 2, 2, 2, 0, 0)
      WaitFixed(_ARG_0_, 1)
    end
  end,
  OnFatal = function(_ARG_0_)
    PlaySeEnemy(_ARG_0_, "wyvern01", "crash")
    CallSetCamera(_ARG_0_, "twotarget", 1, 500, -100, -100, 0, 0, 0, 0)
    bExistBreakOne = CheckGroupMemberExist(_ARG_0_, "break01")
    if bExistBreakOne then
      if GetHP(_ARG_0_) >= 6 / 7 then
        CallHintMessage(_ARG_0_, "hint_bos08_e12_eg", true)
      else
        CallHintMessage(_ARG_0_, "hint_bos08_e10_eg", true)
      end
      DamageFatal(_ARG_0_)
      CallResetCamera(_ARG_0_, "twotarget")
      WaitLevel(_ARG_0_, 1)
      CallSetCamera(_ARG_0_, "main", 1, 900, 0, 200, 0, -100, 0, 0.5)
      MovePoint(_ARG_0_, "TailNeedleBreak01")
      TurnTarget(_ARG_0_)
      CallResetCamera(_ARG_0_, "main")
      CallHintMessage(_ARG_0_, "hint_bos08_e06_eg", false)
      CallHintMessage(_ARG_0_, "hint_bos08_a04_pr", true)
      ShotTailNeedle(_ARG_0_, "TailNeedle")
      ActionTargetGroupMulti(_ARG_0_, "Special", "break01", 3, 3, 3, 0, 0)
    else
      bExistBreakTwo = CheckGroupMemberExist(_ARG_0_, "break02")
      if bExistBreakTwo then
        if GetHP(_ARG_0_) >= 6 / 7 then
          CallHintMessage(_ARG_0_, "hint_bos08_e12_eg", true)
        else
          CallHintMessage(_ARG_0_, "hint_bos08_e10_eg", false)
        end
        DamageFatal(_ARG_0_)
        CallResetCamera(_ARG_0_, "twotarget")
        WaitLevel(_ARG_0_, 1)
        CallSetCamera(_ARG_0_, "main", 1, 900, 0, 200, 0, -100, 0, 0.5)
        MovePoint(_ARG_0_, "TailNeedleBreak02")
        TurnTarget(_ARG_0_)
        CallResetCamera(_ARG_0_, "main")
        CallHintMessage(_ARG_0_, "hint_bos08_e06_eg", false)
        CallHintMessage(_ARG_0_, "hint_bos08_a04_pr", true)
        ShotTailNeedle(_ARG_0_, "TailNeedle")
        ActionTargetGroupMulti(_ARG_0_, "Special", "break02", 3, 3, 3, 0, 0)
      else
        CallSetCollision(_ARG_0_, "SetCollisionEggMan")
        PlaySeEnemy(_ARG_0_, "wyvern01", "head_break")
        CallReleasePossession(_ARG_0_, "wHead")
        CallHintMessage(_ARG_0_, "hint_bos08_e17_eg", true)
        DamageFatal(_ARG_0_)
        CallResetCamera(_ARG_0_, "twotarget")
        WaitLevel(_ARG_0_, 1)
        CallSetCamera(_ARG_0_, "main", 1, 900, 0, 200, 0, -100, 0, 0.5)
        MovePoint(_ARG_0_, "TailNeedlePosition")
        TurnTarget(_ARG_0_)
        CallResetCamera(_ARG_0_, "main")
        ShotTailNeedle(_ARG_0_, "TailNeedle")
        ActionTargetGroupMulti(_ARG_0_, "Special", "break03", 2, 2, 2, 0, 0)
      end
    end
  end,
  Return = function(_ARG_0_)
    ReturnWarp(_ARG_0_)
  end,
  OnFind = function(_ARG_0_)
    PossessionFind(_ARG_0_)
    FindAnimation(_ARG_0_)
  end,
  OnCaught = function(_ARG_0_)
    CaughtCommon(_ARG_0_)
  end,
  OnSmash = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunGround(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    WaitAnimation(_ARG_0_, "RodeoClash", 0.5)
    CallReleasePossession(_ARG_0_)
    CallCreateDecoy(_ARG_0_, 1)
  end
}
Enemy.eWyvernOption = {
  eWyvernOption_Action = function(_ARG_0_)
    eWyvernReleaseOption(_ARG_0_)
    eWyvernMoveOption(_ARG_0_, 0, -50, 1100, 1000, 0, 1)
    WaitFixed(_ARG_0_, 0.5)
    PlaySeEnemy(_ARG_0_, "wyvern01", "option_aim")
    WaitFixed(_ARG_0_, 0.5)
    ShotLaser(_ARG_0_, "eWyvernOptionBeam", "Blue")
    ActionFixed(_ARG_0_, "Main", 5, 5)
    WaitFixed(_ARG_0_, 1.5)
    TurnTarget(_ARG_0_)
    PlaySeEnemy(_ARG_0_, "wyvern01", "option_aim")
    WaitFixed(_ARG_0_, 0.5)
    ShotLaser(_ARG_0_, "eWyvernOptionBeam", "Blue")
    ActionFixed(_ARG_0_, "Main", 5, 5)
    WaitFixed(_ARG_0_, 1.5)
    TurnTarget(_ARG_0_)
    PlaySeEnemy(_ARG_0_, "wyvern01", "option_aim")
    WaitFixed(_ARG_0_, 0.5)
    ShotLaser(_ARG_0_, "eWyvernOptionBeam", "Blue")
    ActionFixed(_ARG_0_, "Main", 5, 5)
    WaitFixed(_ARG_0_, 3)
    eWyvernReturnOption(_ARG_0_, 1000)
    eWyvernCatchOption(_ARG_0_)
    WaitFixed(_ARG_0_, 1.5)
    eWyvernWaitActionOption(_ARG_0_)
  end,
  eWyvernOption_End = function(_ARG_0_)
    eWyvernCatchOption(_ARG_0_)
    eWyvernStopOption(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    CallCreateDecoy(_ARG_0_, 1)
  end
}
Enemy.eWyvernEggman = {
  Action = function(_ARG_0_)
    WaitFixed(_ARG_0_, 100)
  end,
  OnDead = function(_ARG_0_)
    CallCreateDecoy(_ARG_0_, 1)
  end
}
