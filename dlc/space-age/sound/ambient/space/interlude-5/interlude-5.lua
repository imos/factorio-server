return
{
  type = "ambient-sound",
  name = "space-interlude-5",
  track_type = "main-track",
  weight = 10,

  variable_sound =
  {
    length_seconds = 300,
    alignment_samples = 151200,

    layers =
    {
      {
        name = "A",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/space/interlude-5/interlude-5-a", 5, 1.0)
        },
        composition_mode = "randomized",
      },

      {
        name = "B",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/space/interlude-5/interlude-5-b", 7, 1.0)
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
            start_pause = {0, 10},
            pause_between_repetitions = {3, 8},
          },
          {
            start_pause = {0, 10},
            pause_between_repetitions = {3, 8},
          },
        },
        number_of_enabled_layers = {1, 2},
      },
    } --states
  }
}
