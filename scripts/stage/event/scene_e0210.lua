Light = {
  Ambient = {
    Color = {
      0.61,
      0.63,
      0.7,
      0.75
    }
  },
  Main = {
    Color = {
      0.85,
      0.85,
      0.83,
      0.9
    },
    Direction_3dsmax = {
      Position = {
        -0.2,
        -0.25,
        0.5
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
      0.468,
      0.8
    },
    Direction_3dsmax = {
      Position = {
        -0.5,
        0.26,
        -0.6
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
    13,
    13.8,
    14,
    1
  },
  BRay = {
    0.09,
    0.1,
    0.14,
    8.0E-5
  },
  BMie = {
    0.08,
    0.035,
    0.02,
    1.2E-4
  },
  G = 0.85
}
EnvMap = {
  FileName = "stage/twn/a/twn_a_cubemap_df_e.dds"
}
Bloom = {
  MinThreshold = 0.36,
  MaxThreshold = 3.4,
  Scale = 4
}
script.reload("scripts/stage/twn/twn_lensflare.lua")
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
    TerrainClipDistance = 20000
  }
}
