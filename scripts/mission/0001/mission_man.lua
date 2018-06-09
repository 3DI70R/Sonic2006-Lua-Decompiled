g_select_missionman = {
  {
    name = "msg_m1000_001_01_1",
    event = ""
  },
  {
    name = "msg_m1000_002_01_1",
    event = ""
  }
}
c_icon_missionman = 3
function missionman_talk_icon(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1001_001" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1003_003" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1004_004" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1005_005" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1008_008" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1010_010" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1012_012" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1013_013" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1014_014" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1018_018" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1019_019" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1024_024" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1029_029" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1033_033" then
    g_message_icon = c_icon_missionman
    return true
  end
  return false
end
function missionman_talk_setup(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1001_001" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1001_n001"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1003_003" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1003_n003"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1004_004" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1004_n004"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1005_005" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1005_n005"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1008_008" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1008_n008"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1010_010" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1010_n010"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1012_012" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1012_n012"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1013_013" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1013_n013"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1014_014" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1014_n014"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1018_018" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1018_n018"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1019_019" then
    SetAnimationTalkWith(_ARG_0_, "wait_arm", "normal")
    g_name_setuped = "msg_m1019_n019"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1024_024" then
    SetAnimationTalkWith(_ARG_0_, "talk_aseri", "normal")
    g_name_setuped = "msg_m1024_n024"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1029_029" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1029_n029"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1033_033" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1033_n033"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  end
  return false
end
function missionman_talk_close(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1001_001_01_1" then
    g_select_missionman[1].event = "accept_1001"
    g_select_missionman[2].event = "reject_1001"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1003_003_01_1" then
    g_select_missionman[1].event = "accept_1003"
    g_select_missionman[2].event = "reject_1003"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1004_004_01_1" then
    g_select_missionman[1].event = "accept_1004"
    g_select_missionman[2].event = "reject_1004"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1005_005_01_1" then
    g_select_missionman[1].event = "accept_1005"
    g_select_missionman[2].event = "reject_1005"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1008_008_01_1" then
    g_select_missionman[1].event = "accept_1008"
    g_select_missionman[2].event = "reject_1008"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1010_010_01_1" then
    g_select_missionman[1].event = "accept_1010"
    g_select_missionman[2].event = "reject_1010"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1012_012_01_1" then
    g_select_missionman[1].event = "accept_1012"
    g_select_missionman[2].event = "reject_1012"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1013_013_01_1" then
    g_select_missionman[1].event = "accept_1013"
    g_select_missionman[2].event = "reject_1013"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1014_014_01_1" then
    g_select_missionman[1].event = "accept_1014"
    g_select_missionman[2].event = "reject_1014"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1018_018_01_1" then
    g_select_missionman[1].event = "accept_1018"
    g_select_missionman[2].event = "reject_1018"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1019_019_01_1" then
    g_select_missionman[1].event = "accept_1019"
    g_select_missionman[2].event = "reject_1019"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1024_024_01_1" then
    g_select_missionman[1].event = "accept_1024"
    g_select_missionman[2].event = "reject_1024"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1029_029_01_1" then
    g_select_missionman[1].event = "accept_1029"
    g_select_missionman[2].event = "reject_1029"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1033_033_01_1" then
    g_select_missionman[1].event = "accept_1033"
    g_select_missionman[2].event = "reject_1033"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  end
  return false
end
function missionman_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "accept_1001" then
    CallMission(_ARG_0_, "scripts/mission/1001/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1001" then
    OpenWindow(_ARG_0_, "msg_m1001_001_01_2")
    return true
  elseif _ARG_1_ == "accept_1003" then
    CallMission(_ARG_0_, "scripts/mission/1003/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1003" then
    OpenWindow(_ARG_0_, "msg_m1003_003_01_2")
    return true
  elseif _ARG_1_ == "accept_1004" then
    CallMission(_ARG_0_, "scripts/mission/1004/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1004" then
    OpenWindow(_ARG_0_, "msg_m1004_004_01_2")
    return true
  elseif _ARG_1_ == "accept_1005" then
    CallMission(_ARG_0_, "scripts/mission/1005/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1005" then
    OpenWindow(_ARG_0_, "msg_m1005_005_01_2")
    return true
  elseif _ARG_1_ == "accept_1008" then
    CallMission(_ARG_0_, "scripts/mission/1008/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1008" then
    OpenWindow(_ARG_0_, "msg_m1008_008_01_5")
    return true
  elseif _ARG_1_ == "accept_1010" then
    CallMission(_ARG_0_, "scripts/mission/1010/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1010" then
    OpenWindow(_ARG_0_, "msg_m1010_010_01_2")
    return true
  elseif _ARG_1_ == "accept_1012" then
    CallMission(_ARG_0_, "scripts/mission/1012/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1012" then
    OpenWindow(_ARG_0_, "msg_m1012_012_01_2")
    return true
  elseif _ARG_1_ == "accept_1013" then
    CallMission(_ARG_0_, "scripts/mission/1013/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1013" then
    OpenWindow(_ARG_0_, "msg_m1013_013_01_2")
    return true
  elseif _ARG_1_ == "accept_1014" then
    CallMission(_ARG_0_, "scripts/mission/1014/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1014" then
    OpenWindow(_ARG_0_, "msg_m1014_014_01_2")
    return true
  elseif _ARG_1_ == "accept_1018" then
    CallMission(_ARG_0_, "scripts/mission/1018/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1018" then
    OpenWindow(_ARG_0_, "msg_m1018_018_01_2")
    return true
  elseif _ARG_1_ == "accept_1019" then
    CallMission(_ARG_0_, "scripts/mission/1019/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1019" then
    OpenWindow(_ARG_0_, "msg_m1019_019_01_2")
    return true
  elseif _ARG_1_ == "accept_1024" then
    CallMission(_ARG_0_, "scripts/mission/1024/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1024" then
    OpenWindow(_ARG_0_, "msg_m1024_024_01_2")
    return true
  elseif _ARG_1_ == "accept_1029" then
    CallMission(_ARG_0_, "scripts/mission/1029/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1029" then
    OpenWindow(_ARG_0_, "msg_m1029_029_01_2")
    return true
  elseif _ARG_1_ == "accept_1033" then
    CallMission(_ARG_0_, "scripts/mission/1033/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1033" then
    OpenWindow(_ARG_0_, "msg_m1033_033_01_2")
    return true
  end
  return false
end
