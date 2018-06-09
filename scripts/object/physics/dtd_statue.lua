ObjectPhysics = {
  Init = function(_ARG_0_)
    BeginAnimation(_ARG_0_)
  end,
  OnBroken = function(_ARG_0_)
  end,
  EndAnimation = function(_ARG_0_)
    SetMode(_ARG_0_, Dynamic())
    SetEsp(_ARG_0_, "esp1")
    SetEsp(_ARG_0_, "esp2")
    SetEsp(_ARG_0_, "esp3")
    SetEsp(_ARG_0_, "esp4")
    SetEsp(_ARG_0_, "esp5")
    SetEsp(_ARG_0_, "esp6")
  end
}
