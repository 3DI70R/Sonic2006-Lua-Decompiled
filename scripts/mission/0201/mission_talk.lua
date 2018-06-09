function on_talk_icon_talk(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_t00002c251" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00002c252" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00002c253" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00002c254" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00002c255" then
    g_message_icon = c_icon_chat
  end
end
function mission_talk(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_t00002c251" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_n251"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00002c252" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_n252"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00002c253" then
    SetAnimationTalkWith(_ARG_0_, "talk_sad", "sad")
    g_name_setuped = "msg_t_n253"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00002c254" then
    SetAnimationTalkWith(_ARG_0_, "talk_joy1", "joy")
    g_name_setuped = "msg_t_n254"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00002c255" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_n255"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  end
  return false
end
