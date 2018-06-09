script.reload("twn/twn_mancommon.lua")
base_motion_package_name = "twn/twn_kids_motion"
man_package_name = "twn/twn_kids2"
VoiceList = {
  {
    name = "talk",
    id = "child_normal"
  },
  {name = "joy", id = "child_joy"},
  {
    name = "angry",
    id = "child_angry"
  },
  {name = "sad", id = "child_sad"},
  {
    name = "surprise",
    id = "child_surprize"
  },
  {
    name = "dodge",
    id = "child_dodge"
  },
  {
    name = "damage",
    id = "child_dodge"
  },
  {name = "call", id = "child_call"},
  {name = "clap", id = "clap"}
}
FootStepSE = "child_walk"
AnimationVoice = {
  {
    anim_name = "body_anim_wait_naki",
    bank = "stage_twn_voice",
    id = "child_cry"
  }
}
WalkBaseSpeed = kids_walkspeed
RunBaseSpeed = kids_runspeed
RunFearBaseSpeed = kids_runfearspeed
MaxMoveSpeed = kids_runspeed * 2
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
    hair_color_no = 0,
    hair_model = 2,
    accessory = {}
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
    hair_color_no = 0,
    hair_model = 2,
    accessory = {}
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
    hair_color_no = 0,
    hair_model = 2,
    accessory = {}
  }
}
