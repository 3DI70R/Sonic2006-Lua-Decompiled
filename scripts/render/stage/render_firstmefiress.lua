script.reload("scripts/render/render_gamemode.lua")
function RenderMefiress(_ARG_0_)
  BeginBlock(_ARG_0_, "user0", "run")
  user_texture_size = 256
  CreateTexture(_ARG_0_, "user0", user_texture_size, user_texture_size, 1, "A8R8G8B8")
  CreateDepthStencilSurface(_ARG_0_, "depthstencil_256", user_texture_size, user_texture_size, "D24S8")
  SetFrameBufferObject(_ARG_0_, "user0", "depthstencil_256", "color_depth", 0, 0, 0, 0)
  RenderCustom(_ARG_0_, "user0", "user0")
  EndBlock(_ARG_0_)
end
PrepareColorRender = RenderMefiress
