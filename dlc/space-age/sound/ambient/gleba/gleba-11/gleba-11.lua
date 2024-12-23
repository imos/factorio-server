return
{
  type = "ambient-sound",
  name = "gleba-11",
  track_type = "main-track",
  planet = "gleba",
  weight = 12,

  variable_sound =
  {
    length_seconds = 720,
    alignment_samples = 11025,

    layers =
    {
      {
        name = "AA",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/gleba/gleba-11/gleba-11-aa", 14, 1.0)
        },
        composition_mode = "randomized",
      },
      {
        name = "AB",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/gleba/gleba-11/gleba-11-ab", 13, 1.0)
        },
        composition_mode = "randomized",
      },

      {
        name = "BA",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/gleba/gleba-11/gleba-11-ba", 6, 1.0)
        },
        composition_mode = "randomized",
      },
      {
        name = "BB",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/gleba/gleba-11/gleba-11-bb", 12, 1.0)
        },
        composition_mode = "randomized",
      },

      {
        name = "CA",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/gleba/gleba-11/gleba-11-ca", 7, 1.0)
        },
        composition_mode = "randomized",
      },
      {
        name = "CB",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/gleba/gleba-11/gleba-11-cb", 10, 1.0)
        },
        composition_mode = "randomized",
      },

      {
        name = "DA",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/gleba/gleba-11/gleba-11-da", 1, 1.0)
        },
        composition_mode = "randomized",
      },
      {
        name = "DB",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/gleba/gleba-11/gleba-11-db", 1, 1.0)
        },
        composition_mode = "randomized",
      },

      {
        name = "EA",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/gleba/gleba-11/gleba-11-ea", 11, 1.0)
        },
        composition_mode = "randomized",
        number_of_sublayers = 2,
        sublayer_offset =
        {
          {1, 26},
          {2, 26},
          {3, 32},
          {16, 4},
          {17, 4},
          {18, 2},
          {38, 2},
          {64, 4},
        },
      },
      {
        name = "EB",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/gleba/gleba-11/gleba-11-eb", 27, 1.0)
        },
        composition_mode = "randomized",
        number_of_sublayers = 2,
        sublayer_offset =
        {
          {1, 26},
          {2, 26},
          {3, 32},
          {16, 4},
          {17, 4},
          {18, 2},
          {38, 2},
          {64, 4},
        },
      },
    }, --layers

    states =
    {
      {
        name = "A",
        next_state = "AB",
        next_state_trigger = "duration",
        state_duration_seconds = 240,
        layers_properties =
        {
          -- A
          {
            start_pause = {60, 120},
            pause_between_repetitions = {0, 120},
          },
          {
            enabled = false,
          },

          -- B
          {
            start_pause = {120, 240},
            pause_between_repetitions = {0, 120},
          },
          {
            enabled = false,
          },

          -- C
          {
            start_pause = {120, 240},
            pause_between_repetitions = {0, 120},
          },
          {
            enabled = false,
          },

          -- D
          {
            start_pause = {120, 240},
            number_of_repetitions = 1,
          },
          {
            enabled = false,
          },

          -- E
          {
            start_pause = {120, 240},
          },
          {
            enabled = false,
          },
        }
      },
      {
        name = "AB",
        next_state = "B",
        next_state_trigger = "duration",
        state_duration_seconds = 90,
        layers_properties =
        {
          -- A
          {
            pause_between_repetitions = {0, 120},
          },
          {
            start_pause = {0, 240},
            pause_between_repetitions = {0, 120},
          },

          -- B
          {
            pause_between_repetitions = {0, 120},
          },
          {
            start_pause = {0, 240},
            pause_between_repetitions = {0, 120},
          },

          -- C
          {
            pause_between_repetitions = {0, 120},
          },
          {
            start_pause = {0, 240},
            pause_between_repetitions = {0, 120},
          },

          -- D
          {
            enabled = false,
          },
          {
            start_pause = {120, 240},
            number_of_repetitions = 1,
          },

          -- E
          {
          },
          {
            start_pause = {0, 240},
          },
        }
      },
      {
        name = "B",
        type = "final",
        layers_properties =
        {
          -- A
          {
            enabled = false,
          },
          {
            pause_between_repetitions = {0, 120},
          },

          -- B
          {
            enabled = false,
          },
          {
            pause_between_repetitions = {0, 120},
          },

          -- C
          {
            enabled = false,
          },
          {
            pause_between_repetitions = {0, 120},
          },

          -- D
          {
            enabled = false,
          },
          {
            enabled = false,
          },

          -- E
          {
            enabled = false,
          },
          {
          },
        }
      },
    } --states
  }
}
