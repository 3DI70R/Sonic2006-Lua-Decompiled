EndOfTheWorld.Sonic = inherits_from(ActionStage)
EndOfTheWorld.Sonic.scripts = {
  "scripts/stage/end/a_sonic.lua",
  "scripts/stage/end/b_sonic.lua",
  "scripts/stage/end/c_sonic.lua",
  "scripts/stage/end/d_sonic.lua",
  "scripts/stage/end/e_sonic.lua",
  "scripts/stage/end/f_sonic.lua",
  "scripts/stage/end/g_sonic.lua"
}
function EndOfTheWorld.Sonic.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct EndOfTheWorld.Sonic")
  _ARG_0_.areas = {
    ["Area A"] = EndOfTheWorld.SonicA,
    ["Area B"] = EndOfTheWorld.SonicB,
    ["Area C"] = EndOfTheWorld.SonicC,
    ["Area D"] = EndOfTheWorld.SonicD,
    ["Area E"] = EndOfTheWorld.SonicE,
    ["Area F"] = EndOfTheWorld.SonicF,
    ["Area G"] = EndOfTheWorld.SonicG
  }
  _ARG_0_.area = "Area A"
end
function EndOfTheWorld.Sonic.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("EndOfTheWorld.Sonic:Setup")
end
