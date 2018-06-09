function on_talk_icon_talk(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_t00000b151" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b152" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b153" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b154" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b155" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b156" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b157" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b158" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b159" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b160" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b161" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b162" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b163" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b164" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b165" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b166" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b167" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b168" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b169" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b170" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b171" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b172" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b173" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b174" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b175" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b177" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b178" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b179" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b180" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b181" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000b199" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000c251" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000c252" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000c253" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000c254" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00000c255" then
    g_message_icon = c_icon_chat
  end
end
function mission_talk(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_t00000b151" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_n151"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b152" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "surprise")
    g_name_setuped = "msg_t_n152"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b153" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_n153"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b154" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_n154"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b155" then
    SetAnimationTalkWith(_ARG_0_, "talk_sad", "sad")
    g_name_setuped = "msg_t_n155"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b156" then
    SetAnimationTalkWith(_ARG_0_, "talk_sad", "sad")
    g_name_setuped = "msg_t_n156"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b157" then
    SetAnimationTalkWith(_ARG_0_, "talk_joy", "joy")
    g_name_setuped = "msg_t_n157"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b158" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "joy")
    g_name_setuped = "msg_t_n158"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b159" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_n159"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b160" then
    SetAnimationTalkWith(_ARG_0_, "talk_joy", "joy")
    g_name_setuped = "msg_t_n160"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b161" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "angry")
    g_name_setuped = "msg_t_n161"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b162" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "angry")
    g_name_setuped = "msg_t_n162"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b163" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_n163"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b164" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "joy")
    g_name_setuped = "msg_t_n164"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b165" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "joy")
    g_name_setuped = "msg_t_n165"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b166" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "sad")
    g_name_setuped = "msg_t_n166"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b167" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_n167"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b168" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_n168"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b169" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "angry")
    g_name_setuped = "msg_t_n169"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b170" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "sad")
    g_name_setuped = "msg_t_n170"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b171" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_n171"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b172" then
    SetAnimationTalkWith(_ARG_0_, "wait", "normal")
    g_name_setuped = "msg_t_n172"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b173" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_n173"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b174" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "joy")
    g_name_setuped = "msg_t_n174"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b175" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_n175"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b177" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_n177"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b178" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_n178"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b179" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_n179"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b180" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "joy")
    g_name_setuped = "msg_t_n180"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b181" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_n181"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000b199" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "joy")
    g_name_setuped = "msg_t_n199"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000c251" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_n251"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000c252" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "nomal")
    g_name_setuped = "msg_t_n252"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000c253" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "joy")
    g_name_setuped = "msg_t_n253"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000c254" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "joy")
    g_name_setuped = "msg_t_n254"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00000c255" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "sad")
    g_name_setuped = "msg_t_n255"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  end
  return false
end
