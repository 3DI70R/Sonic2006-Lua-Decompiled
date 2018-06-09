script.reload("twn/twn_mancommon.lua")
base_motion_package_name = "twn/twn_man_motion"
man_package_name = "twn/twn_black3"
EquipmentItem = {
  {
    object_name = "sunglasses",
    package_name = "twn/twn_item_sunglasses05"
  }
}
VoiceList = {
  {
    name = "talk",
    id = "middleman_normal"
  },
  {
    name = "joy",
    id = "middleman_joy"
  },
  {
    name = "angry",
    id = "middleman_angry"
  },
  {
    name = "sad",
    id = "middleman_sad"
  },
  {
    name = "surprise",
    id = "middleman_surprize"
  },
  {
    name = "dodge",
    id = "middleman_dodge"
  },
  {
    name = "damage",
    id = "middleman_dodge"
  },
  {
    name = "call",
    id = "middleman_call"
  },
  {name = "clap", id = "clap"}
}
FootStepSE = "townsman_step"
WalkBaseSpeed = man_walkspeed
RunBaseSpeed = man_runspeed
RunFearBaseSpeed = man_runfearspeed
MaxMoveSpeed = man_runspeed * 2
ModelVariation = {
  {
    body_color_no = 0,
    face_color_no = 0,
    hair_color_no = 0,
    hair_model = -1,
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
    body_color_no = 2,
    face_color_no = 0,
    hair_color_no = 0,
    hair_model = -1,
    accessory = {
      {object_name = "sunglasses", node_name = "Head"}
    }
  },
  {
    body_color_no = 0,
    face_color_no = 0,
    hair_color_no = 0,
    hair_model = -1,
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
    body_color_no = 2,
    face_color_no = 0,
    hair_color_no = 0,
    hair_model = -1,
    accessory = {
      {object_name = "sunglasses", node_name = "Head"}
    }
  },
  {
    body_color_no = 0,
    face_color_no = 0,
    hair_color_no = 0,
    hair_model = -1,
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
    body_color_no = 2,
    face_color_no = 0,
    hair_color_no = 0,
    hair_model = -1,
    accessory = {
      {object_name = "sunglasses", node_name = "Head"}
    }
  }
}
