Light = {
  Ambient = {
    Color = {
      0.34,
      0.28,
      0.35,
      0.95
    }
  },
  Main = {
    Color = {
      0.59,
      0.5,
      0.65,
      0.8
    },
    Direction_3dsmax = {
      Position = {
        -0.6042,
        -0.2197,
        0.7659
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
      0.85,
      0.3,
      0.05,
      1
    },
    Direction_3dsmax = {
      Position = {
        0.6331,
        0.1118,
        -0.7659
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
    7,
    7,
    9,
    1
  },
  BRay = {
    0.132,
    0.09,
    0.12,
    1.2E-4
  },
  BMie = {
    0.225,
    0.225,
    0.2,
    3.0E-4
  },
  G = 0.85
}
EnvMap = {
  FileName = "stage/flc/a/flcA_envmap.dds"
}
Bloom = {
  MinThreshold = 0.28,
  MaxThreshold = 2.5,
  Scale = 4
}
LightPresets = {
  Crystal_Main = {
    Type = "Directional",
    Color = {
      0.59,
      0.5,
      0.65,
      0.8
    },
    Direction_3dsmax = {
      Position = {
        -0.6042,
        -0.2197,
        0.7659
      }
    }
  },
  Crystal_Sub = {
    Type = "Directional",
    Color = {
      0.85,
      0.1,
      0.85,
      1
    },
    Direction_3dsmax = {
      Position = {
        0.6331,
        0.1118,
        -0.10659
      }
    }
  },
  Crystal_Ambient = {
    Type = "Ambient",
    Color = {
      0.34,
      0.08,
      0.32,
      1
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
ShadowMap = {
  BaseSize = 200,
  CenterOffset = {
    0,
    0,
    200 * 0.5
  }
}
LOD = {
  Main = {
    FarDistance = 10000,
    ClumpClipDistance = 1500000,
    TerrainClipDistance = 60000
  }
}
