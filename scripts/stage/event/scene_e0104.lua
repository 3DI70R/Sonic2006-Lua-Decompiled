Light = {
  Ambient = {
    Color = {
      0.3,
      0.3,
      0.3,
      1
    }
  },
  Main = {
    Type = "Directional",
    Color = {
      0.7,
      0.7,
      0.7,
      1.5
    },
    Direction_3dsmax = {
      Position = {
        -0.05,
        -0.18,
        0.205
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
      0.45,
      1
    },
    Direction = {
      -0.168,
      0.75,
      -0.77
    }
  }
}
OLS = {
  SunColor = {
    1,
    1,
    0.66,
    15
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
  MaxThreshold = 15,
  Scale = 4.25
}
ShadowMap = {
  BaseSize = 600,
  CenterOffset = {
    0,
    0,
    600 * 0.5
  }
}
LOD = {
  Main = {
    FarDistance = 10000,
    ClumpClipDistance = 1500000,
    TerrainClipDistance = 5000
  }
}
