ObjectPhysics = {
  Init = function(_ARG_0_)
  end,
  OnDamage = function(_ARG_0_)
    SetMode(_ARG_0_, Dynamic(), "rustA00")
    SetMode(_ARG_0_, Dynamic(), "rustA02")
    SetMode(_ARG_0_, Dynamic(), "rustA03")
    SetMode(_ARG_0_, Dynamic(), "rustA04")
    SetMode(_ARG_0_, Dynamic(), "rustA05")
  end,
  OnBroken = function(_ARG_0_)
    RemoveWorldByName(_ARG_0_, "scrap")
    SetMode(_ARG_0_, Dynamic())
  end
}
