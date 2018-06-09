Light = {
  Ambient = {
    Color = {
      0.35,
      0.35,
      0.46,
      1
    }
  },
  Main = {
    Color = {
      0.5,
      0.7,
      0.8,
      1
    },
    Direction_3dsmax = {
      Position = {
        0,
        0,
        0.6
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
      0.3,
      0.25,
      1
    },
    Direction_3dsmax = {
      Position = {
        -0.30026,
        0.309914,
        -0.665927
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
    1,
    10
  },
  BRay = {
    0.1,
    0.13,
    0.16,
    1.0E-4
  },
  BMie = {
    0.5,
    0.4,
    0.3,
    1.0E-4
  },
  G = 0.99
}
EnvMap = {
  FileName = "stage/aqa/a/aqa_envmap.dds"
}
Bloom = {
  MinThreshold = 0.28,
  MaxThreshold = 2.8,
  Scale = 4
}
ReflectionAreas = {
  FileName = "stage/aqa/a/aqa_mapA_rfzone",
  SectorCutoffCoverage = 0.2
}
LOD = {
  Main = {FarDistance = 10000, ClipDistance = 20000},
  Reflection = {
    FarDistance = 0,
    ClumpClipDistance = 3000,
    TerrainClipDistance = 0
  }
}
LightPresets = {
  pillerroom_Main = {
    Type = "Directional",
    Color = {
      0.8,
      0.8,
      1,
      1
    },
    Direction_3dsmax = {
      Position = {
        0.300454,
        -0.306129,
        0.642687
      }
    }
  },
  marcury_Main = {
    Type = "Directional",
    Color = {
      0.8,
      0.9,
      1,
      1
    },
    Direction_3dsmax = {
      Position = {
        0.300454,
        -0.306129,
        0.642687
      }
    }
  },
  aqapointb01 = {
    Type = "Animation",
    FileName = "object/aqa/pointlight/aqa_obj_pointlight_blue.xni"
  },
  aqapointr01 = {
    Type = "Animation",
    FileName = "object/aqa/pointlight/aqa_obj_pointlight_red.xni"
  },
  aqapointr02 = {
    Type = "Animation",
    FileName = "object/aqa/pointlight/aqa_obj_pointlight_red.xni"
  },
  aqapointb201 = {
    Type = "Animation",
    FileName = "object/aqa/pointlight/aqa_obj_pointlight_blue2.xni"
  },
  aqapointb202 = {
    Type = "Animation",
    FileName = "object/aqa/pointlight/aqa_obj_pointlight_blue2.xni"
  },
  aqapointb203 = {
    Type = "Animation",
    FileName = "object/aqa/pointlight/aqa_obj_pointlight_blue2.xni"
  },
  aqapointb204 = {
    Type = "Animation",
    FileName = "object/aqa/pointlight/aqa_obj_pointlight_blue2.xni"
  },
  aqapointb205 = {
    Type = "Animation",
    FileName = "object/aqa/pointlight/aqa_obj_pointlight_blue2.xni"
  },
  aqapointb206 = {
    Type = "Animation",
    FileName = "object/aqa/pointlight/aqa_obj_pointlight_blue2.xni"
  }
}
