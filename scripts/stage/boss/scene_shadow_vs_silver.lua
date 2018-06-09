Light = {
  Ambient = {
    Color = {
      0.32,
      0.39,
      0.44,
      1.2
    }
  },
  Main = {
    Color = {
      0.62,
      0.6,
      0.52,
      1.3
    },
    Direction_3dsmax = {
      Position = {
        0.62,
        -0.45,
        0.78
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
      0.37,
      0.32,
      0.28,
      1
    },
    Direction_3dsmax = {
      Position = {
        -0.2,
        0.43,
        0.4
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
    9,
    10.5,
    11.5,
    0.8
  },
  BRay = {
    0.2,
    0.22,
    0.25,
    1.6E-4
  },
  BMie = {
    0.3,
    0.3,
    0.3,
    5.0E-5
  },
  G = 0.89
}
EnvMap = {
  FileName = "stage/boss/charaboss2_rct/rct_envmap.dds"
}
Bloom = {
  MinThreshold = 0.25,
  MaxThreshold = 2.8,
  Scale = 4
}
script.reload("scripts/stage/rct/rct_lensflare.lua")
