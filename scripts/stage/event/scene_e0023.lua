Light = {
  Ambient = {
    Color = {
      0.3,
      0.35,
      0.4,
      1
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
        0.219846,
        -0.604023,
        0.766044
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
      0.5,
      0.55,
      0.7,
      1
    },
    Direction_3dsmax = {
      Position = {
        0.198267,
        0.739942,
        0.642788
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
    1.5,
    1.5,
    1,
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
  FileName = "stage/kdv/a/kdv_envmap.dds"
}
Bloom = {
  MinThreshold = 0.25,
  MaxThreshold = 3,
  Scale = 4.25
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
    TerrainClipDistance = 12500
  }
}
