Light = {
  Ambient = {
    Color = {
      0.28,
      0.29,
      0.5,
      0.8
    }
  },
  Main = {
    Color = {
      0.32,
      0.32,
      0.32,
      1
    },
    Direction_3dsmax = {
      Position = {
        0.663414,
        -0.383022,
        0.642788
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
      0.18,
      0.28,
      0.35,
      1
    },
    Direction_3dsmax = {
      Position = {
        0.627507,
        0.439385,
        -0.642788
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
    0.2,
    0.2,
    0.15,
    3
  },
  BRay = {
    0.07,
    0.09,
    0.14,
    1.0E-4
  },
  BMie = {
    0.06,
    0.05,
    0.035,
    3.0E-4
  },
  G = 0.8
}
EnvMap = {
  FileName = "stage/event/ev0031/ev0031_cubemap.dds"
}
Bloom = {
  MinThreshold = 0.35,
  MaxThreshold = 3.5,
  Scale = 3.2
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
    TerrainClipDistance = 150000
  }
}
