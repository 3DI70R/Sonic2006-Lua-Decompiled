script.reload("twn/twn_mancommon.lua")
base_motion_package_name = "twn/twn_youngman_motion"
man_package_name = "twn/twn_shopman"
no_damage_action = 1
no_dodge_action = 1
TalkPhantomOffset = {
  {
    x = 0,
    y = 0,
    z = -150
  }
}
EquipmentItem = {
  {
    object_name = "sunglasses",
    package_name = "twn/twn_item_sunglasses01"
  }
}
VoiceList = {
  {
    name = "talk",
    id = "youngman_normal"
  },
  {
    name = "joy",
    id = "youngmanp_joy"
  },
  {
    name = "angry",
    id = "youngman_angry"
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
    accessory = {
      {object_name = "sunglasses", node_name = "Head"}
    }
  }
}
