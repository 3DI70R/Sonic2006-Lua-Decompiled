script.reload("scripts/render/render_utility.lua")
function PrepareColorRender(_ARG_0_)
end
function PostColorRender(_ARG_0_, _ARG_1_, _ARG_2_)
end
GenerateCSMLevels = 3
GenerateCSMObjects = 2
function Build(_ARG_0_)
  SetFrameBufferObject(_ARG_0_, "backbuffer", "null", "color", 0, 0, 0, 0)
  if 2 == 2 then
  else
  end

  -- For loop reconstructed
  for i = 1, 2 do
    CreateTexture(_ARG_0_, "coframebuffer" .. i, GetSurfaceWidth(_ARG_0_, "backbuffer") / 2, GetSurfaceHeight(_ARG_0_, "backbuffer") / 2, 1, GetFrameBufferFormat(_ARG_0_))
  end
  
  CreateDepthStencilSurface(_ARG_0_, "codepthstencil", GetSurfaceWidth(_ARG_0_, "backbuffer") / 2, GetSurfaceHeight(_ARG_0_, "backbuffer") / 2, "D24S8")
  if GetPlatform() == "xbox360" then
    CSMTextureSize = 512
  end
  CreateCSM(_ARG_0_)

  -- For loop reconstructed
  for i = 1, 2 do
    SetCurrentScreen(_ARG_0_, i)
    ApplySceneParams(_ARG_0_)
    RenderCSM(_ARG_0_, GenerateCSMLevels, GenerateCSMObjects)
    PrepareColorRender(_ARG_0_)
    SetFrameBufferObjectOnce(_ARG_0_, "coframebuffer" .. i, "codepthstencil", "all", 0, 0, 0, 0)
    SetViewport(_ARG_0_, 0, 0, GetSurfaceWidth(_ARG_0_, "backbuffer") / 2, GetSurfaceHeight(_ARG_0_, "backbuffer") / 2)
    SetCurrentCamera(_ARG_0_, "main")
    AutoSetAspect(_ARG_0_)
    RenderMainForMulti(_ARG_0_, "coframebuffer" .. i, "codepthstencil")
    PostColorRender(_ARG_0_)
    SetCurrentCamera(_ARG_0_, "mainglare")
    AutoSetAspect(_ARG_0_)
    RenderWorld(_ARG_0_, "glare")
    SetCurrentCamera(_ARG_0_, "mainafterpp")
    AutoSetAspect(_ARG_0_)
    RenderWorld(_ARG_0_, "afterpp", "all", "transparent")
    RenderDebug3DFont(_ARG_0_)
    if 2 == 2 then
      RenderCSD(_ARG_0_)
    end
  end

  SetFrameBufferObjectOnce(_ARG_0_, "backbuffer", "null", "color", 0, 0, 0, 0)
  SetFrameBufferObject(_ARG_0_, "backbuffer", "null", "none", 0, 0, 0, 0)

  -- For loop reconstructed
  for i = 1, 2 do
    SetViewport(_ARG_0_, ({
      {
        0,
        0,
        GetSurfaceWidth(_ARG_0_, "backbuffer") / 2,
        (GetSurfaceHeight(_ARG_0_, "backbuffer"))
      },
      {
        GetSurfaceWidth(_ARG_0_, "backbuffer") / 2,
        0,
        GetSurfaceWidth(_ARG_0_, "backbuffer") / 2,
        (GetSurfaceHeight(_ARG_0_, "backbuffer"))
      }
    })[i][1], ({
      {
        0,
        0,
        GetSurfaceWidth(_ARG_0_, "backbuffer") / 2,
        (GetSurfaceHeight(_ARG_0_, "backbuffer"))
      },
      {
        GetSurfaceWidth(_ARG_0_, "backbuffer") / 2,
        0,
        GetSurfaceWidth(_ARG_0_, "backbuffer") / 2,
        (GetSurfaceHeight(_ARG_0_, "backbuffer"))
      }
    })[i][2], ({
      {
        0,
        0,
        GetSurfaceWidth(_ARG_0_, "backbuffer") / 2,
        (GetSurfaceHeight(_ARG_0_, "backbuffer"))
      },
      {
        GetSurfaceWidth(_ARG_0_, "backbuffer") / 2,
        0,
        GetSurfaceWidth(_ARG_0_, "backbuffer") / 2,
        (GetSurfaceHeight(_ARG_0_, "backbuffer"))
      }
    })[i][3], ({
      {
        0,
        0,
        GetSurfaceWidth(_ARG_0_, "backbuffer") / 2,
        (GetSurfaceHeight(_ARG_0_, "backbuffer"))
      },
      {
        GetSurfaceWidth(_ARG_0_, "backbuffer") / 2,
        0,
        GetSurfaceWidth(_ARG_0_, "backbuffer") / 2,
        (GetSurfaceHeight(_ARG_0_, "backbuffer"))
      }
    })[i][4])
    Rasterize(_ARG_0_, "coframebuffer" .. i)
    if 2 < 2 then
      SetCurrentScreen(_ARG_0_, i)
      RenderCSD(_ARG_0_)
    end
  end

  ResetViewport(_ARG_0_)
  SetCurrentScreen(_ARG_0_, -1)
  RenderCSD(_ARG_0_)
  ResetViewport(_ARG_0_)
  ApplyDevice(_ARG_0_)
  RenderDebug(_ARG_0_)
end
