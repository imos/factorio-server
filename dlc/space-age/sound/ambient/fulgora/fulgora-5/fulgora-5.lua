return
{
  type = "ambient-sound",
  name = "fulgora-5",
  track_type = "main-track",
  planet = "fulgora",
  weight = 10,

  variable_sound =
  {
    length_seconds = 600,
    alignment_samples = 44100,

    layers =
    {
      {
        name = "A1",
        variants =
        {
          {
            {filename = "__space-age__/sound/ambient/fulgora/fulgora-5/fulgora-5-a-start.ogg", volume = 1.0},
            {filename = "__space-age__/sound/ambient/fulgora/fulgora-5/fulgora-5-a-1.ogg", volume = 1.0},
            {filename = "__space-age__/sound/ambient/fulgora/fulgora-5/fulgora-5-a-2.ogg", volume = 1.0},
            {filename = "__space-age__/sound/ambient/fulgora/fulgora-5/fulgora-5-a-3.ogg", volume = 1.0},
            {filename = "__space-age__/sound/ambient/fulgora/fulgora-5/fulgora-5-a-4.ogg", volume = 1.0},
          },
          {
            {filename = "__space-age__/sound/ambient/fulgora/fulgora-5/fulgora-5-a-start.ogg", volume = 1.0},
            {filename = "__space-age__/sound/ambient/fulgora/fulgora-5/fulgora-5-a-5.ogg", volume = 1.0},
            {filename = "__space-age__/sound/ambient/fulgora/fulgora-5/fulgora-5-a-6.ogg", volume = 1.0},
            {filename = "__space-age__/sound/ambient/fulgora/fulgora-5/fulgora-5-a-7.ogg", volume = 1.0},
            {filename = "__space-age__/sound/ambient/fulgora/fulgora-5/fulgora-5-a-8.ogg", volume = 1.0},
          },
        },
        composition_mode = "randomized",
        has_start_sample = true,
      },

      {
        name = "A2",
        variants =
        {
          {
            {filename = "__space-age__/sound/ambient/fulgora/fulgora-5/fulgora-5-a-1.ogg", volume = 1.0},
            {filename = "__space-age__/sound/ambient/fulgora/fulgora-5/fulgora-5-a-2.ogg", volume = 1.0},
            {filename = "__space-age__/sound/ambient/fulgora/fulgora-5/fulgora-5-a-3.ogg", volume = 1.0},
            {filename = "__space-age__/sound/ambient/fulgora/fulgora-5/fulgora-5-a-4.ogg", volume = 1.0},
          },
          {
            {filename = "__space-age__/sound/ambient/fulgora/fulgora-5/fulgora-5-a-5.ogg", volume = 1.0},
            {filename = "__space-age__/sound/ambient/fulgora/fulgora-5/fulgora-5-a-6.ogg", volume = 1.0},
            {filename = "__space-age__/sound/ambient/fulgora/fulgora-5/fulgora-5-a-7.ogg", volume = 1.0},
            {filename = "__space-age__/sound/ambient/fulgora/fulgora-5/fulgora-5-a-8.ogg", volume = 1.0},
          },
        },
        composition_mode = "randomized",
      },

      {
        name = "BC",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/fulgora/fulgora-5/fulgora-5-b", 7, 0.6),
          sound_variations("__space-age__/sound/ambient/fulgora/fulgora-5/fulgora-5-c", 7, 0.6),
        },
        composition_mode = "randomized",
        number_of_sublayers = 4,
        sublayer_offset =
        {
          {1, 26},
          {2, 26},
          {3, 34},
          {16, 4},
          {17, 4},
          {18, 4},
          {38, 2},
        },
      },

      {
        name = "D",
        variants =
        {
          {filename = "__space-age__/sound/ambient/fulgora/fulgora-5/fulgora-5-d.ogg", volume = 1.0},
        },
        composition_mode = "randomized",
      },
    }, -- layers

    states =
    {
      {
        name = "You must choose!",
        next_states =
        {
          {state = "Section 1-A starter + Section 2-B", conditions = {weight = 1.0}},
          {state = "Section 1-B starter + Section 2-B", conditions = {weight = 1.0}},
        },
        next_state_trigger = "duration",
        state_duration_seconds = 0,
        layers_properties =
        {
          {enabled = false},
          {enabled = false},
          {enabled = false},
          {enabled = false},
        },
      },

      {
        name = "Section 1-A starter + Section 2-B",
        next_states =
        {
          {state = "Section 1-A + Section 2-B", conditions = {weight = 2.0}},
          {state = "Section 1-A + Section 2-Long pause", conditions = {weight = 1.0}},
          {state = "Section 1-A + Section 2-Longer pause", conditions = {weight = 1.0}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"BC"},
        layers_properties =
        {
          {
            variant = 1, -- long
            pause_between_repetitions = 28,
          },
          {
            variant = 2, -- short
            start_pause = 64,
            pause_between_repetitions = 60,
          },

          {
            variant = 1, -- B
            sequence_length = 12,
            number_of_repetitions = 1,
          },

          {
            start_pause = {30, 60},
            pause_between_repetitions = {30, 60},
          },
        },
      },
      {
        name = "Section 1-A + Section 2-B",
        next_states =
        {
          {state = "Section 1-A + Section 2-B", conditions = {weight = 2.0}},
          {state = "Section 1-A + Section 2-Long pause", conditions = {weight = 1.0}},
          {state = "Section 1-A + Section 2-Longer pause", conditions = {weight = 1.0}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"BC"},
        layers_properties =
        {
          {
            variant = 1, -- long
            pause_between_repetitions = 28,
          },
          {
            variant = 2, -- short
            pause_between_repetitions = 60,
          },

          {
            variant = 1, -- B
            sequence_length = 12,
            number_of_repetitions = 1,
          },

          {
            pause_between_repetitions = {30, 60},
          },
        },
      },
      {
        name = "Section 1-A + Section 2-C",
        next_states =
        {
          {state = "Section 1-A + Section 2-C", conditions = {weight = 2.0}},
          {state = "Section 1-A + Section 2-Long pause", conditions = {weight = 1.0}},
          {state = "Section 1-A + Section 2-Longer pause", conditions = {weight = 1.0}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"BC"},
        layers_properties =
        {
          {
            variant = 1, -- long
            pause_between_repetitions = 28,
          },
          {
            variant = 2, -- short
            pause_between_repetitions = 60,
          },

          {
            variant = 2, -- C
            sequence_length = 12,
            number_of_repetitions = 1,
          },

          {
            pause_between_repetitions = {30, 60},
          },
        },
      },

      {
        name = "Section 1-A + Section 2-Long pause",
        next_states =
        {
          {state = "Section 1-A + Section 2-B", conditions = {weight = 1.0}},
          {state = "Section 1-A + Section 2-C", conditions = {weight = 1.0}},
        },
        next_state_trigger = "duration",
        state_duration_seconds = 102,
        layers_properties =
        {
          {
            variant = 1, -- long
            pause_between_repetitions = 28,
          },
          {
            variant = 2, -- short
            pause_between_repetitions = 60,
          },

          {
            enabled = false,
          },

          {
            pause_between_repetitions = {30, 60},
          },
        },
      },
      {
        name = "Section 1-A + Section 2-Longer pause",
        next_states =
        {
          {state = "Section 1-A + Section 2-B", conditions = {weight = 1.0}},
          {state = "Section 1-A + Section 2-C", conditions = {weight = 1.0}},
        },
        next_state_trigger = "duration",
        state_duration_seconds = 163,
        layers_properties =
        {
          {
            variant = 1, -- long
            pause_between_repetitions = 28,
          },
          {
            variant = 2, -- short
            pause_between_repetitions = 60,
          },

          {
            enabled = false,
          },

          {
            pause_between_repetitions = {30, 60},
          },
        },
      },

      {
        name = "Section 1-B starter + Section 2-B",
        next_states =
        {
          {state = "Section 1-B + Section 2-B", conditions = {weight = 2.0}},
          {state = "Section 1-B + Section 2-Long pause", conditions = {weight = 1.0}},
          {state = "Section 1-B + Section 2-Longer pause", conditions = {weight = 1.0}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"BC"},
        layers_properties =
        {
          {
            variant = 2, -- short
            pause_between_repetitions = 60,
          },
          {
            variant = 1, -- long
            start_pause = 64,
            pause_between_repetitions = 28,
          },

          {
            variant = 1, -- B
            sequence_length = 12,
            number_of_repetitions = 1,
          },

          {
            start_pause = {30, 60},
            pause_between_repetitions = {30, 60},
          },
        },
      },
      {
        name = "Section 1-B + Section 2-B",
        next_states =
        {
          {state = "Section 1-B + Section 2-B", conditions = {weight = 2.0}},
          {state = "Section 1-B + Section 2-Long pause", conditions = {weight = 1.0}},
          {state = "Section 1-B + Section 2-Longer pause", conditions = {weight = 1.0}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"BC"},
        layers_properties =
        {
          {
            variant = 2, -- short
            pause_between_repetitions = 60,
          },
          {
            variant = 1, -- long
            pause_between_repetitions = 28,
          },

          {
            variant = 1, -- B
            sequence_length = 12,
            number_of_repetitions = 1,
          },

          {
            pause_between_repetitions = {30, 60},
          },
        },
      },
      {
        name = "Section 1-B + Section 2-C",
        next_states =
        {
          {state = "Section 1-B + Section 2-C", conditions = {weight = 2.0}},
          {state = "Section 1-B + Section 2-Long pause", conditions = {weight = 1.0}},
          {state = "Section 1-B + Section 2-Longer pause", conditions = {weight = 1.0}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"BC"},
        layers_properties =
        {
          {
            variant = 2, -- short
            pause_between_repetitions = 60,
          },
          {
            variant = 1, -- long
            pause_between_repetitions = 28,
          },

          {
            variant = 2, -- C
            sequence_length = 12,
            number_of_repetitions = 1,
          },

          {
            pause_between_repetitions = {30, 60},
          },
        },
      },

      {
        name = "Section 1-B + Section 2-Long pause",
        next_states =
        {
          {state = "Section 1-B + Section 2-B", conditions = {weight = 1.0}},
          {state = "Section 1-B + Section 2-C", conditions = {weight = 1.0}},
        },
        next_state_trigger = "duration",
        state_duration_seconds = 102,
        layers_properties =
        {
          {
            variant = 2, -- short
            pause_between_repetitions = 60,
          },
          {
            variant = 1, -- long
            pause_between_repetitions = 28,
          },

          {
            enabled = false,
          },

          {
            pause_between_repetitions = {30, 60},
          },
        },
      },
      {
        name = "Section 1-B + Section 2-Longer pause",
        next_states =
        {
          {state = "Section 1-B + Section 2-B", conditions = {weight = 1.0}},
          {state = "Section 1-B + Section 2-C", conditions = {weight = 1.0}},
        },
        next_state_trigger = "duration",
        state_duration_seconds = 163,
        layers_properties =
        {
          {
            variant = 2, -- short
            pause_between_repetitions = 60,
          },
          {
            variant = 1, -- long
            pause_between_repetitions = 28,
          },

          {
            enabled = false,
          },

          {
            pause_between_repetitions = {30, 60},
          },
        },
      },
    } -- states
  }
}
