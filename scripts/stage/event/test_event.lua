Event.test_event = inherits_from(ActionArea)
function Event.test_event.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Event.test_event")
end
function Event.test_event.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("Event.test_event.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/event/test_event"),
    Game.LoadSceneParams("scripts/stage/event/scene_event.lua")
  })
  Game.SetPlayer(0, 0, 0, 0, "sonic_new.lua")
end
