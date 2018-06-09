Light = {
  Ambient = {
    Color = {
      0.63,
      0.65,
      0.65,
      0.76
    }
  },
  Main = {
    Color = {
      0.9,
      0.9,
      0.88,
      1
    },
    Direction_3dsmax = {
      Position = {
        0.2,
        -0.5,
        1
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
      0.4,
      0.85
    },
    Direction_3dsmax = {
      Position = {
        -0.18,
        0.5,
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
    15,
    15,
    13,
    1
  },
  BRay = {
    0.09,
    0.1,
    0.1,
    1.0E-4
  },
  BMie = {
    0.07,
    0.06,
    0.02,
    1.0E-4
  },
  G = 0.85
}
EnvMap = {
  FileName = "stage/twn/b/twn_n_cubemap_df_e.dds"
}
Bloom = {
  MinThreshold = 0.45,
  MaxThreshold = 3.8,
  Scale = 3.9
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
    TerrainClipDistance = 30000
  }
}
