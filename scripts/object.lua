function inherits_from(super)

  function deepCopyTable(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[deepCopyTable(orig_key)] = deepCopyTable(orig_value)
        end
        setmetatable(copy, deepCopyTable(getmetatable(orig)))
    else
        copy = orig
    end
    return copy
  end

  function hideNewFunctions(table)
    table.new = nil
    table.newWithoutCtor = nil
  end

  local copy = deepCopyTable(super)

  function copy:new(...)
    local newCopy = deepCopyTable(self)
    hideNewFunctions(newCopy)
    newCopy:constructor(unpack(...))
    return newCopy
  end

  function copy:newWithoutCtor()
    local newCopy = deepCopyTable(self)
    hideNewFunctions(newCopy)
    return newCopy
  end

  return copy
end

Class = {}
function Class:constructor()
end
function Class:GetName()
  return "class"
end
function Class:Type()
  return "Unknown"
end

Object = inherits_from(Class)
function Object:constructor()
  self._sleeptime = 0
end
function Object:Setup()
  if self.state ~= nil and self.states ~= nil then
    self._s = self.states[self.state]:new()
    self._co = coroutine.create(self.states[self.state]:new().Main)
    self._currstate = self.state
  end
end
function Object:Exec(deltaTime)
  if self.states ~= nil and self.state ~= nil and self.state ~= self._currstate and self.states[self.state] ~= nil then
    self._currstate = self.state
    self._s = nil
    collectgarbage()
    Game.StateChangeCallback()
    self._s = self.states[self.state]:new()
    self._co = coroutine.create(self.states[self.state]:new().Main)
    self._sleeptime = 0
  end
  if self._co ~= nil then
    self._sleeptime = self._sleeptime - deltaTime
    if self._sleeptime <= 0 then
      self._sleeptime = 0
      local resumeValue = coroutine.resume(self._co, self._s, self)
      if resumeValue ~= nil then
        self._sleeptime = resumeValue
      end
    end
  end
  self:Step(deltaTime)
end
function Object:Step(deltaTime)
end
function Object:ChangeState(state)
  self.state = state
end
function Object:Wake()
  self._sleeptime = 0
end
function Object:ProcessEvent(event, ...)
  if self._s ~= nil and self._s[event] ~= nil then
    self._s[state](self._s, self, unpack(...))
    return true
  end
  if self[event] ~= nil then
    self[event](self, unpack(...))
    return true
  end
  return false
end

State = inherits_from(Class)
function State:Main(_ARG_1_)
  Game.Log("state.main")
end