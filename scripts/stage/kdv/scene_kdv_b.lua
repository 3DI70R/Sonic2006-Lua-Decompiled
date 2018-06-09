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
        -0.9977,
        0.3,
        1.1962
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
      0.6
    },
    Direction_3dsmax = {
      Position = {
        0.9241,
        -0.366,
        -0.6
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
  FileName = "stage/kdv/b/kdv_envmap.dds"
}
Bloom = {
  MinThreshold = 0.28,
  MaxThreshold = 2.8,
  Scale = 4
}
ReflectionAreas = {
  FileName = "stage/kdv/b/kdv_mapB_rfzone",
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
        -0.9977,
        0.3,
        1.1962
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
        0.9241,
        -0.366,
        -0.6
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
  },
  kdvpoint01 = {
    Type = "Animation",
    FileName = "object/kdv/pointlight/light_kdv_fireS.xni"
  },
  kdvpoint02 = {
    Type = "Animation",
    FileName = "object/kdv/pointlight/light_kdv_fireM.xni"
  }
}
