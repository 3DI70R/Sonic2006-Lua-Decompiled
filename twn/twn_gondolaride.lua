script.reload("twn/twn_mancommon.lua")
base_motion_package_name = "twn/twn_youngman_motion"
man_package_name = "twn/twn_gondolaride"
EquipmentItem = {
  {
    object_name = "oar",
    package_name = "twn/twn_item_oar"
  }
}
HandItem = {
  {
    anim_name = "body_anim_sit_gondola_wait",
    object_name = "oar",
    node_name = "LeftHand"
  },
  {
    anim_name = "body_anim_sit_gondola_kagamul_l",
    object_name = "oar",
    node_name = "LeftHand"
  },
  {
    anim_name = "body_anim_sit_gondola_kagamur_l",
    object_name = "oar",
    node_name = "LeftHand"
  }
}
VoiceList = {
  {
    name = "talk",
    id = "youngman_normal"
  },
  {
    name = "joy",
    id = "youngman_joy"
  },
  {
    name = "angry",
    id = "youngman_angry"
  },
  {
    name = "sad",
    id = "youngman_sad"
  },
  {
    name = "surprise",
    id = "youngman_surprize"
  },
  {
    name = "dodge",
    id = "youngman_dodge"
  },
  {
    name = "damage",
    id = "youngman_dodge"
  },
  {
    name = "call",
    id = "youngman_call"
  },
  {name = "clap", id = "clap"}
}
FootStepSE = "townsman_step"
AnimationVoice = {
  {
    anim_name = "body_anim_gondola_wait",
    bank = "stage_twn_voice",
    id = "gondola_whistle"
  }
}
WalkBaseSpeed = youngman_walkspeed
RunBaseSpeed = youngman_runspeed
RunFearBaseSpeed = youngman_runfearspeed
MaxMoveSpeed = youngman_runspeed * 2
ModelVariation = {
  {
    body_color_no = 0,
    face_color_no = 0,
    hair_color_no = 0,
    hair_model = 0,
    accessory = {}
  }
}
