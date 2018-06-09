Light = {
  Ambient = {
    Color = {
      0.4,
      0.4,
      0.38,
      0.8
    }
  },
  Main = {
    Color = {
      0.85,
      0.85,
      0.85,
      0.88
    },
    Direction_3dsmax = {
      Position = {
        -0.262003,
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
      0.2,
      0.2,
      0.2,
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
    1.3,
    1.3,
    1,
    10
  },
  BRay = {
    0.3,
    0.4,
    0.5,
    1.0E-5
  },
  BMie = {
    0.39,
    0.39,
    0.28,
    1.0E-5
  },
  G = 0.8
}
EnvMap = {
  FileName = "stage/tpj/a/tpj_envmap.dds"
}
Bloom = {
  MinThreshold = 0.28,
  MaxThreshold = 2.8,
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
    TerrainClipDistance = 7500
  }
}
