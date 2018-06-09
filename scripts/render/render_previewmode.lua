script.reload("scripts/render/render_utility_pe_editor.lua")
function Build(_ARG_0_)
  CreateDefaultRenderTargets(_ARG_0_)
  SCREEN_W = GetSurfaceWidth(_ARG_0_, "framebuffer0")
  SCREEN_H = GetSurfaceHeight(_ARG_0_, "framebuffer0")
  ApplySceneParams(_ARG_0_)
  SetFrameBufferObjectOnce(_ARG_0_, "framebuffer0", "depthstencil", "all", 0, 0, 0, 0)
  SetFrameBufferObject(_ARG_0_, "framebuffer0", "depthstencil", "none", 0, 0, 0, 0)
  SetCurrentCamera(_ARG_0_, "main")
  ClearRenderTarget(_ARG_0_, "color", 80, 80, 80, 0)
  SetViewport(_ARG_0_, 0, 0, SCREEN_W, SCREEN_H)
  AutoSetAspect(_ARG_0_)
  RenderMain(_ARG_0_, "framebuffer0", "depthstencil")
  Capture(_ARG_0_, "framebuffer0")
  BeginBlock(_ARG_0_, "posteffect", "run")
  MakeBloom(_ARG_0_)
  ApplyBloom(_ARG_0_)
  EndBlock(_ARG_0_)
  RenderDebug3DFont(_ARG_0_)
  SetFrameBufferObject(_ARG_0_, "backbuffer", "depthstencil", "all", 0, 0, 0, 0)
  ResetViewport(_ARG_0_)
  CopyTexture(_ARG_0_, "framebuffer0")
end