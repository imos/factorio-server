return
{
  type = "ambient-sound",
  name = "aquilo-7",
  track_type = "main-track",
  planet = "aquilo",
  weight = 10,

  variable_sound =
  {
    length_seconds = 840,
    alignment_samples = 12600,

    layers =
    {
      {
        name = "A1",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/aquilo/aquilo-7/aquilo-7-a", 16, 1.0)
        },
        composition_mode = "randomized",
      },
      {
        name = "A2",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/aquilo/aquilo-7/aquilo-7-a", 16, 1.0)
        },
        composition_mode = "randomized",
      },
      {
        name = "A3",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/aquilo/aquilo-7/aquilo-7-a", 16, 1.0)
        },
        composition_mode = "randomized",
      },
      {
        name = "C",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/aquilo/aquilo-7/aquilo-7-c", 32, 1.0)
        },
        composition_mode = "layer-controlled",
        control_layer = "A1",
        control_layer_sample_mapping =
        {
          {1, 2},
          {3, 4},
          {5, 6},
          {7, 8},
          {9, 10},
          {11, 12},
          {13, 14},
          {15, 16},
          {17, 18},
          {19, 20},
          {21, 22},
          {23, 24},
          {25, 26},
          {27, 28},
          {29, 30},
          {31, 32},
        },
      },
      {
        name = "D",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/aquilo/aquilo-7/aquilo-7-d", 24, 1.0)
        },
        composition_mode = "layer-controlled",
        control_layer = "A2",
        control_layer_sample_mapping =
        {
          {1, 2},
          {3},
          {4, 5},
          {6},
          {7, 8},
          {9},
          {10, 11},
          {12},
          {13, 14},
          {15},
          {16, 17},
          {18},
          {19, 20},
          {21},
          {22, 23},
          {24},
        },
      },
      {
        name = "E",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/aquilo/aquilo-7/aquilo-7-e", 24, 1.0)
        },
        composition_mode = "layer-controlled",
        control_layer = "A3",
        control_layer_sample_mapping =
        {
          {1, 2},
          {3},
          {4, 5},
          {6},
          {7, 8},
          {9},
          {10, 11},
          {12},
          {13, 14},
          {15},
          {16, 17},
          {18},
          {19, 20},
          {21},
          {22, 23},
          {24},
        },
      },
    }, -- layers
    intermezzo = "__space-age__/sound/ambient/aquilo/aquilo-7/aquilo-7-intermezzo.ogg",

    states =
    {
      {
        name = "first",
        next_state = "second",
        next_state_trigger = "duration",
        state_duration_seconds = 40,
        layers_properties =
        {
          {},
          {enabled = false},
          {enabled = false},
          {},
          {enabled = false},
          {enabled = false},
        },
      },
      {
        name = "second",
        next_state = "third",
        next_state_trigger = "duration",
        state_duration_seconds = 40,
        layers_properties =
        {
          {enabled = false},
          {},
          {enabled = false},
          {enabled = false},
          {},
          {enabled = false},
        },
      },
      {
        name = "third",
        next_states =
        {
          {state = "first", conditions = {weight = 2}},
          {state = "intermezzo", conditions = {weight = 1}}
        },
        next_state_trigger = "duration",
        state_duration_seconds = 40,
        layers_properties =
        {
          {enabled = false},
          {enabled = false},
          {},
          {enabled = false},
          {enabled = false},
          {},
        },
      },
      {
        name = "intermezzo",
        type = "intermezzo",
        next_state = "first",
      },
    } -- states
  }
}
