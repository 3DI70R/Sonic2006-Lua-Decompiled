script.reload("twn/twn_mancommon.lua")
base_motion_package_name = "twn/twn_oldman_motion"
man_package_name = "twn/twn_oldwoman2"
EquipmentItem = {
  {
    object_name = "glasses",
    package_name = "twn/twn_item_glasses11"
  }
}
VoiceList = {
  {
    name = "talk",
    id = "oldwoman_normal"
  },
  {
    name = "joy",
    id = "oldwoman_joy"
  },
  {
    name = "angry",
    id = "oldwoman_angry"
  },
  {
    name = "sad",
    id = "oldwoman_sad"
  },
  {
    name = "surprise",
    id = "oldwoman_surprize"
  },
  {
    name = "dodge",
    id = "oldwoman_dodge"
  },
  {
    name = "damage",
    id = "oldwoman_dodge"
  },
  {
    name = "call",
    id = "oldwoman_call"
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
    hair_model = 1,
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
    body_color_no = 2,
    face_color_no = 0,
    hair_color_no = 2,
    hair_model = 0,
    accessory = {
      {object_name = "glasses", node_name = "Head"}
    }
  },
  {
    body_color_no = 0,
    face_color_no = 0,
    hair_color_no = 0,
    hair_model = 1,
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
    body_color_no = 2,
    face_color_no = 0,
    hair_color_no = 2,
    hair_model = 0,
    accessory = {
      {object_name = "glasses", node_name = "Head"}
    }
  },
  {
    body_color_no = 0,
    face_color_no = 0,
    hair_color_no = 0,
    hair_model = 1,
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
    body_color_no = 2,
    face_color_no = 0,
    hair_color_no = 2,
    hair_model = 0,
    accessory = {
      {object_name = "glasses", node_name = "Head"}
    }
  }
}
