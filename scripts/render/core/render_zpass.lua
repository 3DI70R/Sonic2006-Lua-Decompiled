ZpassFlag = false
function OutputLinearZ(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  ZpassFlag = true
  CreateTexture(_ARG_0_, _ARG_1_, GetSurfaceWidth(_ARG_0_, _ARG_2_), GetSurfaceHeight(_ARG_0_, _ARG_2_), 1, "A8R8G8B8")
  SetDepthTextures(_ARG_0_, "false")
  if GetPlatform() == "xbox360" then
    SetFrameBufferObject(_ARG_0_, _ARG_1_, _ARG_2_, "all", 255, 255, 255, 0)
  elseif StencilClearFlag then
    SetFrameBufferObject(_ARG_0_, _ARG_1_, _ARG_2_, "all", 255, 255, 255, 0)
  else
    SetFrameBufferObject(_ARG_0_, _ARG_1_, _ARG_2_, "color_depth", 255, 255, 255, 0)
  end
  BeginBlock(_ARG_0_, "zpass", "run")
  SetZMode(_ARG_0_, "lessequalon")
  LockZMode(_ARG_0_, "true")
  SetBlendMode(_ARG_0_, "opaque")
  LockBlendMode(_ARG_0_, "true")
  SetConstantShader(_ARG_0_, _ARG_3_, "lzout", "DefaultTechnique")
  RenderWorld(_ARG_0_, _ARG_3_, WorldContent0, "opaque", "depth")
  RenderWorld(_ARG_0_, _ARG_3_, WorldContent1, "opaque", "depth")
  SetConstantShader(_ARG_0_, _ARG_3_, "lzout_pt", "DefaultTechnique")
  RenderWorld(_ARG_0_, _ARG_3_, WorldContent0, "punchthrough", "depth")
  RenderWorld(_ARG_0_, _ARG_3_, WorldContent1, "punchthrough", "depth")
  SetConstantShader(_ARG_0_, _ARG_3_, "null")
  LockBlendMode(_ARG_0_, "false")
  LockZMode(_ARG_0_, "false")
  EndBlock(_ARG_0_)
  SetDepthTextures(_ARG_0_, "true")
end
function OutputOnlyZ(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  ZpassFlag = true
  SetDepthTextures(_ARG_0_, "false")
  if GetPlatform() == "xbox360" then
    SetFrameBufferObject(_ARG_0_, "null", _ARG_2_, "all", 255, 255, 255, 0)
  else
    CreateTexture(_ARG_0_, _ARG_1_, GetSurfaceWidth(_ARG_0_, _ARG_2_), GetSurfaceHeight(_ARG_0_, _ARG_2_), 1, "A8R8G8B8")
    if StencilClearFlag then
      SetFrameBufferObject(_ARG_0_, _ARG_1_, _ARG_2_, "all", 255, 255, 255, 0)
    else
      SetFrameBufferObject(_ARG_0_, _ARG_1_, _ARG_2_, "color_depth", 255, 255, 255, 0)
    end
  end
  BeginBlock(_ARG_0_, "zpass", "run")
  SetZMode(_ARG_0_, "lessequalon")
  LockZMode(_ARG_0_, "true")
  SetBlendMode(_ARG_0_, "opaque")
  LockBlendMode(_ARG_0_, "true")
  SetColorWriteEnable(_ARG_0_, 0, 0, 0, 0, 0)
  SetConstantShader(_ARG_0_, _ARG_3_, "lzout", "DefaultTechnique")
  RenderWorld(_ARG_0_, _ARG_3_, WorldContent0, "opaque", "depth")
  RenderWorld(_ARG_0_, _ARG_3_, WorldContent1, "opaque", "depth")
  SetConstantShader(_ARG_0_, _ARG_3_, "lzout_pt", "DefaultTechnique")
  RenderWorld(_ARG_0_, _ARG_3_, WorldContent0, "punchthrough", "depth")
  RenderWorld(_ARG_0_, _ARG_3_, WorldContent1, "punchthrough", "depth")
  SetColorWriteEnable(_ARG_0_, 0, 1, 1, 1, 1)
  SetConstantShader(_ARG_0_, _ARG_3_, "null")
  LockBlendMode(_ARG_0_, "false")
  LockZMode(_ARG_0_, "false")
  EndBlock(_ARG_0_)
  SetDepthTextures(_ARG_0_, "true")
end
function OutputZNone(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  ZpassFlag = false
end
