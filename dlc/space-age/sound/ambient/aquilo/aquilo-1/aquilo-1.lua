return
{
  type = "ambient-sound",
  name = "aquilo-1",
  track_type = "main-track",
  planet = "aquilo",
  weight = 10,

  variable_sound =
  {

    length_seconds = 300,
    alignment_samples = 44100,

    layers =
    {
      {
        name = "A",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/aquilo/aquilo-1/aquilo-1-a", 1, 1.0)
        },
        composition_mode = "randomized",
      },

      {
        name = "B",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/aquilo/aquilo-1/aquilo-1-b", 4, 1.0)
        },
        composition_mode = "randomized",
      },

      {
        name = "C",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/aquilo/aquilo-1/aquilo-1-c", 16, 1.0)
        },
        composition_mode = "randomized",
        number_of_sublayers = 2,
        sublayer_starting_offset = {10, 15},
      },

      {
        name = "D",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/aquilo/aquilo-1/aquilo-1-d", 8, 1.0)
        },
        composition_mode = "randomized",
      },
    }, --layers

    states =
    {
      {
        name = "begin",
        layers_properties =
        {
          {
            start_pause = {0, 15},
            pause_between_repetitions = {0, 3},
          },
          {
            start_pause = {0, 15},
            sequence_length = {1, 4},
            pause_between_samples = {0, 3},
            pause_between_repetitions = {10, 15},
          },
          {
            start_pause = {0, 15},
            sequence_length = {2, 4},
            pause_between_samples = {0, 3},
            pause_between_repetitions = {15, 30},
          },
          {
            start_pause = {0, 15},
            pause_between_repetitions = {5, 10},
          },
        },
        number_of_enabled_layers = {2, 4},
      }
    }, --states
  }
}