function on_talk_icon_talk(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_t00009a051" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009a052" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009a053" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009a054" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009a055" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009a056" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009a057" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009a058" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009a059" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009a060" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009a061" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009a062" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009a063" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009a064" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009a065" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009a066" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009a067" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009a068" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009a070" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009a071" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009a072" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009a073" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009a074" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009b151" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009b152" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009b153" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009b154" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009b155" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009b156" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009b157" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009b158" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009b159" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009b160" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009b161" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009b162" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009b163" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009b164" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009b165" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009b166" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009b167" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009b168" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009b170" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009b171" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009b172" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009b174" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009b175" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009b199" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009c251" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009c252" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009c253" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009c254" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00009c255" then
    g_message_icon = c_icon_chat
  end
end
function mission_talk(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_t00009a051" then
    SetAnimationTalkWith(_ARG_0_, "talk_joy", "joy")
    g_name_setuped = "msg_t_n051"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009a052" then
    SetAnimationTalkWith(_ARG_0_, "talk_joy", "joy")
    g_name_setuped = "msg_t_n052"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009a053" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_n053"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009a054" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "sad")
    g_name_setuped = "msg_t_n054"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009a055" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_n055"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009a056" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_n056"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009a057" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_n057"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009a058" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_n058"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009a059" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "joy")
    g_name_setuped = "msg_t_n059"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009a060" then
    SetAnimationTalkWith(_ARG_0_, "talk_joy", "joy")
    g_name_setuped = "msg_t_n060"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009a061" then
    SetAnimationTalkWith(_ARG_0_, "talk_sad", "sad")
    g_name_setuped = "msg_t_n061"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009a062" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_n062"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009a063" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_n063"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009a064" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_n064"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009a065" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_n065"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009a066" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_n066"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009a067" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_n067"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009a068" then
    SetAnimationTalkWith(_ARG_0_, "talk_joy", "joy")
    g_name_setuped = "msg_t_n068"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009a070" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_n070"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009a071" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_n071"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009a072" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_n072"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009a073" then
    SetAnimationTalkWith(_ARG_0_, "talk_sad", "sad")
    g_name_setuped = "msg_t_n073"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009a074" then
    SetAnimationTalkWith(_ARG_0_, "talk_sad", "sad")
    g_name_setuped = "msg_t_n074"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009b151" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_n151"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009b152" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_n152"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009b153" then
    SetAnimationTalkWith(_ARG_0_, "talk_aseri", "normal")
    g_name_setuped = "msg_t_n153"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009b154" then
    SetAnimationTalkWith(_ARG_0_, "talk_sad", "sad")
    g_name_setuped = "msg_t_n154"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009b155" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_n155"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009b156" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_n156"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009b157" then
    SetAnimationTalkWith(_ARG_0_, "talk_joy", "joy")
    g_name_setuped = "msg_t_n157"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009b158" then
    SetAnimationTalkWith(_ARG_0_, "talk_joy", "joy")
    g_name_setuped = "msg_t_n158"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009b159" then
    SetAnimationTalkWith(_ARG_0_, "talk_aseri", "sad")
    g_name_setuped = "msg_t_n159"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009b160" then
    SetAnimationTalkWith(_ARG_0_, "talk_joy", "joy")
    g_name_setuped = "msg_t_n160"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009b161" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "angry")
    g_name_setuped = "msg_t_n161"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009b162" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "angry")
    g_name_setuped = "msg_t_n162"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009b163" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "joy")
    g_name_setuped = "msg_t_n163"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009b164" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "joy")
    g_name_setuped = "msg_t_n164"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009b165" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "sad")
    g_name_setuped = "msg_t_n165"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009b166" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_n166"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009b167" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_n167"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009b168" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "angry")
    g_name_setuped = "msg_t_n168"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009b170" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "sad")
    g_name_setuped = "msg_t_n170"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009b171" then
    SetAnimationTalkWith(_ARG_0_, "wait", "normal")
    g_name_setuped = "msg_t_n171"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009b172" then
    SetAnimationTalkWith(_ARG_0_, "wait", "normal")
    g_name_setuped = "msg_t_n172"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009b174" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_n174"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009b175" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "joy")
    g_name_setuped = "msg_t_n175"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009b199" then
    SetAnimationTalkWith(_ARG_0_, "talk_joy", "joy")
    g_name_setuped = "msg_t_n199"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009c251" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_n251"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009c252" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_n252"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009c253" then
    SetAnimationTalkWith(_ARG_0_, "talk_sad", "sad")
    g_name_setuped = "msg_t_n253"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009c254" then
    SetAnimationTalkWith(_ARG_0_, "talk_joy1", "joy")
    g_name_setuped = "msg_t_n254"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  elseif _ARG_1_ == "msg_t00009c255" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_n255"
    g_message_setuped = _ARG_1_ .. "_01_1"
    return true
  end
  return false
end
