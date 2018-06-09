script.reload("twn/twn_mancommon.lua")
base_motion_package_name = "twn/twn_youngman_motion"
man_package_name = "twn/twn_youngman"
EquipmentItem = {
  {
    object_name = "glasses",
    package_name = "twn/twn_item_glasses04"
  },
  {
    object_name = "coffeecup",
    package_name = "twn/twn_item_coffeecup01"
  },
  {
    object_name = "newspaper",
    package_name = "twn/twn_item_newspaper01"
  }
}
HandItem = {
  {
    anim_name = "body_anim_sit_drink",
    object_name = "coffeecup",
    node_name = "RightHand"
  },
  {
    anim_name = "body_anim_sit_read",
    object_name = "newspaper",
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
      {object_name = "glasses", node_name = "Head"}
    }
  },
  {
    body_color_no = 1,
    face_color_no = 0,
    hair_color_no = 1,
    hair_model = 0,
    accessory = {}
  },
  {
    body_color_no = 2,
    face_color_no = 0,
    hair_color_no = 2,
    hair_model = 1,
    accessory = {}
  },
  {
    body_color_no = 0,
    face_color_no = 0,
    hair_color_no = 0,
    hair_model = 0,
    accessory = {
      {object_name = "glasses", node_name = "Head"}
    }
  },
  {
    body_color_no = 1,
    face_color_no = 0,
    hair_color_no = 1,
    hair_model = 0,
    accessory = {}
  },
  {
    body_color_no = 2,
    face_color_no = 0,
    hair_color_no = 2,
    hair_model = 1,
    accessory = {}
  },
  {
    body_color_no = 0,
    face_color_no = 0,
    hair_color_no = 0,
    hair_model = 0,
    accessory = {
      {object_name = "glasses", node_name = "Head"}
    }
  },
  {
    body_color_no = 1,
    face_color_no = 0,
    hair_color_no = 1,
    hair_model = 0,
    accessory = {}
  },
  {
    body_color_no = 2,
    face_color_no = 0,
    hair_color_no = 2,
    hair_model = 1,
    accessory = {}
  }
}
