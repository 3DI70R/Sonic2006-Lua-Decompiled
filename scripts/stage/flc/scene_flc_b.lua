Light = {
  Ambient = {
    Color = {
      0.4,
      0.34,
      0.38,
      0.6
    }
  },
  Main = {
    Color = {
      0.54,
      0.54,
      0.52,
      1.1
    },
    Direction_3dsmax = {
      Position = {
        -59200,
        -22400,
        76600
      },
      Target = {
        0,
        0,
        0
      }
    }
  },
  Sub = {
    Color = {
      0.5,
      0.15,
      0.05,
      1
    },
    Direction_3dsmax = {
      Position = {
        0.41637,
        0.07353,
        -0.90622
      },
      Target = {
        0,
        0,
        0
      }
    }
  }
}
OLS = {
  SunColor = {
    1,
    0.9,
    1.1,
    10
  },
  BRay = {
    0.15,
    0.088,
    0.132,
    1.0E-4
  },
  BMie = {
    0.15,
    0.18,
    0.12,
    5.0E-4
  },
  G = 0.8
}
EnvMap = {
  FileName = "stage/flc/b/flcB_envmap.dds"
}
Bloom = {
  MinThreshold = 0.2,
  MaxThreshold = 2.5,
  Scale = 4.3
}
LightPresets = {
  DarkA_Main = {
    Type = "Directional",
    Color = {
      0.59,
      0.5,
      0.65,
      0.04
    },
    Direction_3dsmax = {
      Position = {
        0.4331,
        0.2502,
        0.8659
      }
    }
  },
  DarkA_Sub = {
    Type = "Directional",
    Color = {
      0.85,
      0.3,
      0.05,
      0.4
    },
    Direction_3dsmax = {
      Position = {
        0.41637,
        0.07353,
        -0.90622
      }
    }
  },
  DarkA_Ambient = {
    Type = "Ambient",
    Color = {
      0.42,
      0.34,
      0.52,
      0.25
    },
    Direction_3dsmax = {
      Position = {
        0,
        0,
        0
      }
    }
  },
  DarkB_Main = {
    Type = "Directional",
    Color = {
      1.2,
      0.5,
      0.6,
      0.25
    },
    Direction_3dsmax = {
      Position = {
        0.4331,
        0.2502,
        0.8659
      }
    }
  },
  DarkB_Sub = {
    Type = "Directional",
    Color = {
      0.85,
      0.3,
      0.05,
      0.8
    },
    Direction_3dsmax = {
      Position = {
        0.41637,
        0.07353,
        -0.90622
      }
    }
  },
  DarkB_Ambient = {
    Type = "Ambient",
    Color = {
      0.42,
      0.34,
      0.52,
      0.1
    },
    Direction_3dsmax = {
      Position = {
        0,
        0,
        0
      }
    }
  },
  flc_point01 = {
    Type = "Animation",
    FileName = "object/flc/pointlight/flc_obj_pointlight01.xni"
  },
  flc_point02 = {
    Type = "Animation",
    FileName = "object/flc/pointlight/flc_obj_pointlight02.xni"
  },
  flc_point03 = {
    Type = "Animation",
    FileName = "object/flc/pointlight/flc_obj_pointlight03.xni"
  },
  flc_point04 = {
    Type = "Animation",
    FileName = "object/flc/pointlight/flc_obj_pointlight04.xni"
  }
}
