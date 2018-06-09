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
      1,
      0.75,
      0.65,
      1
    },
    Direction_3dsmax = {
      Position = {
        -0.077022,
        -0.452875,
        0.501166
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
        -0.67101,
        0.469846,
        0.573576
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
  FileName = "stage/aqa/a/aqa_envmap.dds"
}
Bloom = {
  MinThreshold = 0.4,
  MaxThreshold = 2.8,
  Scale = 3
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
    TerrainClipDistance = 1700
  }
}
