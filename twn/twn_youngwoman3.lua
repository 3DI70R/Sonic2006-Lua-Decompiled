script.reload("twn/twn_mancommon.lua")
base_motion_package_name = "twn/twn_youngwoman_motion"
man_package_name = "twn/twn_youngwoman3"
EquipmentItem = {
  {
    object_name = "glasses",
    package_name = "twn/twn_item_glasses06"
  },
  {
    object_name = "coffeecup",
    package_name = "twn/twn_item_coffeecup02"
  }
}
HandItem = {
  {
    anim_name = "body_anim_sit_drink",
    object_name = "coffeecup",
    node_name = "RightHand"
  }
}
VoiceList = {
  {
    name = "talk",
    id = "youngwoman_normal"
  },
  {
    name = "joy",
    id = "youngwoman_joy"
  },
  {
    name = "angry",
    id = "youngwoman_angry"
  },
  {
    name = "sad",
    id = "youngwoman_sad"
  },
  {
    name = "surprise",
    id = "youngwoman_surprize"
  },
  {
    name = "dodge",
    id = "youngwoman_dodge"
  },
  {
    name = "damage",
    id = "youngwoman_dodge"
  },
  {
    name = "call",
    id = "youngwoman_call"
  },
  {name = "clap", id = "clap"}
}
FootStepSE = "townswoman_step"
WalkBaseSpeed = youngwoman_walkspeed
RunBaseSpeed = youngwoman_runspeed
RunFearBaseSpeed = youngwoman_runfearspeed
MaxMoveSpeed = youngwoman_runspeed * 2
ModelVariation = {
  {
    body_color_no = 0,
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
    accessory = {
      {object_name = "glasses", node_name = "Head"}
    }
  },
  {
    body_color_no = 2,
    face_color_no = 0,
    hair_color_no = 0,
    hair_model = 1,
    accessory = {}
  },
  {
    body_color_no = 0,
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
    accessory = {
      {object_name = "glasses", node_name = "Head"}
    }
  },
  {
    body_color_no = 2,
    face_color_no = 0,
    hair_color_no = 0,
    hair_model = 1,
    accessory = {}
  },
  {
    body_color_no = 0,
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
    accessory = {
      {object_name = "glasses", node_name = "Head"}
    }
  },
  {
    body_color_no = 2,
    face_color_no = 0,
    hair_color_no = 0,
    hair_model = 1,
    accessory = {}
  }
}
