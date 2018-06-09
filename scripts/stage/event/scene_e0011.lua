Light = {
  Ambient = {
    Color = {
      0.4,
      0.4,
      0.3,
      1.1
    }
  },
  Main = {
    Color = {
      1,
      0.75,
      0.65,
      1
    },
    Direction_3dsmax = {
      Position = {
        -0.177022,
        -0.252875,
        0.951166
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
      0.6,
      0.35,
      0.2,
      1
    },
    Direction_3dsmax = {
      Position = {
        -0.670979,
        0.470006,
        0.573482
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
    6.5,
    5.5,
    4.8,
    1.2
  },
  BRay = {
    0.45,
    0.28,
    0.15,
    7.0E-5
  },
  BMie = {
    0.48,
    0.81,
    0.91,
    1.5E-5
  },
  G = 0.9
}
EnvMap = {
  FileName = "stage/csc/a/csc_envmap.dds"
}
Bloom = {
  MinThreshold = 0.28,
  MaxThreshold = 2.8,
  Scale = 4.2
}
ReflectionAreas = {
  FileName = "stage/csc/a/csc_mapA_rfzone"
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
    TerrainClipDistance = 25000
  }
}
