WorldContent0 = "sectors"
WorldContent1 = "drawables"
EnableZprepass = false
StencilClearFlag = false
MSAAType = "2x"
function RenderMainForSingle(_ARG_0_, _ARG_1_, _ARG_2_)
  if GetPlatform() == "xbox360" and MSAAType ~= "1x" then
    CreateTexture(_ARG_0_, "framebuffer_hdr", GetSurfaceWidth(_ARG_0_, _ARG_1_), GetSurfaceHeight(_ARG_0_, _ARG_1_), 1, "HDR")
    CreateTexture(_ARG_0_, _ARG_2_ .. "_texture", GetSurfaceWidth(_ARG_0_, _ARG_1_), GetSurfaceHeight(_ARG_0_, _ARG_1_), 1, GetDepthStencilFormat(_ARG_0_))
  end
  SetCurrentCamera(_ARG_0_, "main")
  AutoSetAspect(_ARG_0_)
  if GetPlatform() == "xbox360" then
    if ZpassFlag and MSAAType == "1x" then
    else
    end
    SetAutoZPass(_ARG_0_, EnableZprepass)
    SetFrameBufferObject(_ARG_0_, "framebuffer_hdr", _ARG_2_ .. "_texture", "all", 0, 0, 0, 0, MSAAType)
  else
    if ZpassFlag then
    elseif StencilClearFlag then
    else
    end
    SetFrameBufferObject(_ARG_0_, _ARG_1_, _ARG_2_, "color_depth", 0, 0, 0, 0)
  end
  SetZMode(_ARG_0_, "lessequalon")
  LockZMode(_ARG_0_, "true")
  SetBlendMode(_ARG_0_, "opaque")
  LockBlendMode(_ARG_0_, "true")
  RenderWorld(_ARG_0_, "main", WorldContent0, "opaque")
  RenderWorld(_ARG_0_, "main", WorldContent1, "opaque")
  RenderWorld(_ARG_0_, "main", WorldContent0, "punchthrough")
  RenderWorld(_ARG_0_, "main", WorldContent1, "punchthrough")
  LockZMode(_ARG_0_, "false")
  LockBlendMode(_ARG_0_, "false")
  SetZMode(_ARG_0_, "lessequaloff")
  LockZMode(_ARG_0_, "true")
  SetCurrentCamera(_ARG_0_, "mainsky")
  AutoSetAspect(_ARG_0_)
  RenderWorld(_ARG_0_, "sky")
  SetCurrentCamera(_ARG_0_, "mainpsi")
  AutoSetAspect(_ARG_0_)
  SetBlendMode(_ARG_0_, "add")
  LockBlendMode(_ARG_0_, "true")
  SetConstantShader(_ARG_0_, "psi", "psi_effect", "DefaultTechnique")
  RenderWorld(_ARG_0_, "psi")
  SetConstantShader(_ARG_0_, "psi", "null")
  LockBlendMode(_ARG_0_, "false")
  LockZMode(_ARG_0_, "false")
  SetCurrentCamera(_ARG_0_, "mainxp")
  AutoSetAspect(_ARG_0_)
  RenderWorld(_ARG_0_, "transparent", "sectors")
  SetCurrentCamera(_ARG_0_, "main")
  AutoSetAspect(_ARG_0_)
  RenderWorld(_ARG_0_, "main", "all", "transparent")
  if GetPlatform() == "xbox360" then
    SetAutoZPass(_ARG_0_, false)
    if MSAAType ~= "1x" then
      Resolve(_ARG_0_, "null", _ARG_2_ .. "_texture")
      SetFrameBufferObject(_ARG_0_, "framebuffer_hdr", _ARG_2_ .. "_texture", "none", 0, 0, 0, 0, "1x", "not_resolved")
      if StencilClearFlag then
      end
      SetFrameBufferObject(_ARG_0_, _ARG_1_, _ARG_2_, "stencil", 0, 0, 0, 0)
    elseif EnableZprepass then
      SetFrameBufferObject(_ARG_0_, _ARG_1_, _ARG_2_, "none", 0, 0, 0, 0, "not_restored")
    end
  end
  if GetRegistry(_ARG_0_, "NotUseParticle") == false then
    RenderSpanverse(_ARG_0_)
    RenderGE1Particle(_ARG_0_, 1)
    RenderGE1Particle(_ARG_0_, 2)
    RenderGE1Particle(_ARG_0_, 3)
  end
  SetCurrentCamera(_ARG_0_, "mainxp")
  AutoSetAspect(_ARG_0_)
  RenderWorld(_ARG_0_, "transparent", "drawables")
  BeginBlock(_ARG_0_, "capture0", "stop")
  if GetPlatform() == "xbox360" then
    Resolve(_ARG_0_, "framebuffer_tile")
  else
    Capture(_ARG_0_, _ARG_1_, 1)
  end
  BeginBlock(_ARG_0_, "oc", "stop")
  SetCurrentCamera(_ARG_0_, "mainoc")
  AutoSetAspect(_ARG_0_)
  SetZMode(_ARG_0_, "lessequalon")
  SetBlendMode(_ARG_0_, "opaque")
  LockZMode(_ARG_0_, "true")
  LockBlendMode(_ARG_0_, "true")
  SetTexture(_ARG_0_, 0, "enemy/common/en_ocnoise.dds", "wrap", "wrap", "linear")
  SetConstantShader(_ARG_0_, "oc", "OpticalCamouflage", "OpticalCamouflage")
  RenderWorld(_ARG_0_, "oc", "all", "all", "depth")
  SetConstantShader(_ARG_0_, "oc", "null")
  LockZMode(_ARG_0_, "false")
  LockBlendMode(_ARG_0_, "false")
  EndBlock(_ARG_0_)
  if GetRegistry(_ARG_0_, "NotUseParticle") == false then
    RenderGE1Particle(_ARG_0_, 4)
  end
  EndBlock(_ARG_0_)
