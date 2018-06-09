function RenderRaderMap(_ARG_0_)
  BeginBlock(_ARG_0_, "radermap0", "stop")
  CreateTexture(_ARG_0_, "radermap", 256, 256, 1, "A8R8G8B8")
  CreateDepthStencilSurface(_ARG_0_, "depthstencil_256", 256, 256, "D24S8")
  LoadTexture(_ARG_0_, "sprite/radarmap_cover/radarmap_mask.dds", "radermap_mask")
  SetFrameBufferObjectOnce(_ARG_0_, "radermap", "depthstencil_256", "all", 0, 0, 0, 0)
  SetFrameBufferObject(_ARG_0_, "radermap", "depthstencil_256", "color_depth", 0, 0, 0, 0)
  RenderCustom(_ARG_0_, "radermap", "radermap")
  EndBlock(_ARG_0_)
end
function ViewTextureRaderMap(_ARG_0_)
  BeginBlock(_ARG_0_, "radermap1", "stop")
  W = GetSurfaceWidth(_ARG_0_, "backbuffer")
  H = GetSurfaceHeight(_ARG_0_, "backbuffer")
  x = W * 3 / 4 - 20
  y = 20
  SetViewport(_ARG_0_, x, y, W / 4, W / 4)
  CopyTexture(_ARG_0_, "radermap")
  ResetViewport(_ARG_0_)
  EndBlock(_ARG_0_)
end
