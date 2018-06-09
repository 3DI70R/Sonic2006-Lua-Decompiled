script.reload("twn/twn_mancommon.lua")
base_motion_package_name = "twn/twn_youngman_motion"
man_package_name = "twn/twn_priest"
EquipmentItem = {
  {
    object_name = "glasses",
    package_name = "twn/twn_item_glasses03"
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
    body_color_no = 0,
    face_color_no = 0,
    hair_color_no = 1,
    hair_model = 0,
    accessory = {}
  },
  {
    body_color_no = 0,
    face_color_no = 0,
    hair_color_no = 2,
    hair_model = 0,
    accessory = {}
  },
  {
    body_color_no = 1,
    face_color_no = 0,
    hair_color_no = 0,
    hair_model = 0,
    accessory = {}
  },
  {
    body_color_no = 1,
    face_color_no = 0,
    hair_color_no = 1,
    hair_model = 0,
    accessory = {}
  },
  {
    body_color_no = 1,
    face_color_no = 0,
    hair_color_no = 2,
    hair_model = 0,
    accessory = {}
  },
  {
    body_color_no = 2,
    face_color_no = 0,
    hair_color_no = 0,
    hair_model = 0,
    accessory = {}
  },
  {
    body_color_no = 2,
    face_color_no = 0,
    hair_color_no = 1,
    hair_model = 0,
    accessory = {}
  },
  {
    body_color_no = 2,
    face_color_no = 0,
    hair_model = 0,
    hair_color_no = 2,
    accessory = {}
  }
}
