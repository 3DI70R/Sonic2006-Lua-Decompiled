ActionArea = inherits_from(Object)
function ActionArea.constructor(_ARG_0_)
  Object.constructor(_ARG_0_)
  Game.Log("construct ActionArea")
  _ARG_0_._comp = {}
end
function ActionArea.Type(_ARG_0_)
  return "ActionArea"
end
function ActionArea.Setup(_ARG_0_)
  Game.Log("ActionArea:Setup")
end
function ActionArea.AddComponent(_ARG_0_, _ARG_1_)
  while next(_ARG_1_, next(_ARG_1_)) ~= nil do
    table.insert(_ARG_0_._comp, next(_ARG_1_))
  end
end
function ActionArea.ChangeArea(_ARG_0_, _ARG_1_)
  stage = _ARG_0_._stage
  stage:ChangeArea(_ARG_1_)
end
function ActionArea.StartPlaying(_ARG_0_)
end
