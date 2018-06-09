function Build(_ARG_0_)
  SCREEN_W = GetSurfaceWidth(_ARG_0_, "backbuffer")
  SCREEN_H = GetSurfaceHeight(_ARG_0_, "backbuffer")
  ApplySceneParams(_ARG_0_)
  SetFrameBufferObject(_ARG_0_, "backbuffer", "depthstencil", "color_depth", 0, 0, 0, 0)
  SetViewport(_ARG_0_, 0, 0, SCREEN_W, SCREEN_H)
  SetCurrentCamera(_ARG_0_, "main")
  AutoSetAspect(_ARG_0_)
  RenderWorld(_ARG_0_, "main")
  RenderDebug3DFont(_ARG_0_)
  RenderCSD(_ARG_0_)
  ResetViewport(_ARG_0_)
  ApplyDevice(_ARG_0_)
  RenderDebug(_ARG_0_)
end