Enemy.solaris01 = {
  Appear = function(_ARG_0_)
    AppearFixed(_ARG_0_)
    CallHintMessage(_ARG_0_, "hint_bos11_e13_eg", true, 1)
    CallHintMessage(_ARG_0_, "hint_bos11_e04_kn", true, 2)
  end,
  Search = function(_ARG_0_)
    SearchPlayer(_ARG_0_, 0)
  end,
  Action = function(_ARG_0_)
    CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5)
    if GetHP(_ARG_0_) <= 0.25 then
      if GetTargetPlayerName(_ARG_0_) == "sonic" then
        CallHintMessage(_ARG_0_, "hint_bos11_e08_sv", true)
      elseif GetTargetPlayerName(_ARG_0_) == "shadow" then
        CallHintMessage(_ARG_0_, "hint_bos11_e08_sn", true)
      elseif GetTargetPlayerName(_ARG_0_) == "silver" then
        CallHintMessage(_ARG_0_, "hint_bos11_e08_sd", true)
      end
      WaitRotate(_ARG_0_, 2.5)
      CallMessage(_ARG_0_, "L_Muzzle01")
      ShotLaser(_ARG_0_, "LaserSolaris1", "Blue")
      ActionRotate(_ARG_0_, "Main", 3, 3)
      WaitRotate(_ARG_0_, 2.5)
    elseif 0.5 >= GetHP(_ARG_0_) then
      if GetTargetPlayerName(_ARG_0_) == "sonic" then
        CallHintMessage(_ARG_0_, "hint_bos11_e12_sn", true, 1)
        CallHintMessage(_ARG_0_, "hint_bos11_a06_pr", true, 2)
        WaitRotate(_ARG_0_, 5)
        CallMessage(_ARG_0_, "L_Muzzle01")
        ShotLaser(_ARG_0_, "LaserSolaris1", "Blue")
        ActionRotate(_ARG_0_, "Main", 1, 1)
        WaitRotate(_ARG_0_, 5)
      elseif GetTargetPlayerName(_ARG_0_) == "shadow" then
        WaitRotate(_ARG_0_, 2.5)
      elseif GetTargetPlayerName(_ARG_0_) == "silver" then
        WaitRotate(_ARG_0_, 2.5)
      end
    elseif GetHP(_ARG_0_) <= 0.75 then
      if GetTargetPlayerName(_ARG_0_) == "sonic" then
        WaitRotate(_ARG_0_, 2.5)
      elseif GetTargetPlayerName(_ARG_0_) == "shadow" then
        CallHintMessage(_ARG_0_, "hint_bos11_e11_sd", true, 1)
        CallHintMessage(_ARG_0_, "hint_bos11_a07_om", true, 2)
        WaitRotate(_ARG_0_, 5)
        CallMessage(_ARG_0_, "L_Muzzle01")
        ShotLaser(_ARG_0_, "LaserSolaris1", "Blue")
        ActionRotate(_ARG_0_, "Main", 1, 1)
        WaitRotate(_ARG_0_, 5)
      elseif GetTargetPlayerName(_ARG_0_) == "silver" then
        WaitRotate(_ARG_0_, 2.5)
      end
    elseif GetTargetPlayerName(_ARG_0_) == "sonic" then
      WaitRotate(_ARG_0_, 2.5)
    elseif GetTargetPlayerName(_ARG_0_) == "shadow" then
      WaitRotate(_ARG_0_, 2.5)
    elseif GetTargetPlayerName(_ARG_0_) == "silver" then
      CallHintMessage(_ARG_0_, "hint_bos11_e12_sv", true, 1)
      CallHintMessage(_ARG_0_, "hint_bos11_a11_am", true, 2)
      WaitRotate(_ARG_0_, 5)
      CallMessage(_ARG_0_, "L_Muzzle01")
      ShotLaser(_ARG_0_, "LaserSolaris1", "Blue")
      ActionRotate(_ARG_0_, "Main", 1, 1)
      WaitRotate(_ARG_0_, 5)
    end
  end,
  SubOnRandomLaserSolaris = function(_ARG_0_)
    CallMessage(_ARG_0_, "All")
    ShotLaser(_ARG_0_, "LaserSolaris1", "Blue")
    ActionRotate(_ARG_0_, "Main", 1, 1)
  end,
  Return = function(_ARG_0_)
    ReturnWarp(_ARG_0_)
  end,
  OnFind = function(_ARG_0_)
    FindAnimation(_ARG_0_)
  end,
  OnFatal = function(_ARG_0_)
    DamageFatal(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    CallCreateDecoy(_ARG_0_, 1)
  end,
  SolarisTerritoryEnterFar = function(_ARG_0_)
    if GetTargetPlayerName(_ARG_0_) == "sonic" then
      CreateExplosion(_ARG_0_, "SolarisSaintHand01")
      ActionRotate(_ARG_0_, "Extra", 1, 1)
    elseif GetTargetPlayerName(_ARG_0_) == "shadow" then
    elseif GetTargetPlayerName(_ARG_0_) == "silver" then
    end
  end,
  SolarisTerritoryEnterMiddle = function(_ARG_0_)
    if GetTargetPlayerName(_ARG_0_) == "sonic" then
    elseif GetTargetPlayerName(_ARG_0_) == "shadow" then
      GuardRotate(_ARG_0_, 3)
    elseif GetTargetPlayerName(_ARG_0_) == "silver" then
      GuardRotate(_ARG_0_, 3)
    end
  end,
  SolarisTargetIsDamaged = function(_ARG_0_)
    WaitFixed(_ARG_0_, 3)
  end,
  SolarisTargetIsDead = function(_ARG_0_)
    WaitFixed(_ARG_0_, 10)
  end
}
