Light = {
  Ambient = {
    Color = {
      0.36,
      0.36,
      0.37,
      1
    }
  },
  Main = {
    Color = {
      0.9,
      0.87,
      1,
      0.8
    },
    Direction_3dsmax = {
      Position = {
        -0.01,
        -0.09,
        0.1
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
      0.38,
      0.35,
      0.45,
      1.5
    },
    Direction_3dsmax = {
      Position = {
        -0.336824,
        -0.925417,
        -0.07
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
    1.5,
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
  FileName = "stage/wvo/a/wvo_envmap.dds"
}
Bloom = {
  MinThreshold = 0.35,
  MaxThreshold = 3.5,
  Scale = 4.35
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
