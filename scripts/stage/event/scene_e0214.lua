Light = {
  Ambient = {
    Color = {
      0.35,
      0.38,
      0.4,
      1
    }
  },
  Main = {
    Color = {
      0.85,
      0.85,
      0.85,
      0.8
    },
    Direction_3dsmax = {
      Position = {
        0.044976,
        0.255123,
        0.965862
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
      0.3,
      0.35,
      1
    },
    Direction_3dsmax = {
      Position = {
        -0.086397,
        -0.981016,
        -0.173616
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
    1,
    10
  },
  BRay = {
    0.13,
    0.1,
    0.18,
    1.0E-4
  },
  BMie = {
    0.208,
    0.12,
    0.08,
    1.0E-4
  },
  G = 0.99
}
EnvMap = {
  FileName = "stage/aqa/a/aqa_envmap.dds"
}
Bloom = {
  MinThreshold = 0.35,
  MaxThreshold = 3,
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
    TerrainClipDistance = 5000
  }
}
