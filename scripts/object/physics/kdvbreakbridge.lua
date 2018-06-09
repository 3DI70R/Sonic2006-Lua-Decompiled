ObjectPhysics = {
  Init = function(_ARG_0_)
    CreateLockOnSphere(_ARG_0_, "look", 100)
    SetMode(_ARG_0_, Animation())
  end,
  OnBroken = function(_ARG_0_)
    DeleteLockOnSphere(_ARG_0_)
    BeginAnimation(_ARG_0_)
  end
}
