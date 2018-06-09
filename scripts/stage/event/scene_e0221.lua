Light = {
  Ambient = {
    Color = {
      0.28,
      0.3,
      0.33,
      1
    }
  },
  Main = {
    Color = {
      0.78,
      0.74,
      0.65,
      0.9
    },
    Direction_3dsmax = {
      Position = {
        0,
        0,
        1.5
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
      0.2,
      0.19,
      1
    },
    Direction_3dsmax = {
      Position = {
        -0.336824,
        -0.925417,
        -0.173648
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
  MinThreshold = 0.3,
  MaxThreshold = 3.1,
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
    TerrainClipDistance = 1000
  }
}
