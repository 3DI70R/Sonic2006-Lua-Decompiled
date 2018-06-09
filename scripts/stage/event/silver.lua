Event.Silver = inherits_from(ActionStage)
Event.Silver.scripts = {
  "scripts/stage/event/ev0201.lua",
  "scripts/stage/event/ev0202.lua",
  "scripts/stage/event/ev0203.lua",
  "scripts/stage/event/ev0204.lua",
  "scripts/stage/event/ev0205.lua",
  "scripts/stage/event/ev0206.lua",
  "scripts/stage/event/ev0207.lua",
  "scripts/stage/event/ev0208.lua",
  "scripts/stage/event/ev0209.lua",
  "scripts/stage/event/ev0210.lua",
  "scripts/stage/event/ev0211.lua",
  "scripts/stage/event/ev0212.lua",
  "scripts/stage/event/ev0213.lua",
  "scripts/stage/event/ev0214.lua",
  "scripts/stage/event/ev0215.lua",
  "scripts/stage/event/ev0216.lua",
  "scripts/stage/event/ev0217.lua",
  "scripts/stage/event/ev0218.lua",
  "scripts/stage/event/ev0219.lua",
  "scripts/stage/event/ev0221.lua",
  "scripts/stage/event/ev0222.lua",
  "scripts/stage/event/ev0223.lua",
  "scripts/stage/event/ev0224.lua",
  "scripts/stage/event/ev0225.lua",
  "scripts/stage/event/ev0226.lua",
  "scripts/stage/event/ev0227.lua"
}
function Event.Silver.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct Event.silver")
  _ARG_0_.areas = {
    ev0201 = Event.ev0201,
    ev0202 = Event.ev0202,
    ev0203 = Event.ev0203,
    ev0204 = Event.ev0204,
    ev0205 = Event.ev0205,
    ev0206 = Event.ev0206,
    ev0207 = Event.ev0207,
    ev0208 = Event.ev0208,
    ev0209 = Event.ev0209,
    ev0210 = Event.ev0210,
    ev0211 = Event.ev0211,
    ev0212 = Event.ev0212,
    ev0213 = Event.ev0213,
    ev0214 = Event.ev0214,
    ev0215 = Event.ev0215,
    ev0216 = Event.ev0216,
    ev0217 = Event.ev0217,
    ev0218 = Event.ev0218,
    ev0219 = Event.ev0219,
    ev0221 = Event.ev0221,
    ev0222 = Event.ev0222,
    ev0223 = Event.ev0223,
    ev0224 = Event.ev0224,
    ev0225 = Event.ev0225,
    ev0226 = Event.ev0226,
    ev0227 = Event.ev0227,
    ev0228 = Event.ev0228
  }
  _ARG_0_.area = "Area A"
end
function Event.Silver.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("Event.silver:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_kdv.plc")
  })
  Game.PlayBGM("kdv")
end
