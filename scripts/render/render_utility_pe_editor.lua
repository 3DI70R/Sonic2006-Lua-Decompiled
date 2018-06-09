function RenderCSM(_ARG_0_, _ARG_1_, _ARG_2_)
  texture_size = 1024
  CreateDepthStencilSurface(_ARG_0_, "depthstencil_1024", texture_size, texture_size, "D24S8")
  if GetPlatform() == "xbox360" then
    csm_rt = "csm:"
    CreateArrayTexture(_ARG_0_, "csm", texture_size, texture_size, 4, "R32F")
    SetFrameBufferObjectOnce(_ARG_0_, "csm:0", "depthstencil_1024", "all", 255, 255, 255, 0)
    SetFrameBufferObjectOnce(_ARG_0_, "csm:1", "depthstencil_1024", "all", 255, 255, 255, 0)
    SetFrameBufferObjectOnce(_ARG_0_, "csm:2", "depthstencil_1024", "all", 255, 255, 255, 0)
    SetFrameBufferObjectOnce(_ARG_0_, "csm:3", "depthstencil_1024", "all", 255, 255, 255, 0)
  else
    csm_rt = "csm:"
    CreateCubeTexture(_ARG_0_, "csm", texture_size, 1, "R32F")
    SetFrameBufferObjectOnce(_ARG_0_, "csm:0", "depthstencil_1024", "all", 255, 255, 255, 0)
    SetFrameBufferObjectOnce(_ARG_0_, "csm:1", "depthstencil_1024", "all", 255, 255, 255, 0)
    SetFrameBufferObjectOnce(_ARG_0_, "csm:2", "depthstencil_1024", "all", 255, 255, 255, 0)
    SetFrameBufferObjectOnce(_ARG_0_, "csm:3", "depthstencil_1024", "all", 255, 255, 255, 0)
    SetFrameBufferObjectOnce(_ARG_0_, "csm:4", "depthstencil_1024", "all", 255, 255, 255, 0)
    SetFrameBufferObjectOnce(_ARG_0_, "csm:5", "depthstencil_1024", "all", 255, 255, 255, 0)
  end
  SetCSMTextures(_ARG_0_, "false")
  SetScissorTest(_ARG_0_, "true")
  SetZMode(_ARG_0_, "lessequalon")
  LockZMode(_ARG_0_, "true")
  SetBlendMode(_ARG_0_, "opaque")
  LockBlendMode(_ARG_0_, "true")
  scissor_min = 2
  scissor_size = texture_size - 4
  for 