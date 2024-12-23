return
{
  type = "ambient-sound",
  name = "space-3",
  track_type = "main-track",
  weight = 10,

  variable_sound =
  {
    length_seconds = 1200,
    alignment_samples = 132300,

    layers =
    {
      {
        name = "A",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/space/space-3/space-3-a", 5, 1.0)
        },
        composition_mode = "randomized",
      },
      {
        name = "B",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/space/space-3/space-3-b", 9, 1.0)
        },
        composition_mode = "randomized",
      },
      {
        name = "C",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/space/space-3/space-3-c", 4, 1.0)
        },
        composition_mode = "randomized",
      },
      {
        name = "D",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/space/space-3/space-3-d", 2, 1.0)
        },
        composition_mode = "randomized",
      },
      {
        name = "E",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/space/space-3/space-3-e", 2, 1.0)
        },
        composition_mode = "randomized",
      },
      {
        name = "F",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/space/space-3/space-3-f", 1, 1.0)
        },
        composition_mode = "randomized",
      },
      {
        name = "G",
        variants =
        {
          {
            "__space-age__/sound/ambient/space/space-3/space-3-g-start.ogg",
            "__space-age__/sound/ambient/space/space-3/space-3-g-1.ogg",
            "__space-age__/sound/ambient/space/space-3/space-3-g-2.ogg",
            "__space-age__/sound/ambient/space/space-3/space-3-g-3.ogg",
            "__space-age__/sound/ambient/space/space-3/space-3-g-4.ogg",
            "__space-age__/sound/ambient/space/space-3/space-3-g-5.ogg",
            "__space-age__/sound/ambient/space/space-3/space-3-g-6.ogg",
            "__space-age__/sound/ambient/space/space-3/space-3-g-7.ogg",
            "__space-age__/sound/ambient/space/space-3/space-3-g-end.ogg",
          }
        },
        has_start_sample = true,
        has_end_sample = true,
        composition_mode = "randomized",
      },
    }, -- layers

    states =
    {
      {
        name = "Begin",
        next_state = "Stop",
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"C", "D", "E", "F", "G"},
        layers_properties =
        {
          {
            start_pause = {1, 10},
            pause_between_repetitions = {1, 10},
          },
          {
            start_pause = {8, 34},
            pause_between_repetitions = {8, 34},
          },
          {
            start_pause = {34, 58},
            sequence_length = {1, 5},
            number_of_repetitions = 2,
            pause_between_samples = {3, 10},
            pause_between_repetitions = {34, 58},
          },
          {
            start_pause = {16, 36},
            sequence_length = {2, 4},
            number_of_repetitions = 1,
            pause_between_repetitions = {16, 36},
          },
          {
            start_pause = {16, 36},
            sequence_length = {2, 4},
            number_of_repetitions = 1,
            pause_between_repetitions = {16, 36},
          },
          {
            start_pause = {16, 36},
            sequence_length = {2, 4},
            number_of_repetitions = 1,
            pause_between_repetitions = {16, 36},
          },
          {
            start_pause = {16, 36},
            sequence_length = {4, 6},
            number_of_repetitions = 1,
          },
        }
      },

      {
        name = "Stop",
        type = "stop",
      }
    } -- states
  }
}
