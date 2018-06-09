Event.Shadow = inherits_from(ActionStage)
Event.Shadow.scripts = {
  "scripts/stage/event/ev0102.lua",
  "scripts/stage/event/ev0103.lua",
  "scripts/stage/event/ev0104.lua",
  "scripts/stage/event/ev0105.lua",
  "scripts/stage/event/ev0106.lua",
  "scripts/stage/event/ev0107.lua",
  "scripts/stage/event/ev0108.lua",
  "scripts/stage/event/ev0109.lua",
  "scripts/stage/event/ev0110.lua",
  "scripts/stage/event/ev0111.lua",
  "scripts/stage/event/ev0112.lua",
  "scripts/stage/event/ev0113.lua",
  "scripts/stage/event/ev0114.lua",
  "scripts/stage/event/ev0115.lua",
  "scripts/stage/event/ev0116.lua",
  "scripts/stage/event/ev0117.lua",
  "scripts/stage/event/ev0118.lua",
  "scripts/stage/event/ev0119.lua",
  "scripts/stage/event/ev0120.lua",
  "scripts/stage/event/ev0121.lua",
  "scripts/stage/event/ev0122.lua",
  "scripts/stage/event/ev0124.lua",
  "scripts/stage/event/ev0125.lua",
  "scripts/stage/event/ev0126.lua",
  "scripts/stage/event/ev0127.lua",
  "scripts/stage/event/ev0128.lua",
  "scripts/stage/event/ev0129.lua"
}
function Event.Shadow.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct Event.shadow")
  _ARG_0_.areas = {
    ev0102 = Event.ev0102,
    ev0103 = Event.ev0103,
    ev0104 = Event.ev0104,
    ev0105 = Event.ev0105,
    ev0106 = Event.ev0106,
    ev0107 = Event.ev0107,
    ev0108 = Event.ev0108,
    ev0109 = Event.ev0109,
    ev0110 = Event.ev0110,
    ev0111 = Event.ev0111,
    ev0112 = Event.ev0112,
    ev0113 = Event.ev0113,
    ev0114 = Event.ev0114,
    ev0115 = Event.ev0115,
    ev0116 = Event.ev0116,
    ev0117 = Event.ev0117,
    ev0118 = Event.ev0118,
    ev0119 = Event.ev0119,
    ev0120 = Event.ev0120,
    ev0121 = Event.ev0121,
    ev0122 = Event.ev0122,
    ev0124 = Event.ev0124,
    ev0125 = Event.ev0125,
    ev0126 = Event.ev0126,
    ev0127 = Event.ev0127,
    ev0128 = Event.ev0128,
    ev0129 = Event.ev0129
  }
  _ARG_0_.area = "Area A"
end
function Event.Shadow.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("Event.Shadow:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_kdv.plc")
  })
  Game.PlayBGM("kdv")
end
