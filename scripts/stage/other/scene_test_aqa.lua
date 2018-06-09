Light = {
  Ambient = {
    Color = {
      0.3,
      0.325,
      0.4,
      1
    }
  },
  Main = {
    Color = {
      0.95,
      1.05,
      0.95,
      1
    },
    Direction_3dsmax = {
      Position = {
        4.54E-4,
        -0.766129,
        0.642687
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
      0.3,
      0.4,
      0.45,
      1
    },
    Direction_3dsmax = {
      Position = {
        0.43326,
        -0.249914,
        -0.865927
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
    1.2,
    1.2,
    1.2,
    10
  },
  BRay = {
    0.1,
    0.13,
    0.16,
    1.0E-4
  },
  BMie = {
    0.5,
    0.4,
    0.3,
    1.0E-4
  },
  G = 0.99
}
EnvMap = {
  FileName = "stage/csc/a/csc_envmap.dds"
}
Bloom = {
  MinThreshold = 0.35,
  MaxThreshold = 4,
  Scale = 4
}
ReflectionAreas = {
  FileName = "stage/aqa/a/aqa_mapA_rfzone"
}
LightPresets = {
  Main = {
    Type = "Directional",
    Color = {
      1,
      0,
      0,
      1
    },
    Direction_3dsmax = {
      Position = {
        0.5956,
        -0.2408,
        1.7663
      }
    }
  },
  AnimTest = {
    Type = "Animation",
    FileName = "object/kdv/windswitch/obj_switch_light.xni"
  }
}
