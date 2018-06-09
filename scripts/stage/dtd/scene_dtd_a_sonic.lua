Light = {
  Ambient = {
    Color = {
      0.45,
      0.45,
      0.58,
      0.9
    }
  },
  Main = {
    Color = {
      0.8,
      0.7,
      0.4,
      1.1
    },
    Direction_3dsmax = {
      Position = {
        -0.4977,
        -0.104,
        0.2781
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
      0.3,
      0.9
    },
    Direction_3dsmax = {
      Position = {
        0.4941,
        0.104,
        0.27
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
    0.18,
    0.14,
    0.12,
    1.0E-4
  },
  BMie = {
    0.13,
    0.18,
    0.2,
    4.0E-5
  },
  G = 0.97
}
EnvMap = {
  FileName = "stage/dtd/a/suna_cube.dds"
}
Bloom = {
  MinThreshold = 0.3,
  MaxThreshold = 3,
  Scale = 4
}
script.reload("scripts/stage/dtd/dtd_lensflare.lua")
LightPresets = {
  dtdpoint01 = {
    Type = "Animation",
    FileName = "object/dtd/pointlight/light_dtd_mapA_red.xni"
  }
}
LOD = {
  Main = {FarDistance = 70000}
}
