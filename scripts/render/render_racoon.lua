script.reload("scripts/render/render_gamemode.lua")
EnableRasterizeBlur = false
function MyPrepareColorRender(_ARG_0_)
  SetFrameBufferObject(_ARG_0_, "framebuffer0", "depthstencil", "all", 0, 0, 0, 0)
end
PrepareColorRender = MyPrepareColorRender
