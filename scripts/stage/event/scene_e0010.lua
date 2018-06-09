Light = {
  Ambient = {
    Color = {
      0.45,
      0.35,
      0.25,
      1
    }
  },
  Main = {
    Color = {
      0.8,
      0.75,
      0.65,
      1
    },
    Direction_3dsmax = {
      Position = {
        -0.239973,
        -0.096955,
        0.965926
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
      0.38,
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
  FileName = "stage/csc/a/csc_envmap.dds"
}
Bloom = {
  MinThreshold = 0.38,
  MaxThreshold = 3.5,
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
    TerrainClipDistance = 2000
  }
}
