g_select_missionman = {
  {
    name = "msg_m1100_001_01_1",
    event = ""
  },
  {
    name = "msg_m1100_002_01_1",
    event = ""
  }
}
c_icon_missionman = 3
function missionman_talk_icon(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1103_103" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1104_104" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1107_107" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1108_108" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1109_109" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1112_112" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1114_114" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1117_117" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1118_118" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1119_119" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1120_120" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1126_126" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1128_128" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1130_130" then
    g_message_icon = c_icon_missionman
    return true
  end
  return false
end
function missionman_talk_setup(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1103_103" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1103_n103"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1104_104" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1104_n104"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1107_107" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1107_n107"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1108_108" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1108_n108"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1109_109" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1109_n109"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1112_112" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1112_n112"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1114_114" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1114_n114"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1117_117" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1117_n117"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1118_118" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1118_n118"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1119_119" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1119_n119"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1120_120" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1120_n120"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1126_126" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1126_n126"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1128_128" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1128_n128"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1130_130" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_npp038"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  end
  return false
end
function missionman_talk_close(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1103_103_01_1" then
    g_select_missionman[1].event = "accept_1103"
    g_select_missionman[2].event = "reject_1103"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1104_104_01_1" then
    g_select_missionman[1].event = "accept_1104"
    g_select_missionman[2].event = "reject_1104"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1107_107_01_1" then
    g_select_missionman[1].event = "accept_1107"
    g_select_missionman[2].event = "reject_1107"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1108_108_01_1" then
    g_select_missionman[1].event = "accept_1108"
    g_select_missionman[2].event = "reject_1108"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1109_109_01_1" then
    g_select_missionman[1].event = "accept_1109"
    g_select_missionman[2].event = "reject_1109"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1112_112_01_1" then
    g_select_missionman[1].event = "accept_1112"
    g_select_missionman[2].event = "reject_1112"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1114_114_01_1" then
    g_select_missionman[1].event = "accept_1114"
    g_select_missionman[2].event = "reject_1114"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1117_117_01_1" then
    g_select_missionman[1].event = "accept_1117"
    g_select_missionman[2].event = "reject_1117"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1118_118_01_1" then
    g_select_missionman[1].event = "accept_1118"
    g_select_missionman[2].event = "reject_1118"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1119_119_01_1" then
    g_select_missionman[1].event = "accept_1119"
    g_select_missionman[2].event = "reject_1119"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1120_120_01_1" then
    g_select_missionman[1].event = "accept_1120"
    g_select_missionman[2].event = "reject_1120"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1126_126_01_1" then
    g_select_missionman[1].event = "accept_1126"
    g_select_missionman[2].event = "reject_1126"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1128_128_01_1" then
    g_select_missionman[1].event = "accept_1128"
    g_select_missionman[2].event = "reject_1128"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1130_130_01_1" then
    g_select_missionman[1].event = "accept_1130"
    g_select_missionman[2].event = "reject_1130"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  end
  return false
end
function missionman_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "accept_1103" then
    CallMission(_ARG_0_, "scripts/mission/1103/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1103" then
    OpenWindow(_ARG_0_, "msg_m1103_103_01_2")
    return true
  elseif _ARG_1_ == "accept_1104" then
    CallMission(_ARG_0_, "scripts/mission/1104/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1104" then
    OpenWindow(_ARG_0_, "msg_m1104_104_01_2")
    return true
  elseif _ARG_1_ == "accept_1107" then
    CallMission(_ARG_0_, "scripts/mission/1107/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1107" then
    OpenWindow(_ARG_0_, "msg_m1107_107_01_2")
    return true
  elseif _ARG_1_ == "accept_1108" then
    CallMission(_ARG_0_, "scripts/mission/1108/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1108" then
    OpenWindow(_ARG_0_, "msg_m1108_108_01_2")
    return true
  elseif _ARG_1_ == "accept_1109" then
    CallMission(_ARG_0_, "scripts/mission/1109/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1109" then
    OpenWindow(_ARG_0_, "msg_m1109_109_01_2")
    return true
  elseif _ARG_1_ == "accept_1112" then
    CallMission(_ARG_0_, "scripts/mission/1112/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1112" then
    OpenWindow(_ARG_0_, "msg_m1112_112_01_2")
    return true
  elseif _ARG_1_ == "accept_1114" then
    CallMission(_ARG_0_, "scripts/mission/1114/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1114" then
    OpenWindow(_ARG_0_, "msg_m1114_114_01_2")
    return true
  elseif _ARG_1_ == "accept_1117" then
    CallMission(_ARG_0_, "scripts/mission/1117/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1117" then
    OpenWindow(_ARG_0_, "msg_m1117_117_01_2")
    return true
  elseif _ARG_1_ == "accept_1118" then
    CallMission(_ARG_0_, "scripts/mission/1118/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1118" then
    OpenWindow(_ARG_0_, "msg_m1118_118_01_2")
    return true
  elseif _ARG_1_ == "accept_1119" then
    CallMission(_ARG_0_, "scripts/mission/1119/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1119" then
    OpenWindow(_ARG_0_, "msg_m1119_119_01_2")
    return true
  elseif _ARG_1_ == "accept_1120" then
    CallMission(_ARG_0_, "scripts/mission/1120/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1120" then
    OpenWindow(_ARG_0_, "msg_m1120_120_01_2")
    return true
  elseif _ARG_1_ == "accept_1126" then
    CallMission(_ARG_0_, "scripts/mission/1126/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1126" then
    OpenWindow(_ARG_0_, "msg_m1126_126_01_2")
    return true
  elseif _ARG_1_ == "accept_1128" then
    CallMission(_ARG_0_, "scripts/mission/1128/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1128" then
    OpenWindow(_ARG_0_, "msg_m1128_128_01_2")
    return true
  elseif _ARG_1_ == "accept_1130" then
    CallMission(_ARG_0_, "scripts/mission/1130/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1130" then
    OpenWindow(_ARG_0_, "msg_m1130_130_01_2")
    return true
  end
  return false
end
