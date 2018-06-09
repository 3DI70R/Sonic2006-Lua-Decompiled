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
      1,
      1
    },
    Direction_3dsmax = {
      Position = {
        -0.077,
        -0.45,
        0.4
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
      0.5,
      0.5,
      1
    },
    Direction_3dsmax = {
      Position = {
        -0.67,
        0.47,
        0.17
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
    0.6,
    0.45,
    0.45,
    10
  },
  BRay = {
    0.3,
    0.3,
    0.2,
    1.0E-4
  },
  BMie = {
    0.52,
    0.31,
    0.11,
    1.0E-5
  },
  G = 0.7
}
EnvMap = {
  FileName = "stage/csc/a/csc_envmap.dds"
}
Bloom = {
  MinThreshold = 0.4,
  MaxThreshold = 2.8,
  Scale = 3
}
ShadowMap = {
  BaseSize = 150,
  CenterOffset = {
    0,
    0,
    150 * 0.5
  }
}
LOD = {
  Main = {
    FarDistance = 10000,
    ClumpClipDistance = 1500000,
    TerrainClipDistance = 1000
  }
}
