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
        0.5956,
        -0.2408,
        0.7663
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
      0.7
    },
    Direction_3dsmax = {
      Position = {
        -0.4983,
        0.24,
        -0.6427
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
  FileName = "stage/kdv/a/kdv_envmap.dds"
}
Bloom = {
  MinThreshold = 0.28,
  MaxThreshold = 2.8,
  Scale = 4
}
ReflectionAreas = {
  FileName = "stage/kdv/a/kdv_mapA_rfzone",
  ClumpCutoffCoverage = 1,
  SectorCutoffCoverage = 0.2
}
LightPresets = {
  kdvpoint01 = {
    Type = "Animation",
    FileName = "object/kdv/pointlight/light_kdv_fireS.xni"
  },
  kdvpoint02 = {
    Type = "Animation",
    FileName = "object/kdv/pointlight/light_kdv_fireM.xni"
  }
}
