Light = {
  Ambient = {
    Color = {
      0.3,
      0.35,
      0.37,
      1.5
    }
  },
  Main = {
    Color = {
      0.8,
      0.8,
      0.65,
      1
    },
    Direction_3dsmax = {
      Position = {
        0.5137,
        0.12855,
        0.8483
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
      0.22,
      0.37,
      0.4,
      0.8
    },
    Direction_3dsmax = {
      Position = {
        -0.4241,
        -0.12366,
        -0.5
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
    1,
    0.66,
    13
  },
  BRay = {
    0.09,
    0.13,
    0.16,
    1.0E-4
  },
  BMie = {
    0.27,
    0.28,
    0.16,
    1.0E-4
  },
  G = 0.99
}
EnvMap = {
  FileName = "stage/kdv/d/kdv_envmap.dds"
}
Bloom = {
  MinThreshold = 0.28,
  MaxThreshold = 2.8,
  Scale = 4
}
ReflectionAreas = {
  FileName = "stage/kdv/d/kdv_mapD_rfzone",
  ClumpCutoffCoverage = 1,
  SectorCutoffCoverage = 0.2
}
LightPresets = {
  Orange_Main = {
    Type = "Directional",
    Color = {
      0.7,
      0.7,
      0.55,
      0.8
    },
    Direction_3dsmax = {
      Position = {
        0.5137,
        0.12855,
        0.8483
      }
    }
  },
  Orange_Sub = {
    Type = "Directional",
    Color = {
      0.22,
      0.37,
      0.4,
      0.5
    },
    Direction_3dsmax = {
      Position = {
        -0.4241,
        -0.12366,
        -0.5
      }
    }
  },
  Orange_Ambient = {
    Type = "Ambient",
    Color = {
      0.3,
      0.35,
      0.37,
      0.9
    },
    Direction_3dsmax = {
      Position = {
        0.342237,
        -0.400101,
        -0.639614
      }
    }
  }
}
