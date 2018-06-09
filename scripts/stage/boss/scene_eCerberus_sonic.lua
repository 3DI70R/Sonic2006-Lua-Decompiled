Light = {
  Ambient = {
    Color = {
      0.5,
      0.45,
      0.55,
      1
    }
  },
  Main = {
    Color = {
      0.75,
      0.7,
      0.6,
      0.8
    },
    Direction_3dsmax = {
      Position = {
        -0.6462,
        -0.1137,
        0.7546
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
      0.17,
      1
    },
    Direction_3dsmax = {
      Position = {
        0.7545,
        0.1328,
        -0.6427
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
    1,
    1,
    0.7,
    8
  },
  BRay = {
    0.15,
    0.14,
    0.15,
    1.0E-4
  },
  BMie = {
    0.15,
    0.2,
    0.19,
    4.0E-5
  },
  G = 0.99
}
EnvMap = {
  FileName = "stage/dtd/a/suna_cube.dds"
}
Bloom = {
  MinThreshold = 0.28,
  MaxThreshold = 2.8,
  Scale = 4
}
script.reload("scripts/stage/dtd/dtd_lensflare.lua")
