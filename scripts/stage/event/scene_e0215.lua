Light = {
  Ambient = {
    Color = {
      0.4,
      0.6,
      0.7,
      0.3
    }
  },
  Main = {
    Color = {
      1,
      1,
      1,
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
      0.5,
      0.55,
      0.7,
      1
    },
    Direction_3dsmax = {
      Position = {
        0.198267,
        0.739942,
        0.642788
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
    1.2,
    10
  },
  BRay = {
    0.09,
    0.12,
    0.18,
    1.0E-4
  },
  BMie = {
    0.1,
    0.13,
    0.16,
    1.0E-4
  },
  G = 0.99
}
EnvMap = {
  FileName = "stage/twn/b/twn_n_cubemap_df_e.dds"
}
Bloom = {
  MinThreshold = 0.2,
  MaxThreshold = 4,
  Scale = 2
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
