return
{
  type = "ambient-sound",
  name = "vulcanus-interlude-1",
  track_type = "main-track",
  planet = "vulcanus",
  weight = 30,

  variable_sound =
  {
    length_seconds = 600,
    alignment_samples = 423360,

    layers =
    {
      {
        name = "A",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/vulcanus/interlude-1/interlude-1-a", 12, 1.0)
        },
        composition_mode = "randomized",
        number_of_sublayers = 2,
        sublayer_offset = 3,
      },

      {
        name = "B",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/vulcanus/interlude-1/interlude-1-b", 8, 1.0)
        },
        composition_mode = "randomized",
        number_of_sublayers = 2,
        sublayer_offset = 2,
      },
    }, --layers

    states =
    {
      {
        name = "long",
        next_states =
        {
          {state = "long", conditions = {weight = 1}},
          {state = "silence", conditions = {weight = 1}},
          {state = "short", conditions = {weight = 1}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"B"},
        layers_properties =
        {
          {
            silence_instead_of_sample_probability = 0.3,
          },
          {
            sequence_length = 12,
            number_of_repetitions = 1,
          },
        },
      },
      {
        name = "silence",
        next_states =
        {
          {state = "long", conditions = {weight = 1}},
          {state = "silence", conditions = {weight = 1}},
          {state = "short", conditions = {weight = 1}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"B"},
        layers_properties =
        {
          {
            silence_instead_of_sample_probability = 0.3,
          },
          {
            silence_instead_of_sample_probability = 1.0,
            sequence_length = 7,
            number_of_repetitions = 1,
          },
        },
      },
      {
        name = "short",
        next_states =
        {
          {state = "long", conditions = {weight = 1}},
          {state = "silence", conditions = {weight = 1}},
          {state = "short", conditions = {weight = 1}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"B"},
        layers_properties =
        {
          {
            silence_instead_of_sample_probability = 0.3,
          },
          {
            sequence_length = 7,
            number_of_repetitions = 1,
          },
        },
      },
    } --states
  }
}
