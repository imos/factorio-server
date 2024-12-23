return
{
  type = "ambient-sound",
  name = "fulgora-interlude-1",
  track_type = "main-track",
  planet = "fulgora",
  weight = 15,

  variable_sound =
  {
    length_seconds = 450,
    alignment_samples = 44100,

    layers =
    {
      {
        name = "A",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/fulgora/interlude-1/interlude-1-a", 5, 1.0)
        },
        composition_mode = "randomized",
      },

      {
        name = "B",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/fulgora/interlude-1/interlude-1-b", 6, 1.0)
        },
        composition_mode = "randomized"
      },

      {
        name = "C",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/fulgora/interlude-1/interlude-1-c", 4, 1.0)
        },
        composition_mode = "randomized"
      },

      {
        name = "D",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/fulgora/interlude-1/interlude-1-d", 2, 1.0)
        },
        composition_mode = "randomized"
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
            sequence_length = {1, 3},
            pause_between_samples = {0, 3},
            pause_between_repetitions = {20, 40},
          },
          {
            start_pause = {0, 20},
            sequence_length = {1, 5},
            pause_between_samples = {0, 5},
            pause_between_repetitions = {5, 30}
          },
          {
            start_pause = {40, 80},
            sequence_length = {2, 3},
            pause_between_samples = {0, 3},
            pause_between_repetitions = {40, 60},
          },
          {
            start_pause = {40, 80},
            sequence_length = {2, 3},
            pause_between_samples = {0, 3},
            pause_between_repetitions = {40, 60},
          },
        },
        number_of_enabled_layers = {2, 4},
      },
    } --states
  }
}
