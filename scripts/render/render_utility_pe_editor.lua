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

  -- For loop reconstructed
  for i = 0, _ARG_1_ - 1 do
    SetFrameBufferObject(_ARG_0_, csm_rt .. i, "depthstencil_1024", "all", 255, 255, 255, 0)
    if GetPlatform() == "xbox360" then
      if i == _ARG_1_ - 1 then
        SetScissorRect(_ARG_0_, scissor_min, scissor_min, scissor_size, scissor_size)
      else
        SetScissorRect(_ARG_0_, 0, 0, texture_size, texture_size)
      end
    else
      SetScissorRect(_ARG_0_, scissor_min, scissor_min, scissor_size, scissor_size)
    end
    ResetViewport(_ARG_0_)
    SetCurrentCamera(_ARG_0_, "light" .. i)
    if _ARG_2_ > i then
      SetConstantShader(_ARG_0_, "shadowmap", "zout", "DefaultTechnique")
      RenderWorld(_ARG_0_, "shadowmap", "all", "opaque", "shadow")
      SetConstantShader(_ARG_0_, "shadowmap", "zout_pt", "DefaultTechnique")
      RenderWorld(_ARG_0_, "shadowmap", "all", "punchthrough", "shadow")
    else
      SetConstantShader(_ARG_0_, "shadowmap", "zout", "DefaultTechnique")
      RenderWorld(_ARG_0_, "shadowmap", "sectors", "opaque", "shadow")
      SetConstantShader(_ARG_0_, "shadowmap", "zout_pt", "DefaultTechnique")
      RenderWorld(_ARG_0_, "shadowmap", "sectors", "punchthrough", "shadow")
    end
  end
  
  SetCSMTextures(_ARG_0_, "true")
  SetConstantShader(_ARG_0_, "shadowmap", "null")
  SetScissorTest(_ARG_0_, "false")
  LockBlendMode(_ARG_0_, "false")
  LockZMode(_ARG_0_, "false")
  if GetPlatform() == "xbox360" then
  end
end
function RenderReflection(_ARG_0_)
  texture_width = GetSurfaceWidth(_ARG_0_, "backbuffer") / 4
  texture_height = GetSurfaceHeight(_ARG_0_, "backbuffer") / 4
  CreateTexture(_ARG_0_, "reflection0", texture_width, texture_height, 1, GetFrameBufferFormat(_ARG_0_))
  SetFrameBufferObjectOnce(_ARG_0_, "reflection0", "depthstencil_1_4", "depthstencil", 0, 0, 0, 0)
  BeginBlock(_ARG_0_, "reflection0", "stop")
  camera = "reflection0"
  SetReflectionTextures(_ARG_0_, "false")
  SetFrameBufferObject(_ARG_0_, "reflection0", "depthstencil_1_4", "depthstencil", 0, 0, 0, 0)
  ResetViewport(_ARG_0_)
  SetCurrentCamera(_ARG_0_, camera)
  AutoSetAspect(_ARG_0_)
  SetZMode(_ARG_0_, "lessequalon")
  LockZMode(_ARG_0_, "true")
  SetBlendMode(_ARG_0_, "opaque")
  LockBlendMode(_ARG_0_, "true")
  RenderWorld(_ARG_0_, "main", "all", "opaque")
  RenderWorld(_ARG_0_, "main", "all", "punchthrough")
  LockBlendMode(_ARG_0_, "false")
  SetCurrentCamera(_ARG_0_, "reflectionsky")
  SetUserClipPlaneEnable(_ARG_0_, "false")
  RenderWorld(_ARG_0_, "sky")
  SetUserClipPlaneEnable(_ARG_0_, "true")
  SetCurrentCamera(_ARG_0_, camera)
  LockZMode(_ARG_0_, "false")
  RenderWorld(_ARG_0_, "main", "all", "transparent")
  SetReflectionTextures(_ARG_0_, "true")
  EndBlock(_ARG_0_)
