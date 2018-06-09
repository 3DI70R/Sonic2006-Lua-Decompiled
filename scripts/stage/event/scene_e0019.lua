Light = {
  Ambient = {
    Color = {
      0.5,
      0.5,
      0.485,
      1
    }
  },
  Main = {
    Color = {
      1,
      1,
      0.95,
      1
    },
    Direction_3dsmax = {
      Position = {
        -0.47,
        -0.15,
        0.7
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
    1,
    10
  },
  BRay = {
    0.08,
    0.12,
    0.15,
    3.0E-5
  },
  BMie = {
    0.19,
    0.18,
    0.1,
    5.1E-5
  },
  G = 0.99
}
EnvMap = {
  FileName = "stage/twn/c/twn_c_cubemap_df_e.dds"
}
Bloom = {
  MinThreshold = 0.2,
  MaxThreshold = 4,
  Scale = 3
}
ReflectionAreas = {
  FileName = "stage/twn/c/twn_mapC_rfzone"
}
script.reload("scripts/stage/twn/twn_lensflare.lua")
ShadowMap = {
  BaseSize = 1000,
  CenterOffset = {
    0,
    0,
    1000 * 0.5
  }
}
LOD = {
  Main = {
    FarDistance = 10000,
    ClumpClipDistance = 1500000,
    TerrainClipDistance = 50000
  }
}
