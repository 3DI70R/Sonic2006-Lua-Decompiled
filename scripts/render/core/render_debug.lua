function ViewTexture(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  W = GetSurfaceWidth(_ARG_0_, "backbuffer")
  H = GetSurfaceHeight(_ARG_0_, "backbuffer")
  x = W * 3 / 4 - 20
  y = 0
  dy = H / 4 + 20
  y = 20
  if _ARG_1_ then
    SetViewport(_ARG_0_, x, y, W / 4, H / 4)
    CopyTexture(_ARG_0_, _ARG_1_)
    y = y + dy
  end
  if _ARG_2_ then
    SetViewport(_ARG_0_, x, y, W / 4, H / 4)
    CopyTexture(_ARG_0_, _ARG_2_)
    y = y + dy
  end
  if _ARG_3_ then
    SetViewport(_ARG_0_, x, y, W / 4, H / 4)
    CopyTexture(_ARG_0_, _ARG_3_)
    y = y + dy
  end
  ResetViewport(_ARG_0_)
end
