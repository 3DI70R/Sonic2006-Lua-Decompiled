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
    1.2,
    10
  },
  BRay = {
    0.08,
    0.12,
    0.15,
    4.0E-5
  },
  BMie = {
    0.15,
    0.16,
    0.12,
    4.0E-5
  },
  G = 0.99
}
EnvMap = {
  FileName = "stage/twn/circuit/twn_r_cubemap_df_e.dds"
}
Bloom = {
  MinThreshold = 0.29,
  MaxThreshold = 3.9,
  Scale = 3.9
}
script.reload("scripts/stage/twn/twn_lensflare.lua")
