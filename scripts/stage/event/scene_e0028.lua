Light = {
  Ambient = {
    Color = {
      0.4,
      0.4,
      0.3,
      1
    }
  },
  Main = {
    Color = {
      0.75,
      0.75,
      0.75,
      1
    },
    Direction_3dsmax = {
      Position = {
        -0.14,
        -0.3,
        0.52
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
      0.4,
      0.4,
      0.4,
      1
    },
    Direction_3dsmax = {
      Position = {
        0.14,
        0.3,
        0.4
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
    1,
    10
  },
  BRay = {
    2,
    2,
    2,
    3.0E-6
  },
  BMie = {
    0.05,
    0.03,
    0.01,
    3.0E-4
  },
  G = 0.85
}
EnvMap = {
  FileName = "stage/aqa/a/aqa_envmap.dds"
}
Bloom = {
  MinThreshold = 0.25,
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
    TerrainClipDistance = 100000
  }
}
