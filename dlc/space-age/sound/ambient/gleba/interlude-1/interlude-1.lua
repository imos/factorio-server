return
{
  type = "ambient-sound",
  name = "gleba-interlude-1",
  track_type = "main-track",
  planet = "gleba",
  weight = 25,

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
          sound_variations("__space-age__/sound/ambient/gleba/interlude-1/interlude-1-a", 9, 1.0)
        },
        composition_mode = "randomized",
      },

      {
        name = "B",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/gleba/interlude-1/interlude-1-b", 7, 1.0)
        },
        composition_mode = "randomized"
      },

      {
        name = "C",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/gleba/interlude-1/interlude-1-c", 5, 1.0)
        },
        composition_mode = "randomized"
      },

      {
        name = "D",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/gleba/interlude-1/interlude-1-d", 2, 1.0)
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
            sequence_length = {2, 4},
            pause_between_samples = {0, 3},
            pause_between_repetitions = {20, 40},
          },
          {
            start_pause = {0, 20},
            sequence_length = {1, 2},
            pause_between_samples = {0, 3},
            pause_between_repetitions = {40, 80}
          },
          {
            start_pause = {0, 20},
            sequence_length = {2, 4},
            pause_between_samples = {0, 3},
            pause_between_repetitions = {20, 40},
          },
          {
            start_pause = {0, 20},
            sequence_length = {2, 4},
            pause_between_samples = {0, 3},
            pause_between_repetitions = {20, 40},
          },
        },
        number_of_enabled_layers = {2, 4},
      },
    } --states
  }
}
