Enemy.thirdIblis = {
  Appear = function(_ARG_0_)
    CallHintMessage(_ARG_0_, "hint_bos03_e00_sv", true, 1)
    CallHintMessage(_ARG_0_, "hint_bos03_a03_bz", true, 2)
  end,
  Search = function(_ARG_0_)
    SearchPlayer(_ARG_0_, 0)
  end,
  Default = function(_ARG_0_)
    CallResetCamera(_ARG_0_, "near")
    CallResetCamera(_ARG_0_, "near2")
    CallResetCamera(_ARG_0_, "middle")
    CallSetCamera(_ARG_0_, "far", 1, 750, 0, 180, 0, -75, 0, 1)
    hp = GetHP(_ARG_0_)
    if hp <= 0.5 then
      CallResetCamera(_ARG_0_, "far")
      CallPointCamera(_ARG_0_, "core", 5, 1800, 0, 300, 0, -150, 0, 1, -14800, 6000, 430)
      CallHintMessage(_ARG_0_, "hint_bos03_a10_bz", true)
      ThirdIblisFlamecore(_ARG_0_, "flc_flamecore_boss", 3, 3, 15000)
      WaitFixed(_ARG_0_, 5)
      CallResetCamera(_ARG_0_, "core")
      CallSetCamera(_ARG_0_, "far", 1, 750, 0, 180, 0, -75, 0, 1)
      ThirdIblisFoward(_ARG_0_, 10000)
    else
      ThirdIblisReloadRock(_ARG_0_, 10000, 50, "flc_volcanicbomb_boss", 7500, 12500, 2)
      WaitFixed(_ARG_0_, 2.5)
      CallPushState(_ARG_0_, "SubOnCreateObject")
      ThirdIblisThrowRock(_ARG_0_, 50, 2.5, 5, 1500)
      WaitFixed(_ARG_0_, 5)
      CallHintMessage(_ARG_0_, "hint_bos03_a00_bz", true)
      ThirdIblisFoward(_ARG_0_, 5000)
    end
  end,
  Center = function(_ARG_0_)
    CallResetCamera(_ARG_0_, "near")
    CallSetCamera(_ARG_0_, "middle", 2, 1000, 0, 180, 0, -125, 0, 1)
    hp = GetHP(_ARG_0_)
    if hp <= 0.3 then
      ThirdIblisStateFlameWave(_ARG_0_, 1, 1, 8, -1)
      WaitFixed(_ARG_0_, 1)
      ThirdIblisFoward(_ARG_0_, 10000)
    elseif hp <= 0.6 then
      ThirdIblisStateFlameWave(_ARG_0_, 2, 1.25, 6, -1)
      WaitFixed(_ARG_0_, 1)
      ThirdIblisFoward(_ARG_0_, 7500)
    else
      ThirdIblisStateFlameWave(_ARG_0_, 3, 1.5, 4, -1)
      WaitFixed(_ARG_0_, 1)
      CallHintMessage(_ARG_0_, "hint_bos03_a08_bz", true)
      ThirdIblisFoward(_ARG_0_, 5000)
    end
  end,
  Limit = function(_ARG_0_)
    CallSetCamera(_ARG_0_, "near", 3, 1250, 0, 250, 0, -175, 0, 1)
    hp = GetHP(_ARG_0_)
    if hp <= 0.3 then
      CallResetCamera(_ARG_0_, "near")
      CallPointCamera(_ARG_0_, "beat", 4, 1800, 0, 300, 0, -150, 0, 1, -14800, 6000, 430)
      ThirdIblisBeat(_ARG_0_, "ThirdiblisBeat")
      ActionFixed(_ARG_0_, "Sub", 1, 1)
      WaitFixed(_ARG_0_, 2.5)
      CallResetCamera(_ARG_0_, "beat")
      CallSetCamera(_ARG_0_, "near2", 5, 750, 0, 200, 0, -175, 0, 1)
      ThirdIblisThreat(_ARG_0_, 5, 5, "OnFatal")
      WaitFixed(_ARG_0_, 1)
      CallResetCamera(_ARG_0_, "near2")
    elseif hp <= 0.6 then
      CallResetCamera(_ARG_0_, "near")
      CallPointCamera(_ARG_0_, "beat", 4, 1800, 0, 300, 0, -150, 0, 1, -14800, 6000, 430)
      ThirdIblisBeat(_ARG_0_, "ThirdiblisBeat")
      ActionFixed(_ARG_0_, "Sub", 1, 1)
      WaitFixed(_ARG_0_, 2.5)
      CallResetCamera(_ARG_0_, "beat")
      CallSetCamera(_ARG_0_, "near2", 5, 750, 0, 200, 0, -175, 0, 1)
      ThirdIblisThreat(_ARG_0_, 7.5, 5, "OnFatal")
      WaitFixed(_ARG_0_, 1)
      CallResetCamera(_ARG_0_, "near2")
    else
      CallResetCamera(_ARG_0_, "near")
      CallPointCamera(_ARG_0_, "beat", 4, 1800, 0, 300, 0, -150, 0, 1, -14800, 6000, 430)
      CallHintMessage(_ARG_0_, "hint_bos03_a09_bz", true)
      ThirdIblisBeat(_ARG_0_, "ThirdiblisBeat")
      ActionFixed(_ARG_0_, "Sub", 1, 1)
      WaitFixed(_ARG_0_, 2.5)
      CallResetCamera(_ARG_0_, "beat")
      CallSetCamera(_ARG_0_, "near2", 5, 750, 0, 200, 0, -175, 0, 1)
      CallHintMessage(_ARG_0_, "hint_bos03_e02_bz", true)
      ThirdIblisThreat(_ARG_0_, 10, 5, "OnFatal")
      WaitFixed(_ARG_0_, 1)
      CallResetCamera(_ARG_0_, "near2")
    end
  end,
  Action = function(_ARG_0_)
    CallSetCamera(_ARG_0_, "main", 1, 700, 0, 180, 0, -100, 0, 0.5)
    CallChangeAction(_ARG_0_, "Default")
  end,
  SubOnCreateObject = function(_ARG_0_)
    ThirdIblisCreatePhysicsObject(_ARG_0_, "flc_volcanicbomb_boss2", 14500, 7500, -600)
    ThirdIblisCreatePhysicsObject(_ARG_0_, "flc_volcanicbomb_boss2", 14500, 7500, 600)
    ThirdIblisCreatePhysicsObject(_ARG_0_, "flc_volcanicbomb_boss2", 15000, 7500, 1200)
    ThirdIblisCreatePhysicsObject(_ARG_0_, "flc_volcanicbomb_boss2", 14800, 7500, -1200)
    ThirdIblisCreatePhysicsObject(_ARG_0_, "flc_volcanicbomb_boss2", 14000, 7500, 1200)
    ThirdIblisCreatePhysicsObject(_ARG_0_, "flc_volcanicbomb_boss2", 14200, 7500, -1200)
  end,
  OnFind = function(_ARG_0_)
    FindAnimation(_ARG_0_)
  end,
  OnSpecial = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
    ThirdIblisFreezeRock(_ARG_0_, 0)
    CallResetCamera(_ARG_0_, "core")
    ThirdIblisFoward(_ARG_0_, 10000)
  end,
  OnFatal = function(_ARG_0_)
    hp = GetHP(_ARG_0_)
    if hp <= 0.4 then
      CallHintMessage(_ARG_0_, "hint_bos03_e04_sv", true)
    else
      CallHintMessage(_ARG_0_, "hint_bos03_e03_sv", true)
    end
    CallResetCamera(_ARG_0_, "near2")
    CallSetCamera(_ARG_0_, "clush", 4, 500, -100, -100, 0, 0, 1.5, 0.5)
    CallMoveTargetPos(_ARG_0_, 14400, 3010, 0)
    DamageFatal(_ARG_0_)
    CallPushState(_ARG_0_, "SubOnCreateObject")
    CallResetCamera(_ARG_0_, "near")
    CallResetCamera(_ARG_0_, "middle")
    ThirdIblisBack(_ARG_0_, -20000)
  end,
  OnDead = function(_ARG_0_)
    CallCreateDecoy(_ARG_0_, 1)
  end
}
