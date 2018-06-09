script.reload("twn/twn_mancommon.lua")
base_motion_package_name = "twn/twn_boy_motion"
man_package_name = "twn/twn_boy2"
VoiceList = {
  {name = "talk", id = "boy_normal"},
  {name = "joy", id = "boy_joy"},
  {name = "angry", id = "boy_angry"},
  {name = "sad", id = "boy_sad"},
  {
    name = "surprise",
    id = "boy_surprize"
  },
  {name = "dodge", id = "boy_dodge"},
  {name = "damage", id = "boy_dodge"},
  {name = "call", id = "boy_call"},
  {name = "clap", id = "clap"}
}
FootStepSE = "townsman_step"
AnimationVoice = {
  {
    anim_name = "body_anim_wait_naki",
    bank = "stage_twn_voice",
    id = "child_cry"
  }
}
WalkBaseSpeed = boy_walkspeed
RunBaseSpeed = boy_runspeed
RunFearBaseSpeed = boy_runfearspeed
MaxMoveSpeed = boy_runspeed * 2
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
    hair_color_no = 2,
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
    hair_color_no = 2,
    hair_model = 2,
    accessory = {}
  }
}
