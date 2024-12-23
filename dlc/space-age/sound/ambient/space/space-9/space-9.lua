local number_of_repetitions =
{
  {8, 33},
  {12, 34},
  {16, 33},
}

return
{
  type = "ambient-sound",
  name = "space-9",
  track_type = "main-track",
  weight = 10,

  variable_sound =
  {
    length_seconds = 1200,
    alignment_samples = 120274,

    layers =
    {
      {
        name = "Random 1",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/space/space-9/space-9-a", 24, 1.0),
          sound_variations("__space-age__/sound/ambient/space/space-9/space-9-b", 72, 1.0),
          sound_variations("__space-age__/sound/ambient/space/space-9/space-9-c", 72, 1.0),
          sound_variations("__space-age__/sound/ambient/space/space-9/space-9-d", 72, 1.0),
          sound_variations("__space-age__/sound/ambient/space/space-9/space-9-e", 24, 1.0),
          sound_variations("__space-age__/sound/ambient/space/space-9/space-9-g", 24, 1.0),
          sound_variations("__space-age__/sound/ambient/space/space-9/space-9-h", 24, 1.0),
          sound_variations("__space-age__/sound/ambient/space/space-9/space-9-i", 72, 1.0),
          sound_variations("__space-age__/sound/ambient/space/space-9/space-9-j", 24, 1.0),
          sound_variations("__space-age__/sound/ambient/space/space-9/space-9-n", 72, 1.0),
        },
        composition_mode = "randomized",
        number_of_sublayers = 2,
        sublayer_offset = 4,
      },
      {
        name = "Random 2",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/space/space-9/space-9-a", 24, 1.0),
          sound_variations("__space-age__/sound/ambient/space/space-9/space-9-h", 24, 1.0),
        },
        composition_mode = "randomized",
        number_of_sublayers = 2,
        sublayer_offset = 4,
      },
      {
        name = "Random 3",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/space/space-9/space-9-m", 24, 1.0),
        },
        composition_mode = "randomized",
        number_of_sublayers = 2,
        sublayer_offset = 2,
      },

      {
        name = "Layer controlled 1-3",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/space/space-9/space-9-b", 72, 1.0),
          sound_variations("__space-age__/sound/ambient/space/space-9/space-9-c", 72, 1.0),
          sound_variations("__space-age__/sound/ambient/space/space-9/space-9-d", 72, 1.0),
          sound_variations("__space-age__/sound/ambient/space/space-9/space-9-i", 72, 1.0),
          sound_variations("__space-age__/sound/ambient/space/space-9/space-9-n", 72, 1.0),
        },
        composition_mode = "layer-controlled",
        control_layer = "Random 1",
        control_layer_sample_mapping =
        {
          { 1,  2,  3}, { 4,  5,  6}, { 7,  8,  9}, {10, 11, 12}, {13, 14, 15}, {16, 17, 18},
          {19, 20, 21}, {22, 23, 24}, {25, 26, 27}, {28, 29, 30}, {31, 32, 33}, {34, 35, 36},
          {37, 38, 39}, {40, 41, 42}, {43, 44, 45}, {46, 47, 48}, {49, 50, 51}, {52, 53, 54},
          {55, 56, 57}, {58, 59, 60}, {61, 62, 63}, {64, 65, 66}, {67, 68, 69}, {70, 71, 72},
        },
        number_of_sublayers = 2,
        sublayer_offset = 4,
      },
      {
        name = "Layer controlled 1-1",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/space/space-9/space-9-bas", 24, 1.0),
          sound_variations("__space-age__/sound/ambient/space/space-9/space-9-e", 24, 1.0),
          sound_variations("__space-age__/sound/ambient/space/space-9/space-9-g", 24, 1.0),
          sound_variations("__space-age__/sound/ambient/space/space-9/space-9-j", 24, 1.0),
        },
        composition_mode = "layer-controlled",
        control_layer = "Random 1",
        control_layer_sample_mapping =
        {
          {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, {9}, {10}, {11}, {12},
          {13}, {14}, {15}, {16}, {17}, {18}, {19}, {20}, {21}, {22}, {23}, {24},
        },
        number_of_sublayers = 2,
        sublayer_offset = 4,
      },

      {
        name = "RH",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/space/space-9/space-9-rh", 4, 1.0),
        },
        composition_mode = "randomized",
      },
      {
        name = "Ambi",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/space/space-9/space-9-ambi", 4, 1.0),
        },
        composition_mode = "randomized",
      },
      {
        name = "Final",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/space/space-9/space-9-final", 24, 1.0),
        },
        composition_mode = "layer-controlled",
        control_layer = "Random 3",
        control_layer_sample_mapping =
        {
          {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, {9}, {10}, {11}, {12},
          {13}, {14}, {15}, {16}, {17}, {18}, {19}, {20}, {21}, {22}, {23}, {24},
        },
        sample_length = 8,
      },
    }, -- layers

    states =
    {
      {
        name = "Intro",
        next_states =
        {
          {state = "Part 1", conditions = {weight = 1}},
          {state = "Part 2-1-1", conditions = {weight = 1}},
          {state = "Part 3", conditions = {weight = 1}},
          {state = "Part 16", conditions = {weight = 1}},
          {state = "Part 17", conditions = {weight = 1}},
          {state = "Part 18", conditions = {weight = 1}},
          {state = "Part 19", conditions = {weight = 1}},
          {state = "Part 25", conditions = {weight = 1}},
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

          {
            start_pause = {10, 55},
            pause_between_repetitions = {10, 30},
          },
          {
            start_pause = {10, 55},
            pause_between_repetitions = {10, 30},
          },
          {enabled = false},
        },
      },
      {
        name = "End",
        next_states =
        {
          {state = "Part 1", conditions = {weight = 1}},
          {state = "Part 2-1-2", conditions = {weight = 1}},
          {state = "Part 3", conditions = {weight = 1}},
          {state = "Part 16", conditions = {weight = 1}},
          {state = "Part 17", conditions = {weight = 1}},
          {state = "Part 18", conditions = {weight = 1}},
          {state = "Part 19", conditions = {weight = 1}},
          {state = "Part 25", conditions = {weight = 1}},
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
        name = "Part 1",
        next_states =
        {
          {state = "Conclusion 1", conditions = {weight = 1, previous_state = "Intro"}},
          {state = "Stop", conditions = {weight = 1, previous_state = "End"}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 1, -- A,
            number_of_repetitions = number_of_repetitions,
            pause_between_repetitions = 1,
          },
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
        name = "Part 2-1-1",
        next_state = "Part 2-2",
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 1, -- A,
            number_of_repetitions =
            {
              {5, 33},
              {7, 34},
              {11, 33}
            },
            pause_between_repetitions = 1,
            end_pause = 4,
          },
          {
            variant = 2, -- H,
            pause_between_repetitions = 1,
          },
          {enabled = false},

          {enabled = false},
          {enabled = false},

          {enabled = false},
          {enabled = false},
          {enabled = false},
        },
      },
      {
        name = "Part 2-1-2",
        next_state = "Part 2-2",
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 1, -- A,
            number_of_repetitions = number_of_repetitions,
            pause_between_repetitions = 1,
            end_pause = 4,
          },
          {
            variant = 2, -- H,
            pause_between_repetitions = 1,
          },
          {enabled = false},

          {enabled = false},
          {enabled = false},

          {enabled = false},
          {enabled = false},
          {enabled = false},
        },
      },
      {
        name = "Part 2-2",
        next_states =
        {
          {state = "Conclusion 1", conditions = {weight = 1, previous_state = "Part 2-1-1"}},
          {state = "Stop", conditions = {weight = 1, previous_state = "Part 2-1-2"}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 1, -- A,
            number_of_repetitions = 1,
          },
          {
            variant = 2, -- H,
            number_of_repetitions = 1,
          },
          {enabled = false},

          {enabled = false},
          {enabled = false},

          {enabled = false},
          {enabled = false},
          {enabled = false},
        },
      },
      {
        name = "Part 3",
        next_states =
        {
          {state = "Conclusion 1", conditions = {weight = 1, previous_state = "Intro"}},
          {state = "Stop", conditions = {weight = 1, previous_state = "End"}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 1, -- A,
            number_of_repetitions = number_of_repetitions,
            pause_between_repetitions = 1,
          },
          {enabled = false},
          {enabled = false},

          {enabled = false},
          {
            variant = 4, -- J
            pause_between_repetitions = 1,
          },

          {enabled = false},
          {enabled = false},
          {enabled = false},
        },
      },
      {
        name = "Part 16",
        next_states =
        {
          {state = "Conclusion 1", conditions = {weight = 1, previous_state = "Intro"}},
          {state = "Stop", conditions = {weight = 1, previous_state = "End"}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 10, -- N,
            number_of_repetitions = number_of_repetitions,
            pause_between_repetitions = 1,
          },
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
        name = "Part 17",
        next_states =
        {
          {state = "Conclusion 1", conditions = {weight = 1, previous_state = "Intro"}},
          {state = "Stop", conditions = {weight = 1, previous_state = "End"}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 3, -- C,
            number_of_repetitions = number_of_repetitions,
            pause_between_repetitions = 1,
          },
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
        name = "Part 18",
        next_states =
        {
          {state = "Conclusion 1", conditions = {weight = 1, previous_state = "Intro"}},
          {state = "Stop", conditions = {weight = 1, previous_state = "End"}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 4, -- D,
            number_of_repetitions = number_of_repetitions,
            pause_between_repetitions = 1,
          },
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
        name = "Part 19",
        next_states =
        {
          {state = "Conclusion 1", conditions = {weight = 1, previous_state = "Intro"}},
          {state = "Stop", conditions = {weight = 1, previous_state = "End"}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 2, -- B,
            number_of_repetitions = number_of_repetitions,
            pause_between_repetitions = 1,
          },
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
        name = "Part 25",
        next_states =
        {
          {state = "Conclusion 1", conditions = {weight = 1, previous_state = "Intro"}},
          {state = "Stop", conditions = {weight = 1, previous_state = "End"}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 8, -- I,
            number_of_repetitions = number_of_repetitions,
            pause_between_repetitions = 1,
          },
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
        name = "Conclusion 1",
        next_states =
        {
          {state = "Part 20", conditions = {weight = 1}},
          {state = "Part 21", conditions = {weight = 1}},
          {state = "Part 22", conditions = {weight = 1}},
          {state = "Part 23", conditions = {weight = 1}},
          {state = "Part 24", conditions = {weight = 1}},
          {state = "Part 26", conditions = {weight = 1}},
          {state = "Part 27", conditions = {weight = 1}},
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

          {
            start_pause = {0, 30},
            pause_between_repetitions = {0, 55},
          },
          {
            start_pause = {0, 15},
            pause_between_repetitions = {10, 25},
          },
          {enabled = false},
        },
      },
      {
        name = "Conclusion 4",
        next_states =
        {
          {state = "Part 20", conditions = {weight = 1}},
          {state = "Part 21", conditions = {weight = 1}},
          {state = "Part 22", conditions = {weight = 1}},
          {state = "Part 23", conditions = {weight = 1}},
          {state = "Part 24", conditions = {weight = 1}},
          {state = "Part 26", conditions = {weight = 1}},
          {state = "Part 27", conditions = {weight = 1}},
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

          {
            start_pause = {0, 30},
          },
          {
            start_pause = {0, 15},
          },
          {enabled = false},
        },
      },

      {
        name = "Part 20",
        next_states =
        {
          {state = "Conclusion 2", conditions = {weight = 1, previous_state = "Conclusion 1"}},
          {state = "End", conditions = {weight = 1, previous_state = "Conclusion 4"}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 6, -- G,
            number_of_repetitions = number_of_repetitions,
          },
          {enabled = false},
          {enabled = false},

          {
            variant = 2, -- C
          },
          {enabled = false},

          {enabled = false},
          {enabled = false},
          {enabled = false},
        },
      },
      {
        name = "Part 21",
        next_states =
        {
          {state = "Conclusion 2", conditions = {weight = 1, previous_state = "Conclusion 1"}},
          {state = "End", conditions = {weight = 1, previous_state = "Conclusion 4"}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 6, -- G,
            number_of_repetitions = number_of_repetitions,
          },
          {enabled = false},
          {enabled = false},

          {
            variant = 2, -- C
          },
          {
            variant = 1, -- Bas
          },

          {enabled = false},
          {enabled = false},
          {enabled = false},
        },
      },
      {
        name = "Part 22",
        next_states =
        {
          {state = "Conclusion 2", conditions = {weight = 1, previous_state = "Conclusion 1"}},
          {state = "End", conditions = {weight = 1, previous_state = "Conclusion 4"}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 6, -- G,
            number_of_repetitions = number_of_repetitions,
          },
          {enabled = false},
          {enabled = false},

          {
            variant = 1, -- B
          },
          {enabled = false},

          {enabled = false},
          {enabled = false},
          {enabled = false},
        },
      },
      {
        name = "Part 23",
        next_states =
        {
          {state = "Conclusion 2", conditions = {weight = 1, previous_state = "Conclusion 1"}},
          {state = "End", conditions = {weight = 1, previous_state = "Conclusion 4"}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 5, -- E,
            number_of_repetitions = number_of_repetitions,
          },
          {enabled = false},
          {enabled = false},

          {
            variant = 2, -- C
          },
          {enabled = false},

          {enabled = false},
          {enabled = false},
          {enabled = false},
        },
      },
      {
        name = "Part 24",
        next_states =
        {
          {state = "Conclusion 2", conditions = {weight = 1, previous_state = "Conclusion 1"}},
          {state = "End", conditions = {weight = 1, previous_state = "Conclusion 4"}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 5, -- E,
            number_of_repetitions = number_of_repetitions,
          },
          {enabled = false},
          {enabled = false},

          {
            variant = 1, -- C
          },
          {enabled = false},

          {enabled = false},
          {enabled = false},
          {enabled = false},
        },
      },
      {
        name = "Part 26",
        next_states =
        {
          {state = "Conclusion 2", conditions = {weight = 1, previous_state = "Conclusion 1"}},
          {state = "End", conditions = {weight = 1, previous_state = "Conclusion 4"}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 6, -- G,
            number_of_repetitions = number_of_repetitions,
          },
          {enabled = false},
          {enabled = false},

          {
            variant = 4, -- I
          },
          {enabled = false},

          {enabled = false},
          {enabled = false},
          {enabled = false},
        },
      },
      {
        name = "Part 27",
        next_states =
        {
          {state = "Conclusion 2", conditions = {weight = 1, previous_state = "Conclusion 1"}},
          {state = "End", conditions = {weight = 1, previous_state = "Conclusion 4"}},
        },
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 5, -- E,
            number_of_repetitions = number_of_repetitions,
          },
          {enabled = false},
          {enabled = false},

          {
            variant = 4, -- I
          },
          {enabled = false},

          {enabled = false},
          {enabled = false},
          {enabled = false},
        },
      },

      {
        name = "Conclusion 2",
        next_states =
        {
          {state = "Part 4", conditions = {weight = 1}},
          {state = "Part 5", conditions = {weight = 1}},
          {state = "Part 6", conditions = {weight = 1}},
          {state = "Part 7", conditions = {weight = 1}},
          {state = "Part 8", conditions = {weight = 1}},
          {state = "Part 9", conditions = {weight = 1}},
          {state = "Part 10", conditions = {weight = 1}},
          {state = "Part 11", conditions = {weight = 1}},
          {state = "Part 12", conditions = {weight = 1}},
          {state = "Part 13", conditions = {weight = 1}},
          {state = "Part 14", conditions = {weight = 1}},
          {state = "Part 15", conditions = {weight = 1}},
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

          {
            start_pause = {0, 30},
            pause_between_repetitions = {0, 55},
          },
          {
            start_pause = {0, 15},
            pause_between_repetitions = {10, 25},
          },
          {enabled = false},
        },
      },

      {
        name = "Part 4",
        next_state = "Conclusion 3",
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 1, -- A,
            number_of_repetitions = number_of_repetitions,
          },
          {enabled = false},
          {enabled = false},

          {
            variant = 2, -- C
          },
          {enabled = false},

          {enabled = false},
          {enabled = false},
          {enabled = false},
        },
      },
      {
        name = "Part 5",
        next_state = "Conclusion 3",
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 1, -- A,
            number_of_repetitions = number_of_repetitions,
          },
          {enabled = false},
          {enabled = false},

          {
            variant = 5, -- N
          },
          {enabled = false},

          {enabled = false},
          {enabled = false},
          {enabled = false},
        },
      },
      {
        name = "Part 6",
        next_state = "Conclusion 3",
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 1, -- A,
            number_of_repetitions = number_of_repetitions,
          },
          {enabled = false},
          {enabled = false},

          {
            variant = 3, -- D
          },
          {enabled = false},

          {enabled = false},
          {enabled = false},
          {enabled = false},
        },
      },
      {
        name = "Part 7",
        next_state = "Conclusion 3",
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 1, -- A,
            number_of_repetitions = number_of_repetitions,
          },
          {
            variant = 2, -- H,
          },
          {enabled = false},

          {
            variant = 5, -- N
          },
          {enabled = false},

          {enabled = false},
          {enabled = false},
          {enabled = false},
        },
      },
      {
        name = "Part 8",
        next_state = "Conclusion 3",
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 7, -- H,
            number_of_repetitions = number_of_repetitions,
          },
          {
            variant = 1, -- A,
          },
          {enabled = false},

          {
            variant = 5, -- N
          },
          {enabled = false},

          {enabled = false},
          {enabled = false},
          {enabled = false},
        },
      },
      {
        name = "Part 9",
        next_state = "Conclusion 3",
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 1, -- A,
            number_of_repetitions = number_of_repetitions,
          },
          {enabled = false},
          {enabled = false},

          {
            variant = 2, -- C
          },
          {
            variant = 3, -- G
          },

          {enabled = false},
          {enabled = false},
          {enabled = false},
        },
      },
      {
        name = "Part 10",
        next_state = "Conclusion 3",
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 1, -- A,
            number_of_repetitions = number_of_repetitions,
          },
          {enabled = false},
          {enabled = false},

          {
            variant = 1, -- B
          },
          {
            variant = 3, -- G
          },

          {enabled = false},
          {enabled = false},
          {enabled = false},
        },
      },
      {
        name = "Part 11",
        next_state = "Conclusion 3",
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 1, -- A,
            number_of_repetitions = number_of_repetitions,
          },
          {enabled = false},
          {enabled = false},

          {
            variant = 2, -- C
          },
          {
            variant = 2, -- E
          },

          {enabled = false},
          {enabled = false},
          {enabled = false},
        },
      },
      {
        name = "Part 12",
        next_state = "Conclusion 3",
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 1, -- A,
            number_of_repetitions = number_of_repetitions,
          },
          {enabled = false},
          {enabled = false},

          {
            variant = 1, -- B
          },
          {
            variant = 2, -- E
          },

          {enabled = false},
          {enabled = false},
          {enabled = false},
        },
      },
      {
        name = "Part 13",
        next_state = "Conclusion 3",
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 7, -- H,
            number_of_repetitions = number_of_repetitions,
          },
          {enabled = false},
          {enabled = false},

          {
            variant = 4, -- I
          },
          {enabled = false},

          {enabled = false},
          {enabled = false},
          {enabled = false},
        },
      },
      {
        name = "Part 14",
        next_state = "Conclusion 3",
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 7, -- H,
            number_of_repetitions = number_of_repetitions,
          },
          {enabled = false},
          {enabled = false},

          {
            variant = 4, -- I
          },
          {
            variant = 3, -- G
          },

          {enabled = false},
          {enabled = false},
          {enabled = false},
        },
      },
      {
        name = "Part 15",
        next_state = "Conclusion 3",
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 1"},
        layers_properties =
        {
          {
            variant = 7, -- H,
            number_of_repetitions = number_of_repetitions,
          },
          {enabled = false},
          {enabled = false},

          {
            variant = 4, -- I
          },
          {
            variant = 2, -- E
          },

          {enabled = false},
          {enabled = false},
          {enabled = false},
        },
      },

      {
        name = "Conclusion 3",
        next_states =
        {
          {state = "Part 28-1", conditions = {weight = 1}},
          {state = "Conclusion 4", conditions = {weight = 1}},
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

          {
            start_pause = {0, 30},
            pause_between_repetitions = {0, 55},
          },
          {
            start_pause = {0, 15},
            pause_between_repetitions = {10, 25},
          },
          {enabled = false},
        },
      },
      {
        name = "Part 28-1",
        next_state = "Part 28-2",
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Random 3"},
        layers_properties =
        {
          {enabled = false},
          {enabled = false},
          {
            number_of_repetitions =
            {
              -- the last repetition is played in "Part 28-2"{
              {5, 33},
              {7, 34},
              {11, 33},
            },
          },

          {enabled = false},
          {enabled = false},

          {enabled = false},
          {enabled = false},
          {enabled = false},
        },
      },
      {
        name = "Part 28-2",
        next_state = "Conclusion 4",
        next_state_trigger = "layers-finished",
        next_state_layers_finished_layers = {"Final"},
        layers_properties =
        {
          {enabled = false},
          {enabled = false},
          {
            number_of_repetitions = 1, -- last one
            end_pause = 4,
          },

          {enabled = false},
          {enabled = false},

          {enabled = false},
          {enabled = false},
          {
            start_pause = 2,
            number_of_repetitions = 1,
          },
        },
      },

      {
        name = "Stop",
        type = "stop",
      },
    } -- states
  }
}
