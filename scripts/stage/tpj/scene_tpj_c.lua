Light = {
  Ambient = {
    Color = {
      0.55,
      0.55,
      0.55,
      1
    }
  },
  Main = {
    Color = {
      0.86,
      0.85,
      0.8,
      1
    },
    Direction_3dsmax = {
      Position = {
        0.250043,
        0.433186,
        0.865927
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
      0.4,
      0.5,
      1
    },
    Direction_3dsmax = {
      Position = {
        -0.383456,
        -0.82123,
        0.422544
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
    14,
    14,
    13,
    1
  },
  BRay = {
    1.1E-5,
    9.0E-6,
    2.3E-5,
    1
  },
  BMie = {
    2.5E-6,
    8.0E-7,
    1.5E-6,
    1
  },
  G = 0.99
}
EnvMap = {
  FileName = "stage/tpj/c/tpjC_envmap.dds"
}
Bloom = {
  MinThreshold = 0.38,
  MaxThreshold = 2.85,
  Scale = 4
}
ReflectionAreas = {
  FileName = "stage/tpj/c/tpj_mapC_rfzone",
  ClumpCutoffCoverage = 0.2,
  SectorCutoffCoverage = 0.2
}
script.reload("scripts/stage/tpj/tpj_lensflare.lua")
