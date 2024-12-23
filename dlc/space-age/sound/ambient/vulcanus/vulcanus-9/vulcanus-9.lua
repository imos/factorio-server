return
{
  type = "ambient-sound",
  name = "vulcanus-9",
  track_type = "main-track",
  planet = "vulcanus",
  weight = 15,

  variable_sound =
  {
    length_seconds = 972,
    alignment_samples = 211680,

    layers =
    {
      {
        name = "A",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/vulcanus/vulcanus-9/vulcanus-9-a", 12, 1.0)
        },
        composition_mode = "randomized",
        number_of_sublayers = 2,
        sublayer_offset = 3,
      },

      {
        name = "BCD",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/vulcanus/vulcanus-9/vulcanus-9-b", 16, 1.0),
          sound_variations("__space-age__/sound/ambient/vulcanus/vulcanus-9/vulcanus-9-c", 16, 1.0),
          sound_variations("__space-age__/sound/ambient/vulcanus/vulcanus-9/vulcanus-9-d", 16, 1.0),
        },
        composition_mode = "randomized",
        number_of_sublayers = 2,
        sublayer_offset = 2,
      },

      {
        name = "E",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/vulcanus/vulcanus-9/vulcanus-9-e", 8, 1.0)
        },
        composition_mode = "randomized",
        number_of_sublayers = 2,
        sublayer_offset = 4,
      },
    }, --layers
    intermezzo = "__space-age__/sound/ambient/vulcanus/vulcanus-9/vulcanus-9-intermezzo.ogg",

    states =
    {
      {
        name = "choosening",
        next_states =
        {
          {state = "1. section 1-B + section 2-E", conditions = {weight = 2}},
          {state = "1. section 1-C + section 2-E", conditions = {weight = 1}},
          {state = "1. section 1-D + section 2-E", conditions = {weight = 1}},
          {state = "1. section 1-silence + section 2-E", conditions = {weight = 2}},
          {state = "1. section 1-B + section 2-silence", conditions = {weight = 2}},
          {state = "1. section 1-C + section 2-silence", conditions = {weight = 1}},
          {state = "1. section 1-D + section 2-silence", conditions = {weight = 1}},
          {state = "1. section 1-silence + section 2-silence", conditions = {weight = 2}},
        },
        next_state_trigger = "duration",
        state_duration_seconds = 0,
        layers_properties =
        {
          {enabled = false},
          {enabled = false},
          {enabled = false},
        }
      },

      {
        name = "1. section 1-B + section 2-E",
        next_states =
        {
          {state = "2. section 1-B + section 2-E", conditions = {weight = 2}},
          {state = "2. section 1-C + section 2-E", conditions = {weight = 1}},
          {state = "2. section 1-D + section 2-E", conditions = {weight = 1}},
          {state = "2. section 1-silence + section 2-E", conditions = {weight = 2}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"BCD"},
        layers_properties =
        {
          {
            silence_instead_of_sample_probability = 0.4,
          },
          {
            variant = 1,
            number_of_repetitions = 16,
          },
          {
            number_of_repetitions = 8,
          },
        },
      },
      {
        name = "1. section 1-C + section 2-E",
        next_states =
        {
          {state = "2. section 1-B + section 2-E", conditions = {weight = 2}},
          {state = "2. section 1-C + section 2-E", conditions = {weight = 1}},
          {state = "2. section 1-D + section 2-E", conditions = {weight = 1}},
          {state = "2. section 1-silence + section 2-E", conditions = {weight = 2}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"BCD"},
        layers_properties =
        {
          {
            silence_instead_of_sample_probability = 0.4,
          },
          {
            variant = 2,
            number_of_repetitions = 16,
          },
          {
            number_of_repetitions = 8,
          },
        },
      },
      {
        name = "1. section 1-D + section 2-E",
        next_states =
        {
          {state = "2. section 1-B + section 2-E", conditions = {weight = 2}},
          {state = "2. section 1-C + section 2-E", conditions = {weight = 1}},
          {state = "2. section 1-D + section 2-E", conditions = {weight = 1}},
          {state = "2. section 1-silence + section 2-E", conditions = {weight = 2}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"BCD"},
        layers_properties =
        {
          {
            silence_instead_of_sample_probability = 0.4,
          },
          {
            variant = 3,
            number_of_repetitions = 16,
          },
          {
            number_of_repetitions = 8,
          },
        },
      },
      {
        name = "1. section 1-silence + section 2-E",
        next_states =
        {
          {state = "2. section 1-B + section 2-E", conditions = {weight = 2}},
          {state = "2. section 1-C + section 2-E", conditions = {weight = 1}},
          {state = "2. section 1-D + section 2-E", conditions = {weight = 1}},
          {state = "2. section 1-silence + section 2-E", conditions = {weight = 2}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"BCD"},
        layers_properties =
        {
          {
            silence_instead_of_sample_probability = 0.4,
          },
          {
            number_of_repetitions = 16,
            silence_instead_of_sample_probability = 1.0,
          },
          {
            number_of_repetitions = 8,
          },
        },
      },

      {
        name = "1. section 1-B + section 2-silence",
        next_states =
        {
          {state = "2. section 1-B + section 2-silence", conditions = {weight = 2}},
          {state = "2. section 1-C + section 2-silence", conditions = {weight = 1}},
          {state = "2. section 1-D + section 2-silence", conditions = {weight = 1}},
          {state = "2. section 1-silence + section 2-silence", conditions = {weight = 2}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"BCD"},
        layers_properties =
        {
          {
            silence_instead_of_sample_probability = 0.4,
          },
          {
            variant = 1,
            number_of_repetitions = 16,
          },
          {
            number_of_repetitions = 8,
            silence_instead_of_sample_probability = 1.0,
          },
        },
      },
      {
        name = "1. section 1-C + section 2-silence",
        next_states =
        {
          {state = "2. section 1-B + section 2-silence", conditions = {weight = 2}},
          {state = "2. section 1-C + section 2-silence", conditions = {weight = 1}},
          {state = "2. section 1-D + section 2-silence", conditions = {weight = 1}},
          {state = "2. section 1-silence + section 2-silence", conditions = {weight = 2}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"BCD"},
        layers_properties =
        {
          {
            silence_instead_of_sample_probability = 0.4,
          },
          {
            variant = 2,
            number_of_repetitions = 16,
          },
          {
            number_of_repetitions = 8,
            silence_instead_of_sample_probability = 1.0,
          },
        },
      },
      {
        name = "1. section 1-D + section 2-silence",
        next_states =
        {
          {state = "2. section 1-B + section 2-silence", conditions = {weight = 2}},
          {state = "2. section 1-C + section 2-silence", conditions = {weight = 1}},
          {state = "2. section 1-D + section 2-silence", conditions = {weight = 1}},
          {state = "2. section 1-silence + section 2-silence", conditions = {weight = 2}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"BCD"},
        layers_properties =
        {
          {
            silence_instead_of_sample_probability = 0.4,
          },
          {
            variant = 3,
            number_of_repetitions = 16,
          },
          {
            number_of_repetitions = 8,
            silence_instead_of_sample_probability = 1.0,
          },
        },
      },
      {
        name = "1. section 1-silence + section 2-silence",
        next_states =
        {
          {state = "2. section 1-B + section 2-silence", conditions = {weight = 2}},
          {state = "2. section 1-C + section 2-silence", conditions = {weight = 1}},
          {state = "2. section 1-D + section 2-silence", conditions = {weight = 1}},
          {state = "2. section 1-silence + section 2-silence", conditions = {weight = 2}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"BCD"},
        layers_properties =
        {
          {
            silence_instead_of_sample_probability = 0.4,
          },
          {
            number_of_repetitions = 16,
            silence_instead_of_sample_probability = 1.0,
          },
          {
            number_of_repetitions = 8,
            silence_instead_of_sample_probability = 1.0,
          },
        },
      },

      {
        name = "2. section 1-B + section 2-E",
        next_state = "intermezzo",
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"BCD"},
        layers_properties =
        {
          {
            silence_instead_of_sample_probability = 0.4,
          },
          {
            variant = 1,
            number_of_repetitions = 16,
          },
          {
            number_of_repetitions = 8,
          },
        },
      },
      {
        name = "2. section 1-C + section 2-E",
        next_state = "intermezzo",
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"BCD"},
        layers_properties =
        {
          {
            silence_instead_of_sample_probability = 0.4,
          },
          {
            variant = 2,
            number_of_repetitions = 16,
          },
          {
            number_of_repetitions = 8,
          },
        },
      },
      {
        name = "2. section 1-D + section 2-E",
        next_state = "intermezzo",
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"BCD"},
        layers_properties =
        {
          {
            silence_instead_of_sample_probability = 0.4,
          },
          {
            variant = 3,
            number_of_repetitions = 16,
          },
          {
            number_of_repetitions = 8,
          },
        },
      },
      {
        name = "2. section 1-silence + section 2-E",
        next_state = "intermezzo",
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"BCD"},
        layers_properties =
        {
          {
            silence_instead_of_sample_probability = 0.4,
          },
          {
            number_of_repetitions = 16,
            silence_instead_of_sample_probability = 1.0,
          },
          {
            number_of_repetitions = 8,
          },
        },
      },

      {
        name = "2. section 1-B + section 2-silence",
        next_state = "intermezzo",
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"BCD"},
        layers_properties =
        {
          {
            silence_instead_of_sample_probability = 0.4,
          },
          {
            variant = 1,
            number_of_repetitions = 16,
          },
          {
            number_of_repetitions = 8,
            silence_instead_of_sample_probability = 1.0,
          },
        },
      },
      {
        name = "2. section 1-C + section 2-silence",
        next_state = "intermezzo",
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"BCD"},
        layers_properties =
        {
          {
            silence_instead_of_sample_probability = 0.4,
          },
          {
            variant = 2,
            number_of_repetitions = 16,
          },
          {
            number_of_repetitions = 8,
            silence_instead_of_sample_probability = 1.0,
          },
        },
      },
      {
        name = "2. section 1-D + section 2-silence",
        next_state = "intermezzo",
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"BCD"},
        layers_properties =
        {
          {
            silence_instead_of_sample_probability = 0.4,
          },
          {
            variant = 3,
            number_of_repetitions = 16,
          },
          {
            number_of_repetitions = 8,
            silence_instead_of_sample_probability = 1.0,
          },
        },
      },
      {
        name = "2. section 1-silence + section 2-silence",
        next_state = "intermezzo",
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"BCD"},
        layers_properties =
        {
          {
            silence_instead_of_sample_probability = 0.4,
          },
          {
            number_of_repetitions = 16,
            silence_instead_of_sample_probability = 1.0,
          },
          {
            number_of_repetitions = 8,
            silence_instead_of_sample_probability = 1.0,
          },
        },
      },

      {
        name = "intermezzo",
        type = "intermezzo",
        next_state = "choosening",
        state_duration_seconds = 360,
      },
    }, --states
  }
}
