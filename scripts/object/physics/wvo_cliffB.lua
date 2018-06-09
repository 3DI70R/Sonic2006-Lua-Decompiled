ObjectPhysics = {
  Init = function(_ARG_0_)
    SetMode(_ARG_0_, Fixed(), "parts25")
    SetMode(_ARG_0_, Animation())
  end,
  OnBroken = function(_ARG_0_)
    BeginAnimation(_ARG_0_)
  end,
  EndAnimation = function(_ARG_0_)
    SetMode(_ARG_0_, Dynamic())
  end
}