end
function OutputLinearZ(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  SetDepthTextures(_ARG_0_, "false")
  SetFrameBufferObject(_ARG_0_, _ARG_1_, _ARG_2_, "all", 255, 255, 255, 0)
  SetZMode(_ARG_0_, "lessequalon")
  LockZMode(_ARG_0_, "true")
  SetBlendMode(_ARG_0_, "opaque")
  LockBlendMode(_ARG_0_, "true")
  SetConstantShader(_ARG_0_, _ARG_3_, "lzout", "DefaultTechnique")
  RenderWorld(_ARG_0_, _ARG_3_, "all", "opaque", "depth")
  SetConstantShader(_ARG_0_, _ARG_3_, "lzout_pt", "DefaultTechnique")
  RenderWorld(_ARG_0_, _ARG_3_, "all", "punchthrough", "depth")
  SetConstantShader(_ARG_0_, _ARG_3_, "null")
  LockBlendMode(_ARG_0_, "false")
  LockZMode(_ARG_0_, "false")
  SetDepthTextures(_ARG_0_, "true")
end
function OutputOnlyZ(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  SetDepthTextures(_ARG_0_, "false")
  SetFrameBufferObject(_ARG_0_, _ARG_1_, _ARG_2_, "all", 255, 255, 255, 0)
  SetZMode(_ARG_0_, "lessequalon")
  LockZMode(_ARG_0_, "true")
  SetBlendMode(_ARG_0_, "opaque")
  LockBlendMode(_ARG_0_, "true")
  SetColorWriteEnable(_ARG_0_, 0, 0, 0, 0, 0)
  SetConstantShader(_ARG_0_, _ARG_3_, "lzout", "DefaultTechnique")
  RenderWorld(_ARG_0_, _ARG_3_, "all", "opaque", "depth")
  SetConstantShader(_ARG_0_, _ARG_3_, "lzout_pt", "DefaultTechnique")
  RenderWorld(_ARG_0_, _ARG_3_, "all", "punchthrough", "depth")
  SetColorWriteEnable(_ARG_0_, 0, 1, 1, 1, 1)
  SetConstantShader(_ARG_0_, _ARG_3_, "null")
  LockBlendMode(_ARG_0_, "false")
  LockZMode(_ARG_0_, "false")
  SetDepthTextures(_ARG_0_, "true")
end
function OutputZNone(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
end
Zprepass = OutputOnlyZ
if GetPlatform() == "xbox360" then
  Zprepass = OutputZNone
end
if GetPlatform() == "ps3" then
  Zprepass = OutputLinearZ
end
function RenderMain(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if _ARG_3_ == nil then
    _ARG_3_ = "main"
  end
  if GetPlatform() == "xbox360" then
    SetFrameBufferObject(_ARG_0_, _ARG_1_, _ARG_2_, "all", 0, 0, 0, 0)
    SetZMode(_ARG_0_, "lessequalon")
  else
    SetFrameBufferObject(_ARG_0_, _ARG_1_, _ARG_2_, "none", 0, 0, 0, 0)
    SetZMode(_ARG_0_, "lessequaloff")
  end
  LockZMode(_ARG_0_, "true")
  SetBlendMode(_ARG_0_, "opaque")
  LockBlendMode(_ARG_0_, "true")
  RenderWorld(_ARG_0_, "main", "all", "opaque")
  RenderWorld(_ARG_0_, "main", "all", "punchthrough")
  LockBlendMode(_ARG_0_, "false")
  SetCurrentCamera(_ARG_0_, "mainsky")
  RenderWorld(_ARG_0_, "sky")
  SetCurrentCamera(_ARG_0_, "mainpsi")
  SetConstantShader(_ARG_0_, "psi", "psi_effect", "DefaultTechnique")
  SetBlendMode(_ARG_0_, "add")
  LockBlendMode(_ARG_0_, "true")
  SetCurrentCamera(_ARG_0_, "mainpsi")
  RenderWorld(_ARG_0_, "psi")
  SetConstantShader(_ARG_0_, "psi", "null")
  LockBlendMode(_ARG_0_, "false")
  LockZMode(_ARG_0_, "false")
  SetCurrentCamera(_ARG_0_, "mainxp")
  RenderWorld(_ARG_0_, "transparent")
  SetCurrentCamera(_ARG_0_, _ARG_3_)
  RenderWorld(_ARG_0_, "main", "all", "transparent")
  if GetRegistry(_ARG_0_, "NotUseParticle") == false then
    RenderSpanverse(_ARG_0_)
    RenderNeParticle(_ARG_0_)
    RenderGE1Particle(_ARG_0_, 1)
    RenderGE1Particle(_ARG_0_, 2)
    RenderGE1Particle(_ARG_0_, 3)
    Capture(_ARG_0_, _ARG_1_)
    RenderNeParticlePost(_ARG_0_)
    RenderGE1Particle(_ARG_0_, 4)
  end
end
function RenderCustom(_ARG_0_, _ARG_1_, _ARG_2_)
  ResetViewport(_ARG_0_)
  SetCurrentCamera(_ARG_0_, _ARG_1_)
  SetZMode(_ARG_0_, "lessequalon")
  LockZMode(_ARG_0_, "true")
  SetBlendMode(_ARG_0_, "opaque")
  LockBlendMode(_ARG_0_, "true")
  RenderWorld(_ARG_0_, _ARG_2_, "all", "opaque")
  RenderWorld(_ARG_0_, _ARG_2_, "all", "punchthrough")
  LockZMode(_ARG_0_, "false")
  LockBlendMode(_ARG_0_, "false")
  RenderWorld(_ARG_0_, _ARG_2_, "all", "transparent")
end
function Render2D(_ARG_0_)
  RenderDebug3DFont(_ARG_0_)
  RenderCSD(_ARG_0_)
  ResetViewport(_ARG_0_)
  ApplyDevice(_ARG_0_)
  RenderDebug(_ARG_0_)
end
function ViewTexture(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  W = GetSurfaceWidth(_ARG_0_, "backbuffer")
  H = GetSurfaceHeight(_ARG_0_, "backbuffer")
  x = W * 3 / 4 - 20
  y = 0
  dy = H / 4 + 20
  if GetPlatform() == "ps3" then
    y = H * 3 / 4 - 20
  else
    y = 20
  end
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
