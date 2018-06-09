Light = {
  Ambient = {
    Color = {
      0.55,
      0.58,
      0.6,
      0.6
    }
  },
  Main = {
    Color = {
      0.85,
      0.85,
      0.85,
      1
    },
    Direction_3dsmax = {
      Position = {
        0.044976,
        0.255123,
        0.965862
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
      0.3,
      0.32,
      0.35,
      1.4
    },
    Direction_3dsmax = {
      Position = {
        800,
        -5000,
        4000
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
    12,
    1
  },
  BRay = {
    0.1,
    0.12,
    0.18,
    6.5E-5
  },
  BMie = {
    0.35,
    0.3,
    0.01,
    2.0E-5
  },
  G = 0.9
}
EnvMap = {
  FileName = "stage/tpj/a/tpj_envmap.dds"
}
Bloom = {
  MinThreshold = 0.3,
  MaxThreshold = 2.8,
  Scale = 4.15
}
ReflectionAreas = {
  FileName = "stage/tpj/a/tpj_mapA_rfzone",
  ClumpCutoffCoverage = 0.005,
  SectorCutoffCoverage = 0.1
}
LightPresets = {
  tpj_point01 = {
    Type = "Animation",
    FileName = "object/tpj/pointlight/tpj_obj_pointlight01.xni"
  }
}
script.reload("scripts/stage/tpj/tpj_lensflare.lua")
