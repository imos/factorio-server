return
{
  type = "ambient-sound",
  name = "fulgora-interlude-4",
  track_type = "main-track",
  planet = "fulgora",
  weight = 15,

  variable_sound =
  {
    length_seconds = 300,
    alignment_samples = 44100,

    layers =
    {
      {
        name = "A",
        variants =
        {
          sound_variations("__space-age__/sound/ambient/fulgora/interlude-4/interlude-4", 4, 1.0)
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
            pause_between_repetitions = {2, 8},
          },
        },
      },
    } --states
  }
}
