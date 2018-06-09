Light = {
  Ambient = {
    Color = {
      0.35,
      0.4,
      0.45,
      0.75
    }
  },
  Main = {
    Color = {
      0.55,
      0.6,
      0.75,
      1
    },
    Direction_3dsmax = {
      Position = {
        0.6,
        -0.35,
        0.63
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
      0.2,
      0.95
    },
    Direction_3dsmax = {
      Position = {
        -0.4,
        0.6,
        0.5
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
    1.1,
    1.1,
    1.1,
    10
  },
  BRay = {
    0.18,
    0.25,
    0.3,
    1.0E-4
  },
  BMie = {
    0.4,
    0.4,
    0.3,
    1.0E-4
  },
  G = 0.99
}
EnvMap = {
  FileName = "stage/boss/dr1_wap/wap_envmap.dds"
}
Bloom = {
  MinThreshold = 0.35,
  MaxThreshold = 2.5,
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
    TerrainClipDistance = 10000
  }
}
