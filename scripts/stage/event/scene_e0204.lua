Light = {
  Ambient = {
    Color = {
      0.57,
      0.6,
      0.58,
      0.85
    }
  },
  Main = {
    Color = {
      0.86,
      0.86,
      0.84,
      1.15
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
      0.42,
      0.45,
      0.48,
      0.85
    },
    Direction_3dsmax = {
      Position = {
        0.4,
        -0.3,
        -0.3
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
    13.5,
    14,
    13,
    1.1
  },
  BRay = {
    0.09,
    0.1,
    0.14,
    2.0E-5
  },
  BMie = {
    0.06,
    0.035,
    0.002,
    2.0E-5
  },
  G = 0.99
}
EnvMap = {
  FileName = "stage/twn/c/twn_c_cubemap_df_e.dds"
}
Bloom = {
  MinThreshold = 0.3,
  MaxThreshold = 3,
  Scale = 4
}
ReflectionAreas = {
  FileName = "stage/twn/c/twn_mapC_rfzone"
}
script.reload("scripts/stage/twn/twn_lensflare.lua")
ShadowMap = {
  BaseSize = 1200,
  CenterOffset = {
    0,
    0,
    1200 * 0.5
  }
}
LOD = {
  Main = {
    FarDistance = 10000,
    ClumpClipDistance = 1500000,
    TerrainClipDistance = 15000
  }
}
