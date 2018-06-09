script.reload("twn/twn_mancommon.lua")
base_motion_package_name = "twn/twn_oldman_motion"
man_package_name = "twn/twn_oldman2"
EquipmentItem = {
  {
    object_name = "glasses",
    package_name = "twn/twn_item_glasses10"
  }
}
VoiceList = {
  {
    name = "talk",
    id = "oldman_normal"
  },
  {name = "joy", id = "oldman_joy"},
  {
    name = "angry",
    id = "oldman_angry"
  },
  {name = "sad", id = "oldman_sad"},
  {
    name = "surprise",
    id = "oldman_surprize"
  },
  {
    name = "dodge",
    id = "oldman_dodge"
  },
  {
    name = "damage",
    id = "oldman_dodge"
  },
  {
    name = "call",
    id = "oldman_call"
  },
  {name = "clap", id = "clap"}
}
FootStepSE = "townsman_step"
WalkBaseSpeed = oldman_walkspeed
RunBaseSpeed = oldman_runspeed
RunFearBaseSpeed = oldman_runfearspeed
MaxMoveSpeed = oldman_runspeed * 2
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
    hair_color_no = 0,
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
    hair_color_no = 0,
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
    hair_color_no = 0,
    hair_model = 1,
    accessory = {}
  }
}