end
function RenderMainForMulti(_ARG_0_, _ARG_1_, _ARG_2_)
  SetCurrentCamera(_ARG_0_, "main")
  AutoSetAspect(_ARG_0_)
  if GetPlatform() == "xbox360" then
    SetFrameBufferObject(_ARG_0_, _ARG_1_, _ARG_2_, "all", 0, 0, 0, 0)
    SetZMode(_ARG_0_, "lessequalon")
  elseif GetPlatform() == "ps3" then
    SetFrameBufferObject(_ARG_0_, _ARG_1_, _ARG_2_, "color_depth", 0, 0, 0, 0)
    SetZMode(_ARG_0_, "lessequalon")
  else
    SetFrameBufferObject(_ARG_0_, _ARG_1_, _ARG_2_, "all", 0, 0, 0, 0)
    SetZMode(_ARG_0_, "lessequalon")
  end
  LockZMode(_ARG_0_, "true")
  SetBlendMode(_ARG_0_, "opaque")
  LockBlendMode(_ARG_0_, "true")
  RenderWorld(_ARG_0_, "main", "all", "opaque")
  RenderWorld(_ARG_0_, "main", "all", "punchthrough")
  LockZMode(_ARG_0_, "false")
  LockBlendMode(_ARG_0_, "false")
  SetZMode(_ARG_0_, "lessequaloff")
  LockZMode(_ARG_0_, "true")
  SetCurrentCamera(_ARG_0_, "mainsky")
  AutoSetAspect(_ARG_0_)
  RenderWorld(_ARG_0_, "sky")
  SetCurrentCamera(_ARG_0_, "mainpsi")
  AutoSetAspect(_ARG_0_)
  SetBlendMode(_ARG_0_, "add")
  LockBlendMode(_ARG_0_, "true")
  SetConstantShader(_ARG_0_, "psi", "psi_effect", "DefaultTechnique")
  RenderWorld(_ARG_0_, "psi")
  SetConstantShader(_ARG_0_, "psi", "null")
  LockBlendMode(_ARG_0_, "false")
  LockZMode(_ARG_0_, "false")
  SetCurrentCamera(_ARG_0_, "mainxp")
  AutoSetAspect(_ARG_0_)
  RenderWorld(_ARG_0_, "transparent")
  SetCurrentCamera(_ARG_0_, "main")
  AutoSetAspect(_ARG_0_)
  RenderWorld(_ARG_0_, "main", "all", "transparent")
  if GetRegistry(_ARG_0_, "NotUseParticle") == false then
    RenderSpanverse(_ARG_0_)
    RenderGE1Particle(_ARG_0_, 1)
    RenderGE1Particle(_ARG_0_, 2)
    RenderGE1Particle(_ARG_0_, 3)
  end
end
