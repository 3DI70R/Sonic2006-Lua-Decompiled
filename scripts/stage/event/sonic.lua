Event.Sonic = inherits_from(ActionStage)
Event.Sonic.scripts = {
  "scripts/stage/event/test_event.lua",
  "scripts/stage/event/ev0001.lua",
  "scripts/stage/event/ev0002.lua",
  "scripts/stage/event/ev0003.lua",
  "scripts/stage/event/ev0004.lua",
  "scripts/stage/event/ev0006.lua",
  "scripts/stage/event/ev0007.lua",
  "scripts/stage/event/ev0008.lua",
  "scripts/stage/event/ev0009.lua",
  "scripts/stage/event/ev0010.lua",
  "scripts/stage/event/ev0011.lua",
  "scripts/stage/event/ev0012.lua",
  "scripts/stage/event/ev0013.lua",
  "scripts/stage/event/ev0014.lua",
  "scripts/stage/event/ev0015.lua",
  "scripts/stage/event/ev0016.lua",
  "scripts/stage/event/ev0017.lua",
  "scripts/stage/event/ev0018.lua",
  "scripts/stage/event/ev0019.lua",
  "scripts/stage/event/ev0021.lua",
  "scripts/stage/event/ev0022.lua",
  "scripts/stage/event/ev0023.lua",
  "scripts/stage/event/ev0024.lua",
  "scripts/stage/event/ev0025.lua",
  "scripts/stage/event/ev0026.lua",
  "scripts/stage/event/ev0027.lua",
  "scripts/stage/event/ev0028.lua",
  "scripts/stage/event/ev0029.lua",
  "scripts/stage/event/ev0031.lua"
}
function Event.Sonic.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct Event.Sonic")
  _ARG_0_.areas = {
    ev0001 = Event.ev0001,
    ev0002 = Event.ev0002,
    ev0003 = Event.ev0003,
    ev0004 = Event.ev0004,
    ev0006 = Event.ev0006,
    ev0007 = Event.ev0007,
    ev0008 = Event.ev0008,
    ev0009 = Event.ev0009,
    ev0010 = Event.ev0010,
    ev0011 = Event.ev0011,
    ev0012 = Event.ev0012,
    ev0013 = Event.ev0013,
    ev0014 = Event.ev0014,
    ev0015 = Event.ev0015,
    ev0016 = Event.ev0016,
    ev0017 = Event.ev0017,
    ev0018 = Event.ev0018,
    ev0019 = Event.ev0019,
    ev0021 = Event.ev0021,
    ev0022 = Event.ev0022,
    ev0023 = Event.ev0023,
    ev0024 = Event.ev0024,
    ev0025 = Event.ev0025,
    ev0026 = Event.ev0026,
    ev0027 = Event.ev0027,
    ev0028 = Event.ev0028,
    ev0029 = Event.ev0029
  }
  _ARG_0_.area = "Area A"
end
function Event.Sonic.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("Event.Sonic:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_kdv.plc")
  })
  Game.PlayBGM("kdv")
end
