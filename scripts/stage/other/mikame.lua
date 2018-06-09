function StageMikame(_ARG_0_)
  CreateGame(_ARG_0_)
  CreateGameMaster(_ARG_0_, "gm_prepro.lua", "scripts/event_mikame.lua")
  CreateLight(_ARG_0_, 0.2)
  CreateHavokRunner(_ARG_0_)
  CreateTerrain(_ARG_0_, "stage/other/mikame/")
  LoadSceneEnvMap(_ARG_0_, "trash/cubemap_test.dds")
end
