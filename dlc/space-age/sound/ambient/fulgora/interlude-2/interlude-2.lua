return
{
  type = "ambient-sound",
  name = "fulgora-interlude-2",
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
          sound_variations("__space-age__/sound/ambient/fulgora/interlude-2/interlude-2-a", 6, 1.0)
        },
        composition_mode = "randomized",
      },

      {
        name = "B",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/fulgora/interlude-2/interlude-2-b", 2, 1.0)
        },
        composition_mode = "randomized"
      },

      {
        name = "C",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/fulgora/interlude-2/interlude-2-c", 4, 1.0)
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
            sequence_length = {1, 4},
            pause_between_samples = {0, 3},
            pause_between_repetitions = {20, 40},
          },
          {
            start_pause = {0, 40},
            sequence_length = {1, 2},
            pause_between_samples = {0, 3},
            pause_between_repetitions = {20, 40}
          },
          {
            start_pause = {60, 120},
            sequence_length = {1, 3},
            pause_between_samples = {0, 3},
            pause_between_repetitions = {60, 120},
          },
        },
        number_of_enabled_layers = {2, 3},
      },
    } --states
  }
}
