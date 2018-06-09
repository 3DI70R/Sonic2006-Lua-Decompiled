Light = {
  Ambient = {
    Color = {
      0.3,
      0.35,
      0.37,
      1.1
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
        0.662003,
        -0.719846,
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
      0.22,
      0.37,
      0.4,
      0.7
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
    1,
    1,
    0.66,
    13
  },
  BRay = {
    0.09,
    0.13,
    0.16,
    3.8E-5
  },
  BMie = {
    0.33,
    0.5,
    0.16,
    3.3E-5
  },
  G = 0.75
}
EnvMap = {
  FileName = "stage/kdv/a/kdv_envmap.dds"
}
Bloom = {
  MinThreshold = 0.28,
  MaxThreshold = 2.28,
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
