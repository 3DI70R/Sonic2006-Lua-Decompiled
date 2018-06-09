script.reload("scripts/render/render_utility.lua")
GenerateCSMLevels = 4
GenerateCSMObjects = 3
EnableRasterizeBlur = true
function PrepareColorRender(_ARG_0_)
end
function PostColorRender(_ARG_0_, _ARG_1_, _ARG_2_)
end
function RenderAfterPostprocess(_ARG_0_)
end
function Build(_ARG_0_)
  CreateCSM(_ARG_0_)
  RenderCSM(_ARG_0_, GenerateCSMLevels, GenerateCSMObjects)
  ApplySceneParams(_ARG_0_)
  RenderReflection(_ARG_0_)
  PrepareColorRender(_ARG_0_)
  SetFrameBufferObjectOnce(_ARG_0_, "framebuffer0", "depthstencil", "all", 0, 0, 0, 0)
  SetViewport(_ARG_0_, 0, 0, GetSurfaceWidth(_ARG_0_, "framebuffer0"), (GetSurfaceHeight(_ARG_0_, "framebuffer0")))
  SetCurrentCamera(_ARG_0_, "main")
  AutoSetAspect(_ARG_0_)
  Zpass(_ARG_0_, "depthbuffer0", "depthstencil", "main")
  RenderMain(_ARG_0_, "framebuffer0", "depthstencil")
  PostColorRender(_ARG_0_)
  Capture(_ARG_0_, "framebuffer0")
  MakeBloom(_ARG_0_)
  ApplyBloom(_ARG_0_)
  SetCurrentCamera(_ARG_0_, "mainglare")
  AutoSetAspect(_ARG_0_)
  RenderWorld(_ARG_0_, "glare")
  RenderPostprocess(_ARG_0_, "framebuffer0")
  SetFrameBufferObject(_ARG_0_, "postprocess_output", "depthstencil", "none", 0, 0, 0, 0)
  SetCurrentCamera(_ARG_0_, "mainafterpp")
  AutoSetAspect(_ARG_0_)
  RenderWorld(_ARG_0_, "afterpp", "all", "transparent")
  SetFrameBufferObjectOnce(_ARG_0_, "backbuffer", "null", "color", 0, 0, 0, 0)
  SetFrameBufferObject(_ARG_0_, "backbuffer", "null", "none", 0, 0, 0, 0)
  ResetViewport(_ARG_0_)
  if EnableRasterizeBlur then
    RasterizeBurnoutBlur(_ARG_0_, "postprocess_output", "main", 1)
  else
    Rasterize(_ARG_0_, "postprocess_output")
  end
  RenderAfterPostprocess(_ARG_0_)
  Render2D(_ARG_0_)
end
