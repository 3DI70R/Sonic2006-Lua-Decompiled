script.reload("scripts/render/core/render_main.lua")
script.reload("scripts/render/core/render_shadowmap.lua")
script.reload("scripts/render/core/render_reflection.lua")
script.reload("scripts/render/core/render_zpass.lua")
script.reload("scripts/render/core/render_misc.lua")
script.reload("scripts/render/core/render_2d.lua")
script.reload("scripts/render/core/render_debug.lua")
script.reload("scripts/render/core/render_radermap.lua")
if GetPlatform() == "pc" then
  Zpass = OutputOnlyZ
else
  Zpass = OutputZNone
end
function RenderMain(_ARG_0_, _ARG_1_, _ARG_2_)
  RenderMainForSingle(_ARG_0_, _ARG_1_, _ARG_2_)
end
