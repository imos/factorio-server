return
{
  type = "ambient-sound",
  name = "aquilo-10",
  track_type = "main-track",
  planet = "aquilo",
  weight = 10,

  variable_sound =
  {
    length_seconds = 600,
    alignment_samples = 44100,

    layers =
    {
      {
        name = "FX",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/aquilo/aquilo-10/aquilo-10-fx", 5, 1.0)
        },
        composition_mode = "randomized",
      },
      {
        name = "A",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/aquilo/aquilo-10/aquilo-10-a", 19, 1.0)
        },
        composition_mode = "randomized",
      },
      {
        name = "B",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/aquilo/aquilo-10/aquilo-10-b", 5, 1.0)
        },
        composition_mode = "randomized",
        number_of_sublayers = 2,
        sublayer_offset =
        {
          {10, 32},
          {20, 32},
          {30, 32},
          {100, 1},
          {110, 1},
          {120, 1},
          {130, 1},
        },
      },
      {
        name = "C",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/aquilo/aquilo-10/aquilo-10-c", 7, 1.0)
        },
        composition_mode = "randomized",
        number_of_sublayers = 2,
        sublayer_offset =
        {
          {10, 32},
          {20, 32},
          {30, 32},
          {100, 1},
          {110, 1},
          {120, 1},
          {130, 1},
        },
      },
      {
        name = "D",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/aquilo/aquilo-10/aquilo-10-d", 8, 1.0)
        },
        composition_mode = "randomized",
        number_of_sublayers = 2,
        sublayer_offset =
        {
          {10, 32},
          {20, 32},
          {30, 32},
          {100, 1},
          {110, 1},
          {120, 1},
          {130, 1},
        },
      },
    }, --layers

    states =
    {
      {
        name = "begin",
        next_state = "middle",
        next_state_trigger = "duration",
        state_duration_seconds = 240,
        layers_properties =
        {
          {
            start_pause = {0, 20},
            pause_between_repetitions = {0, 30},
          },
          {
            start_pause = {0, 20},
            sequence_length = {10, 15},
            pause_between_samples = {0, 30},
            pause_between_repetitions = {90, 120},
          },
          {
            start_pause = {0, 20},
          },
          {
            start_pause = {0, 20},
          },
          {
            start_pause = {0, 20},
          },
        },
        number_of_enabled_layers = {2, 4},
      },

      {
        name = "middle",
        next_state = "end",
        next_state_trigger = "duration",
        state_duration_seconds = 120,
        layers_properties =
        {
          {
            pause_between_repetitions = {0, 30},
          },
          {
            start_pause = {0, 20},
            sequence_length = {10, 15},
            pause_between_samples = {0, 30},
            pause_between_repetitions = {90, 120},
          },
          {},
          {},
          {},
        },
      },

      {
        name = "end",
        type = "final",
        layers_properties =
        {
          {
            pause_between_repetitions = {0, 30},
          },
          {
            sequence_length = {10, 15},
            pause_between_samples = {0, 30},
            pause_between_repetitions = {90, 120},
          },
          {},
          {},
          {},
        },
        number_of_enabled_layers = {2, 4},
      },
    }, --states
  }
}
