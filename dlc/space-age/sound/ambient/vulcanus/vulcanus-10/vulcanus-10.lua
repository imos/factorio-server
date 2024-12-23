return
{
  type = "ambient-sound",
  name = "vulcanus-10",
  track_type = "main-track",
  planet = "vulcanus",
  weight = 15,

  variable_sound =
  {
    length_seconds = 600,
    alignment_samples = 151200,

    layers =
    {
      {
        name = "A1",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/vulcanus/vulcanus-10/vulcanus-10-a", 3, 1.0)
        },
        composition_mode = "randomized",
        sample_length = 16,
      },
      {
        name = "A2",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/vulcanus/vulcanus-10/vulcanus-10-a", 3, 1.0)
        },
        composition_mode = "randomized",
        sample_length = 16,
      },
      {
        name = "B1",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/vulcanus/vulcanus-10/vulcanus-10-b", 3, 1.0)
        },
        composition_mode = "randomized",
        sample_length = 16,
      },
      {
        name = "B2",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/vulcanus/vulcanus-10/vulcanus-10-b", 3, 1.0)
        },
        composition_mode = "randomized",
        sample_length = 16,
      },
      {
        name = "C1",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/vulcanus/vulcanus-10/vulcanus-10-c", 12, 1.0)
        },
        composition_mode = "layer-controlled",
        control_layer = "A1",
        control_layer_sample_mapping =
        {
          {1, 2, 3, 4},
          {5, 6, 7, 8},
          {9, 10, 11, 12},
        },
        sample_length = 16,
      },
      {
        name = "C2",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/vulcanus/vulcanus-10/vulcanus-10-c", 12, 1.0)
        },
        composition_mode = "layer-controlled",
        control_layer = "A2",
        control_layer_sample_mapping =
        {
          {1, 2, 3, 4},
          {5, 6, 7, 8},
          {9, 10, 11, 12},
        },
        sample_length = 16,
      },


      {
        name = "C3",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/vulcanus/vulcanus-10/vulcanus-10-c", 12, 1.0)
        },
        composition_mode = "layer-controlled",
        control_layer = "C4",
        control_layer_sample_mapping =
        {
          -- 1-4
          {5, 6, 7, 8, 9, 10, 11, 12},
          {5, 6, 7, 8, 9, 10, 11, 12},
          {5, 6, 7, 8, 9, 10, 11, 12},
          {5, 6, 7, 8, 9, 10, 11, 12},
          -- 5-8
          {1, 2, 3, 4, 9, 10, 11, 12},
          {1, 2, 3, 4, 9, 10, 11, 12},
          {1, 2, 3, 4, 9, 10, 11, 12},
          {1, 2, 3, 4, 9, 10, 11, 12},
          -- 9-12
          {1, 2, 3, 4, 5, 6, 7, 8},
          {1, 2, 3, 4, 5, 6, 7, 8},
          {1, 2, 3, 4, 5, 6, 7, 8},
          {1, 2, 3, 4, 5, 6, 7, 8},
        },
        sample_length = 8,
      },
      {
        name = "C4",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/vulcanus/vulcanus-10/vulcanus-10-c", 12, 1.0)
        },
        composition_mode = "layer-controlled",
        control_layer = "C3",
        control_layer_sample_mapping =
        {
          -- 1-4
          {5, 6, 7, 8, 9, 10, 11, 12},
          {5, 6, 7, 8, 9, 10, 11, 12},
          {5, 6, 7, 8, 9, 10, 11, 12},
          {5, 6, 7, 8, 9, 10, 11, 12},
          -- 5-8
          {1, 2, 3, 4, 9, 10, 11, 12},
          {1, 2, 3, 4, 9, 10, 11, 12},
          {1, 2, 3, 4, 9, 10, 11, 12},
          {1, 2, 3, 4, 9, 10, 11, 12},
          -- 9-12
          {1, 2, 3, 4, 5, 6, 7, 8},
          {1, 2, 3, 4, 5, 6, 7, 8},
          {1, 2, 3, 4, 5, 6, 7, 8},
          {1, 2, 3, 4, 5, 6, 7, 8},
        },
        sample_length = 8,
      },
    }, --layers

    states =
    {
      {
        name = "the choosening",
        next_states =
        {
          {state = "cycle 1", conditions = {weight = 1}},
          {state = "cycle 2", conditions = {weight = 1}},
        },
        next_state_trigger = "duration",
        state_duration_seconds = 0,
        layers_properties =
        {
          {enabled = false},
          {enabled = false},
          {enabled = false},
          {enabled = false},
          {enabled = false},
          {enabled = false},
          {enabled = false},
          {enabled = false},
        },
      },

      {
        name = "cycle 1",
        next_state = "cycle 2",
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"A1"},
        layers_properties =
        {
          -- A1
          {
            sequence_length = 4,
            number_of_repetitions = {2, 4},
          },
          -- A2
          {
            start_pause = 8,
            sequence_length = 4,
          },
          -- B1
          {
            start_pause = 4,
            sequence_length = 4,
          },
          -- B2
          {
            start_pause = 12,
            sequence_length = 4,
          },
          -- C1
          {
            start_pause = 1,
            sequence_length = 4,
          },
          -- C2
          {
            start_pause = 9,
            sequence_length = 4,
          },

          {enabled = false},
          {enabled = false},
        }
      },

      {
        name = "cycle 2",
        next_state = "cycle 1",
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"C3"},
        layers_properties =
        {
          {enabled = false},
          {enabled = false},
          {enabled = false},
          {enabled = false},
          {enabled = false},
          {enabled = false},

          -- C3
          {
            sequence_length = 4,
            number_of_repetitions = {2, 4},
          },
          -- C4
          {
            start_pause = 4,
            sequence_length = 4,
          },
        }
      },
    }, --states
  }
}
