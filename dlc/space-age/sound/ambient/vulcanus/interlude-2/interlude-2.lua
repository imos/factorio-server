return
{
  type = "ambient-sound",
  name = "vulcanus-interlude-2",
  track_type = "main-track",
  planet = "vulcanus",
  weight = 30,

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
          sound_variations("__space-age__/sound/ambient/vulcanus/interlude-2/interlude-2-a", 20, 1.0)
        },
        composition_mode = "randomized",
      },

      {
        name = "B",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/vulcanus/interlude-2/interlude-2-b", 13, 1.0)
        },
        composition_mode = "randomized"
      },

      {
        name = "C",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/vulcanus/interlude-2/interlude-2-c", 1, 1.0)
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
            sequence_length = {6, 8},
            pause_between_samples = {0, 15},
            pause_between_repetitions = {40, 60},
          },
          {
            start_pause = {0, 20},
            sequence_length = {4, 6},
            pause_between_samples = {0, 15},
            pause_between_repetitions = {40, 60}
          },
          {
            start_pause = {60, 180},
            number_of_repetitions = 1,
          },
        },
        number_of_enabled_layers = {2, 3},
      },
    } --states
  }
}
