Enemy.firstIblis = {
  Appear = function(_ARG_0_)
    CallHintMessage(_ARG_0_, "hint_bos01_e00_sv", true, 1)
    CallHintMessage(_ARG_0_, "hint_bos01_a08_bz", true, 2)
    CallHintMessage(_ARG_0_, "hint_bos01_a01_bz", true, 3)
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchPlayer(_ARG_0_, 0)
  end,
  Action = function(_ARG_0_)
    CallSetCamera(_ARG_0_, "main", 4, 700, 0, 200, 0, -100, 0, 0.5)
    if GetHP(_ARG_0_) <= 0.25 then
      if GetRandom(_ARG_0_) < 1 then
        WaitFixed(_ARG_0_, 1)
        ShotFireBreath(_ARG_0_, "1stIblis", "Breath", 0, 10, 2, 35, 5)
        ActionFixed(_ARG_0_, "Main", 1, 1)
        CallSetCamera(_ARG_0_, "bldg", 5, 900, 0, 150, 0, -100, 0, 0.5)
        TurnTargetStepAngle(_ARG_0_, "middle", 0, 10, 0, "m_left", 15, 7.5, 15, "m_right", -15, 7.5, -15, "left", 30, 15, 30, "right", -30, 15, -30)
        BattingBldg(_ARG_0_, "middle", "waste_middle", "right", "waste_right", "left", "waste_left", "m_right", "waste_m_right", "m_left", "waste_m_left")
        ActionFixed(_ARG_0_, "Special", 1, 1)
        CallResetCamera(_ARG_0_, "bldg")
        WaitFixed(_ARG_0_, 2)
        ShotFireBreath(_ARG_0_, "1stIblis", "Breath", 0, 10, 2, 35, 5)
        ActionRotate(_ARG_0_, "Main", 1, 1)
        ShotVolcanicBomb(_ARG_0_, 70, "shot_rm06", 80, "shot_lm06", 90, "shot_rr06", 100, "shot_ll06", 110, "shot_rm06", 120, "shot_lm06", 130, "shot_rr06", 140, "shot_ll06", 150, "shot_rmr06", 160, "shot_lmr06", 170, "shot_rr06", 180, "shot_ll06")
        ActionRotate(_ARG_0_, "Sub", 1, 1)
      else
        WaitFixed(_ARG_0_, 0)
      end
    elseif 0.5 >= GetHP(_ARG_0_) then
      if GetRandom(_ARG_0_) < 1 then
        ShotVolcanicBomb(_ARG_0_, 70, "shot_rm04", 80, "shot_lm04", 90, "shot_rr06", 100, "shot_ll06", 110, "shot_rm04", 120, "shot_lm04", 130, "shot_rr06", 140, "shot_ll06", 150, "shot_rmr04", 160, "shot_lmr04", 170, "shot_rrr06", 180, "shot_llr06")
        ActionRotate(_ARG_0_, "Sub", 1, 1)
        WaitFixed(_ARG_0_, 2)
        CallSetCamera(_ARG_0_, "bldg", 5, 900, 0, 150, 0, -100, 0, 0.5)
        TurnTargetStepAngle(_ARG_0_, "middle", 0, 10, 0, "m_left", 15, 7.5, 15, "m_right", -15, 7.5, -15, "left", 30, 15, 30, "right", -30, 15, -30)
        BattingBldg(_ARG_0_, "middle", "waste_middle", "right", "waste_right", "left", "waste_left", "m_right", "waste_m_right", "m_left", "waste_m_left")
        ActionFixed(_ARG_0_, "Special", 1, 1)
        CallResetCamera(_ARG_0_, "bldg")
      else
        WaitFixed(_ARG_0_, 0)
      end
    elseif GetHP(_ARG_0_) <= 0.75 then
      if GetRandom(_ARG_0_) < 1 then
        CallSetCamera(_ARG_0_, "bldg", 5, 900, 0, 150, 0, -100, 0, 0.5)
        TurnTargetStepAngle(_ARG_0_, "middle", 0, 10, 0, "m_left", 15, 7.5, 15, "m_right", -15, 7.5, -15, "left", 30, 15, 30, "right", -30, 15, -30)
        BattingBldg(_ARG_0_, "middle", "waste_middle", "right", "waste_right", "left", "waste_left", "m_right", "waste_m_right", "m_left", "waste_m_left")
        ActionFixed(_ARG_0_, "Special", 1, 1)
        CallResetCamera(_ARG_0_, "bldg")
        WaitFixed(_ARG_0_, 3)
        ShotVolcanicBomb(_ARG_0_, 70, "shot_rm02", 80, "shot_lm02", 90, "shot_rr04", 100, "shot_ll04", 110, "shot_rm02", 120, "shot_lm02", 130, "shot_rr04", 140, "shot_ll04", 150, "shot_rmr02", 160, "shot_lmr02", 170, "shot_rrr04", 180, "shot_llr04")
        ActionRotate(_ARG_0_, "Sub", 1, 1)
        WaitFixed(_ARG_0_, 1)
        ShotVolcanicBomb(_ARG_0_, 70, "shot_rm02", 80, "shot_lm02", 90, "shot_rr04", 100, "shot_ll04", 110, "shot_rm06", 120, "shot_lm06", 130, "shot_rr02", 140, "shot_ll02", 150, "shot_rmr04", 160, "shot_lmr04", 170, "shot_rrr06", 180, "shot_llr06")
        ActionRotate(_ARG_0_, "Sub", 1, 1)
        WaitFixed(_ARG_0_, 1)
      else
        WaitFixed(_ARG_0_, 0)
      end
    elseif GetRandom(_ARG_0_) < 1 then
      ShotVolcanicBomb(_ARG_0_, 70, "shot_rm02", 80, "shot_lm02", 90, "shot_rr02", 100, "shot_ll02", 110, "shot_rm02", 120, "shot_lm02", 130, "shot_rr02", 140, "shot_ll02", 150, "shot_rmr02", 160, "shot_lmr02", 170, "shot_rrr02", 180, "shot_llr02")
      ActionRotate(_ARG_0_, "Sub", 1, 1)
      CallHintMessage(_ARG_0_, "hint_bos01_a00_bz", true, 1)
      WaitFixed(_ARG_0_, 1)
      CallSetCamera(_ARG_0_, "bldg", 5, 900, 0, 150, 0, -100, 0, 0.5)
      TurnTargetStepAngle(_ARG_0_, "middle", 0, 10, 0, "m_left", 15, 7.5, 15, "m_right", -15, 7.5, -15, "left", 30, 15, 30, "right", -30, 15, -30)
      BattingBldg(_ARG_0_, "middle", "waste_middle", "right", "waste_right", "left", "waste_left", "m_right", "waste_m_right", "m_left", "waste_m_left")
      ActionFixed(_ARG_0_, "Special", 1, 1)
      CallResetCamera(_ARG_0_, "bldg")
      WaitFixed(_ARG_0_, 3)
      CallSetCamera(_ARG_0_, "bldg", 5, 900, 0, 150, 0, -100, 0, 0.5)
      TurnTargetStepAngle(_ARG_0_, "middle", 0, 10, 0, "m_left", 15, 7.5, 15, "m_right", -15, 7.5, -15, "left", 30, 15, 30, "right", -30, 15, -30)
      BattingBldg(_ARG_0_, "middle", "waste_middle", "right", "waste_right", "left", "waste_left", "m_right", "waste_m_right", "m_left", "waste_m_left")
      ActionFixed(_ARG_0_, "Special", 1, 1)
      CallResetCamera(_ARG_0_, "bldg")
      WaitFixed(_ARG_0_, 3)
    else
      WaitFixed(_ARG_0_, 0)
    end
    WaitFixed(_ARG_0_, 0)
  end,
  OnFind = function(_ARG_0_)
    FindAnimation(_ARG_0_)
  end,
  OnKnockBack = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnDamage = function(_ARG_0_)
  end,
  OnSpecial = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnFatal = function(_ARG_0_)
    if GetHP(_ARG_0_) <= 1 / 4 then
      CallHintMessage(_ARG_0_, "hint_bos01_e01_sv", true)
    elseif GetHP(_ARG_0_) <= 1 / 2 then
    end
    DamageFatal(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    CallCreateDecoy(_ARG_0_, 1)
  end
}
