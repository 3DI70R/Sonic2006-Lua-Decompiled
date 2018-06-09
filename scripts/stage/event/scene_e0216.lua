Light = {
  Ambient = {
    Color = {
      0.48,
      0.49,
      0.5,
      0.75
    }
  },
  Main = {
    Color = {
      0.73,
      0.73,
      0.74,
      1
    },
    Direction_3dsmax = {
      Position = {
        -0.383022,
        0.663414,
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
      0.28,
      0.29,
      0.3,
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
    12,
    12,
    10,
    1
  },
  BRay = {
    0.07,
    0.09,
    0.14,
    1.0E-4
  },
  BMie = {
    0.06,
    0.06,
    0.04,
    1.0E-4
  },
  G = 0.8
}
EnvMap = {
  FileName = "stage/wvo/a/wvo_envmap.dds"
}
Bloom = {
  MinThreshold = 0.35,
  MaxThreshold = 2.8,
  Scale = 4
}
script.reload("scripts/stage/event/event_lensflare.lua")
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
