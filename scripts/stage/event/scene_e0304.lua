Light = {
  Ambient = {
    Color = {
      0.48,
      0.4,
      0.47,
      0.8
    }
  },
  Main = {
    Type = "Directional",
    Color = {
      0.51,
      0.49,
      0.5,
      1.1
    },
    Direction_3dsmax = {
      Position = {
        -14000,
        -14500,
        34200
      },
      Target = {
        0,
        0,
        0
      }
    }
  },
  Sub = {
    Type = "Directional",
    Color = {
      0.5,
      0.45,
      0.48,
      0.9
    },
    Direction_3dsmax = {
      Position = {
        24500,
        12300,
        -28700
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
    10,
    8,
    10.5,
    0.8
  },
  BRay = {
    0.15,
    0.1,
    0.25,
    8.5E-6
  },
  BMie = {
    0.3,
    0.2,
    0.13,
    5.0E-4
  },
  G = 0.85
}
EnvMap = {
  FileName = "stage/event/ev0304/e0304_envmap.dds"
}
Bloom = {
  MinThreshold = 0.29,
  MaxThreshold = 2.8,
  Scale = 4.3
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
