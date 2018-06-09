ObjectPhysics = {
  Init = function(_ARG_0_)
    SetMode(_ARG_0_, Animation())
    CreateLockOnSphere(_ARG_0_, "partsD", 50)
  end,
  OnBroken = function(_ARG_0_)
    DeleteLockOnSphere(_ARG_0_)
    BeginAnimation(_ARG_0_)
  end
}
