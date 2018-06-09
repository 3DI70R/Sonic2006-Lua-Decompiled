g_select_missionman = {
  {
    name = "msg_m1200_001_01_1",
    event = ""
  },
  {
    name = "msg_m1200_002_01_1",
    event = ""
  }
}
c_icon_missionman = 3
function missionman_talk_icon(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1201_201" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1203_203" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1211_211" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1212_212" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1214_214" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1215_215" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1216_216" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1218_218" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1219_219" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1226_226" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1231_231" then
    g_message_icon = c_icon_missionman
    return true
  elseif _ARG_1_ == "msg_m1239_239" then
    g_message_icon = c_icon_missionman
    return true
  end
  return false
end
function missionman_talk_setup(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1201_201" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1201_n201"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1203_203" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1203_n203"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1211_211" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1211_n211"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1212_212" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1212_n212"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1214_214" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1214_n214"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1215_215" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1215_n215"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1216_216" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1216_n216"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1218_218" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1218_n218"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1219_219" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1219_n219"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1226_226" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1226_n226"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1231_231" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1231_n231"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  elseif _ARG_1_ == "msg_m1239_239" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_m1239_n239"
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_talk_reuse = 1
    return true
  end
  return false
end
function missionman_talk_close(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1201_201_01_1" then
    g_select_missionman[1].event = "accept_1201"
    g_select_missionman[2].event = "reject_1201"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1203_203_01_1" then
    g_select_missionman[1].event = "accept_1203"
    g_select_missionman[2].event = "reject_1203"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1211_211_01_1" then
    g_select_missionman[1].event = "accept_1211"
    g_select_missionman[2].event = "reject_1211"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1212_212_01_1" then
    g_select_missionman[1].event = "accept_1212"
    g_select_missionman[2].event = "reject_1212"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1214_214_01_1" then
    g_select_missionman[1].event = "accept_1214"
    g_select_missionman[2].event = "reject_1214"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1215_215_01_1" then
    g_select_missionman[1].event = "accept_1215"
    g_select_missionman[2].event = "reject_1215"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1216_216_01_1" then
    g_select_missionman[1].event = "accept_1216"
    g_select_missionman[2].event = "reject_1216"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1218_218_01_1" then
    g_select_missionman[1].event = "accept_1218"
    g_select_missionman[2].event = "reject_1218"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1219_219_01_1" then
    g_select_missionman[1].event = "accept_1219"
    g_select_missionman[2].event = "reject_1219"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1226_226_01_1" then
    g_select_missionman[1].event = "accept_1226"
    g_select_missionman[2].event = "reject_1226"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1231_231_01_1" then
    g_select_missionman[1].event = "accept_1231"
    g_select_missionman[2].event = "reject_1231"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  elseif _ARG_1_ == "msg_m1239_239_01_1" then
    g_select_missionman[1].event = "accept_1239"
    g_select_missionman[2].event = "reject_1239"
    OpenSelect(_ARG_0_, "g_select_missionman")
    return true
  end
  return false
end
function missionman_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "accept_1201" then
    CallMission(_ARG_0_, "scripts/mission/1201/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1201" then
    OpenWindow(_ARG_0_, "msg_m1201_201_01_2")
    return true
  elseif _ARG_1_ == "accept_1203" then
    CallMission(_ARG_0_, "scripts/mission/1203/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1203" then
    OpenWindow(_ARG_0_, "msg_m1203_203_01_2")
    return true
  elseif _ARG_1_ == "accept_1211" then
    CallMission(_ARG_0_, "scripts/mission/1211/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1211" then
    OpenWindow(_ARG_0_, "msg_m1211_211_01_2")
    return true
  elseif _ARG_1_ == "accept_1212" then
    CallMission(_ARG_0_, "scripts/mission/1212/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1212" then
    OpenWindow(_ARG_0_, "msg_m1212_212_01_2")
    return true
  elseif _ARG_1_ == "accept_1214" then
    CallMission(_ARG_0_, "scripts/mission/1214/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1214" then
    OpenWindow(_ARG_0_, "msg_m1214_214_01_2")
    return true
  elseif _ARG_1_ == "accept_1215" then
    CallMission(_ARG_0_, "scripts/mission/1215/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1215" then
    OpenWindow(_ARG_0_, "msg_m1215_215_01_2")
    return true
  elseif _ARG_1_ == "accept_1216" then
    CallMission(_ARG_0_, "scripts/mission/1216/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1216" then
    OpenWindow(_ARG_0_, "msg_m1216_216_01_2")
    return true
  elseif _ARG_1_ == "accept_1218" then
    CallMission(_ARG_0_, "scripts/mission/1218/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1218" then
    OpenWindow(_ARG_0_, "msg_m1218_218_01_2")
    return true
  elseif _ARG_1_ == "accept_1219" then
    CallMission(_ARG_0_, "scripts/mission/1219/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1219" then
    OpenWindow(_ARG_0_, "msg_m1219_219_01_2")
    return true
  elseif _ARG_1_ == "accept_1226" then
    CallMission(_ARG_0_, "scripts/mission/1226/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1226" then
    OpenWindow(_ARG_0_, "msg_m1226_226_01_2")
    return true
  elseif _ARG_1_ == "accept_1231" then
    CallMission(_ARG_0_, "scripts/mission/1231/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1231" then
    OpenWindow(_ARG_0_, "msg_m1231_231_01_2")
    return true
  elseif _ARG_1_ == "accept_1239" then
    CallMission(_ARG_0_, "scripts/mission/1239/mission.lua")
    return true
  elseif _ARG_1_ == "reject_1239" then
    OpenWindow(_ARG_0_, "msg_m1239_239_01_2")
    return true
  end
  return false
end
