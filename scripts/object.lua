function inherits_from(_ARG_0_)
  setmetatable({}, {__index = _ARG_0_})
  _ARG_0_, _ARG_0_ = {}, {
    __index = {}
  }
  {}.new, _ARG_0_ = function(_ARG_0_, ...)
    setmetatable({_class = _UPVALUE1_, _super = _UPVALUE2_}, _UPVALUE0_)
    {_class = _UPVALUE1_, _super = _UPVALUE2_}:constructor(unpack(nil))
    return {_class = _UPVALUE1_, _super = _UPVALUE2_}
  end, _ARG_0_
  return {}
end
Class = {}
function Class.constructor(_ARG_0_)
end
function Class.GetName(_ARG_0_)
  return "class"
end
function Class.Type(_ARG_0_)
  return "Unknown"
end
Object = inherits_from(Class)
function Object.constructor(_ARG_0_)
  _ARG_0_._sleeptime = 0
end
function Object.Setup(_ARG_0_)
  if _ARG_0_.state ~= nil and _ARG_0_.states ~= nil then
    _ARG_0_._s = _ARG_0_.states[_ARG_0_.state]:new()
    _ARG_0_._co = coroutine.create(_ARG_0_.states[_ARG_0_.state]:new().Main)
    _ARG_0_._currstate = _ARG_0_.state
  end
end
function Object.Exec(_ARG_0_, _ARG_1_)
  if _ARG_0_.states ~= nil and _ARG_0_.state ~= nil and _ARG_0_.state ~= _ARG_0_._currstate and _ARG_0_.states[_ARG_0_.state] ~= nil then
    _ARG_0_._currstate = _ARG_0_.state
    _ARG_0_._s = nil
    collectgarbage()
    Game.StateChangeCallback()
    _ARG_0_._s = _ARG_0_.states[_ARG_0_.state]:new()
    _ARG_0_._co = coroutine.create(_ARG_0_.states[_ARG_0_.state]:new().Main)
    _ARG_0_._sleeptime = 0
  end
  if _ARG_0_._co ~= nil then
    _ARG_0_._sleeptime = _ARG_0_._sleeptime - _ARG_1_
    if _ARG_0_._sleeptime <= 0 then
      _ARG_0_._sleeptime = 0
      if coroutine.resume(_ARG_0_._co, _ARG_0_._s, _ARG_0_) == true and coroutine.resume(_ARG_0_._co, _ARG_0_._s, _ARG_0_) ~= nil then
        _ARG_0_._sleeptime = coroutine.resume(_ARG_0_._co, _ARG_0_._s, _ARG_0_)
      end
    end
  end
  _ARG_0_:Step(_ARG_1_)
end
function Object.Step(_ARG_0_, _ARG_1_)
end
function Object.ChangeState(_ARG_0_, _ARG_1_)
  _ARG_0_.state = _ARG_1_
end
function Object.Wake(_ARG_0_)
  _ARG_0_._sleeptime = 0
end
function Object.ProcessEvent(_ARG_0_, _ARG_1_, ...)
  if _ARG_0_._s ~= nil and _ARG_0_._s[_ARG_1_] ~= nil then
    _ARG_0_._s[_ARG_1_](_ARG_0_._s, _ARG_0_, unpack(nil))
    return true
  end
  if _ARG_0_[_ARG_1_] ~= nil then
    _ARG_0_[_ARG_1_](_ARG_0_, unpack(nil))
    return true
  end
  return false
end
State = inherits_from(Class)
function State.Main(_ARG_0_, _ARG_1_)
  Game.Log("state.main")
end
