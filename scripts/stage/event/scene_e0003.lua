Light = {
  Ambient = {
    Color = {
      0.35,
      0.33,
      0.28,
      1.3
    }
  },
  Main = {
    Color = {
      0.8,
      0.7,
      0.6,
      0.95
    },
    Direction_3dsmax = {
      Position = {
        0.816035,
        -0.071394,
        0.573576
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
      0.2,
      0.3,
      0.25,
      1
    },
    Direction_3dsmax = {
      Position = {
        -0.571394,
        0.04999,
        -0.819152
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
    0.8,
    10
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
    0.12,
    1.0E-4
  },
  G = 0.99
}
EnvMap = {
  FileName = "stage/dtd/b/suna_cube.dds"
}
Bloom = {
  MinThreshold = 0.28,
  MaxThreshold = 2.8,
  Scale = 4
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
    TerrainClipDistance = 4000
  }
}
