Event.Last = inherits_from(ActionStage)
Event.Last.scripts = {
  "scripts/stage/event/ev0300.lua",
  "scripts/stage/event/ev0301.lua",
  "scripts/stage/event/ev0302.lua",
  "scripts/stage/event/ev0304.lua"
}
function Event.Last.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct Event.last")
  _ARG_0_.areas = {
    ev0001 = Event.ev0300,
    ev0002 = Event.ev0301,
    ev0003 = Event.ev0302,
    ev0004 = Event.ev0304
  }
  _ARG_0_.area = "Area A"
end
function Event.Last.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("Event.Last:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_kdv.plc")
  })
  Game.PlayBGM("kdv")
end
