return
{
  type = "ambient-sound",
  name = "aquilo-interlude-3",
  track_type = "main-track",
  planet = "aquilo",
  weight = 20,

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
          sound_variations("__space-age__/sound/ambient/aquilo/interlude-3/interlude-3-a", 8, 1.0)
        },
        composition_mode = "randomized",
      },

      {
        name = "B",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/aquilo/interlude-3/interlude-3-b", 19, 1.0)
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
            start_pause = {0, 20},
            sequence_length = {4, 8},
            pause_between_samples = {2, 8},
            pause_between_repetitions = {20, 40},
          },
          {
            start_pause = {0, 20},
            sequence_length = {6, 12},
            pause_between_samples = {2, 8},
            pause_between_repetitions = {20, 40},
          },
        },
        number_of_enabled_layers = {1, 2},
      },
    } --states
  }
}
