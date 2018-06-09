Light = {
  Ambient = {
    Color = {
      0.48,
      0.49,
      0.5,
      1.1
    }
  },
  Main = {
    Color = {
      0.92,
      0.92,
      0.92,
      0.85
    },
    Direction_3dsmax = {
      Position = {
        0.316847,
        0.127879,
        0.939816
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
      0.18,
      0.28,
      0.35,
      1
    },
    Direction_3dsmax = {
      Position = {
        0.470259,
        -0.813585,
        -0.341958
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
    0.92,
    13
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
    0.05,
    1.0E-4
  },
  G = 0.99
}
EnvMap = {
  FileName = "stage/wvo/a/wvo_envmap.dds"
}
Bloom = {
  MinThreshold = 0.42,
  MaxThreshold = 3,
  Scale = 3.85
}
LOD = {
  Main = {FarDistance = 140000}
}
script.reload("scripts/stage/wvo/wvo_lensflare.lua")
