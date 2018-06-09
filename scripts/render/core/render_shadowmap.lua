CSMTextureSize = 1024
function CreateCSM(_ARG_0_)
  csm_rt = "csm:"
  if GetPlatform() == "xbox360" then
    CreateArrayTexture(_ARG_0_, "csm", CSMTextureSize, CSMTextureSize, 4, "D24S8")
    SetFrameBufferObjectOnce(_ARG_0_, "null", "csm:0", "depthstencil", 0, 0, 0, 0)
    SetFrameBufferObjectOnce(_ARG_0_, "null", "csm:1", "depthstencil", 0, 0, 0, 0)
    SetFrameBufferObjectOnce(_ARG_0_, "null", "csm:2", "depthstencil", 0, 0, 0, 0)
    SetFrameBufferObjectOnce(_ARG_0_, "null", "csm:3", "depthstencil", 0, 0, 0, 0)
  elseif GetPlatform() == "ps3" then
    CreateCubeTexture(_ARG_0_, "csm", CSMTextureSize, 1, "R32F")
    CreateDepthStencilSurface(_ARG_0_, "depthstencil_1024", CSMTextureSize, CSMTextureSize, "D24S8")
    SetFrameBufferObjectOnce(_ARG_0_, "csm:0", "depthstencil_1024", "color", 127, 255, 255, 127)
    SetFrameBufferObjectOnce(_ARG_0_, "csm:1", "depthstencil_1024", "color", 127, 255, 255, 127)
    SetFrameBufferObjectOnce(_ARG_0_, "csm:2", "depthstencil_1024", "color", 127, 255, 255, 127)
    SetFrameBufferObjectOnce(_ARG_0_, "csm:3", "depthstencil_1024", "color", 127, 255, 255, 127)
    SetFrameBufferObjectOnce(_ARG_0_, "csm:4", "depthstencil_1024", "color", 127, 255, 255, 127)
    SetFrameBufferObjectOnce(_ARG_0_, "csm:5", "depthstencil_1024", "color", 127, 255, 255, 127)
  else
    CreateCubeTexture(_ARG_0_, "csm", CSMTextureSize, 1, "R32F")
    CreateDepthStencilSurface(_ARG_0_, "depthstencil_1024", CSMTextureSize, CSMTextureSize, "D24S8")
    SetFrameBufferObjectOnce(_ARG_0_, "csm:0", "depthstencil_1024", "color", 255, 255, 255, 255)
    SetFrameBufferObjectOnce(_ARG_0_, "csm:1", "depthstencil_1024", "color", 255, 255, 255, 255)
    SetFrameBufferObjectOnce(_ARG_0_, "csm:2", "depthstencil_1024", "color", 255, 255, 255, 255)
    SetFrameBufferObjectOnce(_ARG_0_, "csm:3", "depthstencil_1024", "color", 255, 255, 255, 255)
    SetFrameBufferObjectOnce(_ARG_0_, "csm:4", "depthstencil_1024", "color", 255, 255, 255, 255)
    SetFrameBufferObjectOnce(_ARG_0_, "csm:5", "depthstencil_1024", "color", 255, 255, 255, 255)
  end
  SetCSMTextures(_ARG_0_, "true")
end
function RenderCSM(_ARG_0_, _ARG_1_, _ARG_2_)
  SetCSMTextures(_ARG_0_, "false")
  SetZMode(_ARG_0_, "lessequalon")
  LockZMode(_ARG_0_, "true")
  SetBlendMode(_ARG_0_, "opaque")
  LockBlendMode(_ARG_0_, "true")
  scissor_min = 2
  scissor_size = CSMTextureSize - 4
  for _FORARG_ = 0, _ARG_1_ - 1 do
    if GetPlatform() == "ps3" then
      SetFrameBufferObject(_ARG_0_, csm_rt .. 0 - 1, "depthstencil_1024", "color_depth", 127, 255, 255, 127)
    elseif GetPlatform() == "xbox360" then
      SetFrameBufferObject(_ARG_0_, "null", csm_rt .. 0 - 1, "depth", 0, 0, 0, 0, "1x", "not_restored")
    else
      SetFrameBufferObject(_ARG_0_, csm_rt .. 0 - 1, "depthstencil_1024", "color_depth", 255, 255, 255, 255)
    end
    if GetPlatform() == "xbox360" then
      if 0 - 1 == _ARG_1_ - 1 then
        SetScissorTest(_ARG_0_, "true")
        SetScissorRect(_ARG_0_, scissor_min, scissor_min, scissor_size, scissor_size)
      else
        SetScissorTest(_ARG_0_, "false")
        SetScissorRect(_ARG_0_, 0, 0, CSMTextureSize, CSMTextureSize)
      end
    else
      SetScissorRect(_ARG_0_, scissor_min, scissor_min, scissor_size, scissor_size)
      ApplyDevice(_ARG_0_)
      SetScissorTest(_ARG_0_, "true")
    end
    ResetViewport(_ARG_0_)
    SetCurrentCamera(_ARG_0_, "light" .. 0 - 1)
    if _ARG_2_ > 0 - 1 then
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
  SetScissorTest(_ARG_0_, "false")
  SetConstantShader(_ARG_0_, "shadowmap", "null")
  LockBlendMode(_ARG_0_, "false")
  LockZMode(_ARG_0_, "false")
  SetCSMTextures(_ARG_0_, "true")
end
