return
{
  type = "ambient-sound",
  name = "aquilo-5",
  track_type = "main-track",
  planet = "aquilo",
  weight = 10,

  variable_sound =
  {
    length_seconds = 300,
    alignment_samples = 12600,

    layers =
    {
      {
        name = "A-1",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/aquilo/aquilo-5/aquilo-5-a", 6, 1.0)
        },
        composition_mode = "randomized",
      },
      {
        name = "Melody A-1",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/aquilo/aquilo-5/aquilo-5-melodya", 18, 1.0)
        },
        composition_mode = "layer-controlled",
        control_layer = "A-1",
        control_layer_sample_mapping =
        {
          {1, 2, 3},
          {4, 5, 6},
          {7, 8, 9},
          {10, 11, 12},
          {13, 14, 15},
          {16, 17, 18},
        },
      },
      {
        name = "Melody B-1",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/aquilo/aquilo-5/aquilo-5-melodyb", 18, 1.0)
        },
        composition_mode = "layer-controlled",
        control_layer = "A-1",
        control_layer_sample_mapping =
        {
          {1, 2, 3},
          {4, 5, 6},
          {7, 8, 9},
          {10, 11, 12},
          {13, 14, 15},
          {16, 17, 18},
        },
      },

      {
        name = "A-2",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/aquilo/aquilo-5/aquilo-5-a", 6, 1.0)
        },
        composition_mode = "randomized",
      },
      {
        name = "Melody A-2",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/aquilo/aquilo-5/aquilo-5-melodya", 18, 1.0)
        },
        composition_mode = "layer-controlled",
        control_layer = "A-2",
        control_layer_sample_mapping =
        {
          {1, 2, 3},
          {4, 5, 6},
          {7, 8, 9},
          {10, 11, 12},
          {13, 14, 15},
          {16, 17, 18},
        },
      },
      {
        name = "Melody B-2",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/aquilo/aquilo-5/aquilo-5-melodyb", 18, 1.0)
        },
        composition_mode = "layer-controlled",
        control_layer = "A-2",
        control_layer_sample_mapping =
        {
          {1, 2, 3},
          {4, 5, 6},
          {7, 8, 9},
          {10, 11, 12},
          {13, 14, 15},
          {16, 17, 18},
        },
      },
    }, -- layers
    intermezzo = "__space-age__/sound/ambient/aquilo/aquilo-5/aquilo-5-intermezzo.ogg",

    states =
    {
      {
        name = "first",
        next_states =
        {
          {state = "second", conditions = {weight = 1}},
          {state = "intermezzo", conditions = {weight = 1, layer_sample = {"A-1", 6}}}
        },
        next_state_trigger = "duration",
        state_duration_seconds = 40,
        layers_properties =
        {
          {},
          {},
          {},
          {enabled = false},
          {enabled = false},
          {enabled = false},
        },
      },
      {
        name = "second",
        next_states =
        {
          {state = "first", conditions = {weight = 1}},
          {state = "intermezzo", conditions = {weight = 1, layer_sample = {"A-2", 6}}}
        },
        next_state_trigger = "duration",
        state_duration_seconds = 40,
        layers_properties =
        {
          {enabled = false},
          {enabled = false},
          {enabled = false},
          {},
          {},
          {}
        },
      },
      {
        name = "intermezzo",
        type = "intermezzo",
        next_state = "first",
        state_duration_seconds = 200, -- end at 180 seconds of the intermezzo + 20 seconds of the start pause
        start_pause = 70, -- 20 seconds
      },
    } -- states
  }
}
