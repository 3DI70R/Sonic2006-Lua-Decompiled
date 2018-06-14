ActionArea = inherits_from(Object)
function ActionArea:constructor()
  Object.constructor(self)
  Game.Log("construct ActionArea")
  self._comp = {}
end
function ActionArea:Type()
  return "ActionArea"
end
function ActionArea:Setup()
  Game.Log("ActionArea:Setup")
end
function ActionArea:AddComponent(component)
  while next(component, next(component)) ~= nil do
    table.insert(self._comp, next(component))
  end
end
function ActionArea:ChangeArea(area)
  stage = self._stage
  stage:ChangeArea(area)
end
function ActionArea:StartPlaying()
end
