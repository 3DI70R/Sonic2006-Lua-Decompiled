Light = {
  Ambient = {
    Color = {
      0.4,
      0.5,
      0.4,
      0.8
    }
  },
  Main = {
    Color = {
      0.75,
      0.4,
      0.25,
      0.9
    },
    Direction_3dsmax = {
      Position = {
        -0.342237,
        0.400304,
        0.769614
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
      0.2,
      0.15,
      1
    },
    Direction_3dsmax = {
      Position = {
        0.342237,
        -0.400101,
        -0.639614
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
    1.2,
    1.2,
    1,
    10
  },
  BRay = {
    0.2,
    0.3,
    0.3,
    1.0E-5
  },
  BMie = {
    0.7,
    0.6,
    0.66,
    1.0E-4
  },
  G = 0.99
}
EnvMap = {
  FileName = "stage/dtd/b/suna_cube.dds"
}
Bloom = {
  MinThreshold = 0.2,
  MaxThreshold = 3,
  Scale = 4.25
}
ReflectionAreas = {
  FileName = "stage/dtd/b/dtd_mapB_rfzone",
  ClumpCutoffCoverage = 1,
  SectorCutoffCoverage = 0.2
}
LightPresets = {
  Green_Main = {
    Type = "Directional",
    Color = {
      0.1,
      0.7,
      0.3,
      1
    },
    Direction_3dsmax = {
      Position = {
        0.5956,
        -0.2408,
        1.7663
      }
    }
  },
  Orange_Main = {
    Type = "Directional",
    Color = {
      0.7,
      0.55,
      0.3,
      1
    },
    Direction_3dsmax = {
      Position = {
        0.342237,
        0.400304,
        0.739614
      }
    }
  },
  Orange02_Main = {
    Type = "Directional",
    Color = {
      0.7,
      0.55,
      0.3,
      1
    },
    Direction_3dsmax = {
      Position = {
        0.342237,
        -0.400304,
        0.739614
      }
    }
  },
  dtdpoint01 = {
    Type = "Animation",
    FileName = "object/dtd/pointlight/light_dtd_mapA_red.xni"
  }
}
LOD = {
  Main = {
    FarDistance = 10000,
    ClumpClipDistance = 30000,
    TerrainClipDistance = 20000
  },
  Reflection = {FarDistance = 0, ClipDistance = 5000}
}
