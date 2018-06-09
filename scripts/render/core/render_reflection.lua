EnableReflection = true
function CreateReflectionTexture(_ARG_0_)
  texture_width = GetSurfaceWidth(_ARG_0_, "backbuffer") / 4
  texture_height = GetSurfaceHeight(_ARG_0_, "backbuffer") / 4
  CreateTexture(_ARG_0_, "reflection0", texture_width, texture_height, 1, "A8R8G8B8")
  SetFrameBufferObjectOnce(_ARG_0_, "reflection0", "depthstencil_1_4", "all", 0, 0, 0, 0)
end
function RenderReflection(_ARG_0_)
  CreateReflectionTexture(_ARG_0_)
  if EnableReflection then
    BeginBlock(_ARG_0_, "reflection0", "stop")
    SetReflectionTextures(_ARG_0_, "false")
    if GetPlatform() == "xbox360" then
      SetFrameBufferObject(_ARG_0_, "reflection0", "depthstencil_1_4", "all", 0, 0, 0, 0)
    else
      SetFrameBufferObject(_ARG_0_, "reflection0", "depthstencil_1_4", "depth", 0, 0, 0, 0)
    end
    ResetViewport(_ARG_0_)
    SetCurrentCamera(_ARG_0_, "reflection0")
    AutoSetAspect(_ARG_0_)
    SetZMode(_ARG_0_, "lessequalon")
    LockZMode(_ARG_0_, "true")
    SetBlendMode(_ARG_0_, "opaque")
    LockBlendMode(_ARG_0_, "true")
    RenderWorld(_ARG_0_, "main", "all", "opaque", "reflection")
    RenderWorld(_ARG_0_, "main", "all", "punchthrough", "reflection")
    LockBlendMode(_ARG_0_, "false")
    SetCurrentCamera(_ARG_0_, "reflectionsky")
    RenderWorld(_ARG_0_, "sky")
    SetCurrentCamera(_ARG_0_, "reflection0")
    LockZMode(_ARG_0_, "false")
    RenderWorld(_ARG_0_, "main", "all", "transparent", "reflection")
    EndBlock(_ARG_0_)
  end
  SetReflectionTextures(_ARG_0_, "true")
end
