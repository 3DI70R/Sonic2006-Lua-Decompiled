Enemy.solaris02 = {
  Appear = function(_ARG_0_)
    AppearFixed(_ARG_0_)
    CallHintMessage(_ARG_0_, "hint_bos11_a24_tl", true, 1)
    CallHintMessage(_ARG_0_, "hint_bos11_a22_om", true, 2)
  end,
  Search = function(_ARG_0_)
    SearchPlayer(_ARG_0_, 0)
  end,
  Action = function(_ARG_0_)
    CallSetCamera(_ARG_0_, "main", 1, 700, 0, 150, 0, -100, 0, 0.5)
    CallMessage(_ARG_0_, "guard_on")
    CallMessage(_ARG_0_, "guard_off")
    if GetHP(_ARG_0_) <= 0.2 then
      if GetTargetPlayerName(_ARG_0_) == "sonic" then
        CallHintMessage(_ARG_0_, "hint_bos11_e04_pr", true)
      elseif GetTargetPlayerName(_ARG_0_) == "shadow" then
        CallHintMessage(_ARG_0_, "hint_bos11_e05_eg", true)
      elseif GetTargetPlayerName(_ARG_0_) == "silver" then
        CallHintMessage(_ARG_0_, "hint_bos11_e03_am", true)
      end
      WaitRotate(_ARG_0_, 2.5)
      CallMessage(_ARG_0_, "L_Muzzle01")
      ShotNormal(_ARG_0_, "SolarisShot")
      ActionRotate(_ARG_0_, "Main", 1, 1)
      WaitRotate(_ARG_0_, 2.5)
      CallMessage(_ARG_0_, "guard_off")
      CallMessage(_ARG_0_, "All")
      ShotLaser(_ARG_0_, "LaserSolaris2", "Blue")
      ActionRotate(_ARG_0_, "Main", 5, 5)
      CallMessage(_ARG_0_, "guard_on")
      WaitRotate(_ARG_0_, 2.5)
      CallMessage(_ARG_0_, "guard_off")
      CallMessage(_ARG_0_, "All")
      ShotLaser(_ARG_0_, "LaserSolaris2", "Blue")
      ActionRotate(_ARG_0_, "Main", 5, 5)
      CallMessage(_ARG_0_, "guard_on")
      WaitRotate(_ARG_0_, 2.5)
    elseif GetHP(_ARG_0_) <= 0.4 then
      if GetTargetPlayerName(_ARG_0_) == "sonic" then
        CallHintMessage(_ARG_0_, "hint_bos11_e10_sn", true)
      elseif GetTargetPlayerName(_ARG_0_) == "shadow" then
        CallHintMessage(_ARG_0_, "hint_bos11_e10_sd", true)
      elseif GetTargetPlayerName(_ARG_0_) == "silver" then
        CallHintMessage(_ARG_0_, "hint_bos11_e10_sv", true)
      end
      WaitRotate(_ARG_0_, 2.5)
      CallMessage(_ARG_0_, "L_Muzzle01")
      ShotNormal(_ARG_0_, "SolarisShot")
      ActionRotate(_ARG_0_, "Main", 1, 1)
      WaitRotate(_ARG_0_, 2.5)
      CallMessage(_ARG_0_, "guard_off")
      WaitFixed(_ARG_0_, 1.5)
      CallMessage(_ARG_0_, "L_Muzzle01")
      ShotLaser(_ARG_0_, "LaserSolaris2", "Blue")
      ActionRotate(_ARG_0_, "Main", 3, 3)
      WaitFixed(_ARG_0_, 1.5)
      CallMessage(_ARG_0_, "guard_on")
      WaitRotate(_ARG_0_, 5)
      CallMessage(_ARG_0_, "guard_off")
      CallMessage(_ARG_0_, "All")
      ShotLaser(_ARG_0_, "LaserSolaris2", "Blue")
      ActionRotate(_ARG_0_, "Main", 5, 5)
      CallMessage(_ARG_0_, "guard_on")
      WaitRotate(_ARG_0_, 5)
    elseif GetHP(_ARG_0_) <= 0.6 then
      if GetTargetPlayerName(_ARG_0_) == "sonic" then
        CallHintMessage(_ARG_0_, "hint_bos11_e02_am", true)
      elseif GetTargetPlayerName(_ARG_0_) == "shadow" then
        CallHintMessage(_ARG_0_, "hint_bos11_e01_rg", true)
      elseif GetTargetPlayerName(_ARG_0_) == "silver" then
        CallHintMessage(_ARG_0_, "hint_bos11_e00_kn", true)
      end
      WaitRotate(_ARG_0_, 2.5)
      CallMessage(_ARG_0_, "guard_off")
      WaitFixed(_ARG_0_, 1)
      CallPushState(_ARG_0_, "SubOnRandomLaserSolaris")
      WaitFixed(_ARG_0_, 1)
      CallMessage(_ARG_0_, "guard_on")
      WaitFixed(_ARG_0_, 1)
      CallMessage(_ARG_0_, "guard_off")
      WaitFixed(_ARG_0_, 1)
      CallPushState(_ARG_0_, "SubOnRandomLaserSolaris")
      WaitFixed(_ARG_0_, 1)
      CallMessage(_ARG_0_, "guard_on")
      WaitFixed(_ARG_0_, 1)
      CallMessage(_ARG_0_, "guard_off")
      WaitFixed(_ARG_0_, 1)
      CallPushState(_ARG_0_, "SubOnRandomLaserSolaris")
      WaitFixed(_ARG_0_, 1)
      CallMessage(_ARG_0_, "guard_on")
      WaitRotate(_ARG_0_, 5)
      CallMessage(_ARG_0_, "guard_off")
      CallMessage(_ARG_0_, "All")
      ShotLaser(_ARG_0_, "LaserSolaris2", "Blue")
      ActionRotate(_ARG_0_, "Main", 5, 5)
      CallMessage(_ARG_0_, "guard_on")
      WaitRotate(_ARG_0_, 7.5)
    elseif GetHP(_ARG_0_) <= 0.8 then
      if GetTargetPlayerName(_ARG_0_) == "sonic" then
        CallHintMessage(_ARG_0_, "hint_bos11_e11_sn", true)
      elseif GetTargetPlayerName(_ARG_0_) == "shadow" then
        CallHintMessage(_ARG_0_, "hint_bos11_e12_sd", true)
      elseif GetTargetPlayerName(_ARG_0_) == "silver" then
        CallHintMessage(_ARG_0_, "hint_bos11_e11_sv", true)
      end
      WaitRotate(_ARG_0_, 2.5)
      CallMessage(_ARG_0_, "guard_off")
      WaitFixed(_ARG_0_, 1)
      CallPushState(_ARG_0_, "SubOnRandomLaserSolaris")
      WaitFixed(_ARG_0_, 1)
      CallMessage(_ARG_0_, "guard_on")
      WaitFixed(_ARG_0_, 1)
      CallMessage(_ARG_0_, "guard_off")
      WaitFixed(_ARG_0_, 1)
      CallPushState(_ARG_0_, "SubOnRandomLaserSolaris")
      WaitFixed(_ARG_0_, 1)
      CallMessage(_ARG_0_, "guard_on")
      WaitFixed(_ARG_0_, 1)
      CallMessage(_ARG_0_, "guard_off")
      WaitFixed(_ARG_0_, 1)
      CallPushState(_ARG_0_, "SubOnRandomLaserSolaris")
      WaitFixed(_ARG_0_, 1)
      CallMessage(_ARG_0_, "guard_on")
      WaitRotate(_ARG_0_, 2.5)
      CallMessage(_ARG_0_, "guard_off")
      WaitFixed(_ARG_0_, 1.5)
      CallMessage(_ARG_0_, "L_Muzzle01")
      ShotLaser(_ARG_0_, "LaserSolaris1", "Blue")
      ActionRotate(_ARG_0_, "Main", 3, 3)
      WaitFixed(_ARG_0_, 1.5)
      CallMessage(_ARG_0_, "guard_on")
      WaitRotate(_ARG_0_, 5)
    else
      if GetTargetPlayerName(_ARG_0_) == "sonic" then
      elseif GetTargetPlayerName(_ARG_0_) == "shadow" then
      elseif GetTargetPlayerName(_ARG_0_) == "silver" then
      end
      WaitRotate(_ARG_0_, 2.5)
      CallMessage(_ARG_0_, "guard_off")
      WaitFixed(_ARG_0_, 1.5)
      CallMessage(_ARG_0_, "L_Muzzle01")
      ShotLaser(_ARG_0_, "LaserSolaris1", "Blue")
      ActionRotate(_ARG_0_, "Main", 3, 3)
      WaitFixed(_ARG_0_, 1.5)
      CallMessage(_ARG_0_, "guard_on")
      WaitRotate(_ARG_0_, 7.5)
    end
  end,
  SubOnRandomLaserSolaris = function(_ARG_0_)
    if GetRandom(_ARG_0_) < 0.1 then
      CallMessage(_ARG_0_, "L_Muzzle01")
      ShotLaser(_ARG_0_, "LaserSolaris2", "Blue")
      ActionRotate(_ARG_0_, "Main", 2, 2)
    elseif GetRandom(_ARG_0_) < 0.2 then
      CallMessage(_ARG_0_, "L_Muzzle02")
      ShotLaser(_ARG_0_, "LaserSolaris2", "Blue")
      ActionRotate(_ARG_0_, "Main", 2, 2)
    elseif GetRandom(_ARG_0_) < 0.3 then
      CallMessage(_ARG_0_, "L_Muzzle03")
      ShotLaser(_ARG_0_, "LaserSolaris2", "Blue")
      ActionRotate(_ARG_0_, "Main", 2, 2)
    elseif GetRandom(_ARG_0_) < 0.4 then
      CallMessage(_ARG_0_, "L_Muzzle04")
      ShotLaser(_ARG_0_, "LaserSolaris2", "Blue")
      ActionRotate(_ARG_0_, "Main", 2, 2)
    elseif GetRandom(_ARG_0_) < 0.5 then
      CallMessage(_ARG_0_, "L_Muzzle05")
      ShotLaser(_ARG_0_, "LaserSolaris2", "Blue")
      ActionRotate(_ARG_0_, "Main", 2, 2)
    elseif GetRandom(_ARG_0_) < 0.6 then
      CallMessage(_ARG_0_, "L_Muzzle06")
      ShotLaser(_ARG_0_, "LaserSolaris2", "Blue")
      ActionRotate(_ARG_0_, "Main", 2, 2)
    elseif GetRandom(_ARG_0_) < 0.7 then
      CallMessage(_ARG_0_, "L_Muzzle07")
      ShotLaser(_ARG_0_, "LaserSolaris2", "Blue")
      ActionRotate(_ARG_0_, "Main", 2, 2)
    elseif GetRandom(_ARG_0_) < 0.8 then
      CallMessage(_ARG_0_, "L_Muzzle08")
      ShotLaser(_ARG_0_, "LaserSolaris2", "Blue")
      ActionRotate(_ARG_0_, "Main", 2, 2)
    elseif GetRandom(_ARG_0_) < 0.9 then
      CallMessage(_ARG_0_, "L_Muzzle09")
      ShotLaser(_ARG_0_, "LaserSolaris2", "Blue")
      ActionRotate(_ARG_0_, "Main", 2, 2)
    else
      CallMessage(_ARG_0_, "L_Muzzle01")
      ShotLaser(_ARG_0_, "LaserSolaris2", "Blue")
      ActionRotate(_ARG_0_, "Main", 2, 2)
    end
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
  SolarisTargetIsDamaged = function(_ARG_0_)
    WaitFixed(_ARG_0_, 1.5)
  end,
  SolarisTargetIsDead = function(_ARG_0_)
    WaitFixed(_ARG_0_, 10)
  end
}
