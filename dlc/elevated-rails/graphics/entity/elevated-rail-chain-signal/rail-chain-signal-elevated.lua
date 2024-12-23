return
{
  structure =
  {
    layers =
    {
      util.sprite_load("__elevated-rails__/graphics/entity/elevated-rail-chain-signal/elevated-rail-chain-signal",
        {
          priority = "high",
          frame_count = 4,
          direction_count = 25,
          scale = 0.5,
        }
      ),
      util.sprite_load("__elevated-rails__/graphics/entity/elevated-rail-chain-signal/elevated-rail-chain-signal-lights",
        {
          priority = "low",
          blend_mode = "additive",
          draw_as_light = true,
          frame_count = 4,
          direction_count = 25,
          scale = 0.5,
        }
      ),
    }
  },
  structure_render_layer = "elevated-rail-stone-path",
  structure_align_to_animation_index =
  {
    --  X0Y0, X1Y0, X0Y1, X1Y1
    --  Left turn  | Straight/Multi |  Right turn
    00, 00, 00, 00,  00, 00, 00, 00,  00, 00, 00, 00, -- North
    01, 01, 01, 01,  01, 01, 01, 01,  02, 01, 01, 01,
    03, 03, 03, 03,  03, 03, 03, 03,  03, 03, 03, 03,
    05, 04, 04, 04,  04, 04, 04, 04,  04, 04, 04, 04,
    06, 06, 06, 06,  06, 06, 06, 06,  06, 06, 06, 06, -- East
    07, 07, 07, 07,  07, 07, 07, 07,  07, 08, 07, 07,
    09, 09, 09, 09,  09, 09, 09, 09,  09, 09, 09, 09,
    10, 11, 10, 10,  10, 10, 10, 10,  10, 10, 10, 10,
    12, 12, 12, 12,  12, 12, 12, 12,  12, 12, 12, 12, -- South
    14, 13, 13, 13,  13, 13, 13, 13,  13, 13, 13, 15,
    16, 16, 16, 16,  16, 16, 16, 16,  16, 16, 16, 16,
    17, 17, 17, 18,  17, 17, 17, 17,  17, 17, 17, 17,
    19, 19, 19, 19,  19, 19, 19, 19,  19, 19, 19, 19, -- West
    20, 20, 20, 20,  20, 20, 20, 20,  20, 20, 21, 20,
    22, 22, 22, 22,  22, 22, 22, 22,  22, 22, 22, 22,
    23, 23, 24, 23,  23, 23, 23, 23,  23, 23, 23, 23,
  },
  signal_color_to_structure_frame_index =
  {
    none   = 0,
    red    = 0,
    yellow = 1,
    green  = 2,
    blue   = 3,
  },
  selection_box_shift =
  {
    -- Given this affects SelectionBox, it is part of game state.
    -- NOTE: Those shifts are not processed (yet) by PrototypeAggregateValues::calculateBoxExtensionForSelectionBoxSearch()
    --    so if you exceed some reasonable values, a signal may become unselectable
    -- NOTE: only applies to normal selection box. It is ignored for chart selection box
    --

    --  X0Y0, X1Y0, X0Y1, X1Y1
    --  1st - Left turn
    --  2nd - Straight/Multi
    --  3rd - Right turn

    -- North
    {-0.06,-0.10}, {-0.06,-0.10}, {-0.06,-0.10}, {-0.06,-0.10},
    {-0.06,-0.10}, {-0.06,-0.10}, {-0.06,-0.10}, {-0.06,-0.10},
    {-0.06,-0.10}, {-0.06,-0.10}, {-0.06,-0.10}, {-0.06,-0.10},

    {-0.35,-0.37}, {-0.35,-0.37}, {-0.35,-0.37}, {-0.35,-0.37},
    {-0.35,-0.37}, {-0.35,-0.37}, {-0.35,-0.37}, {-0.35,-0.37},
    {-0.50,-0.50}, {-0.35,-0.37}, {-0.35,-0.37}, {-0.35,-0.37},

    {-0.18,-0.12}, {-0.18,-0.12}, {-0.18,-0.12}, {-0.18,-0.12},
    {-0.18,-0.12}, {-0.18,-0.12}, {-0.18,-0.12}, {-0.18,-0.12},
    {-0.18,-0.12}, {-0.18,-0.12}, {-0.18,-0.12}, {-0.18,-0.12},

    {-0.58,-0.58}, {-0.29,-0.43}, {-0.29,-0.43}, {-0.29,-0.43},
    {-0.29,-0.43}, {-0.29,-0.43}, {-0.29,-0.43}, {-0.29,-0.43},
    {-0.29,-0.43}, {-0.29,-0.43}, {-0.29,-0.43}, {-0.29,-0.43},


    -- East
    {-0.00,-0.11}, {-0.00,-0.11}, {-0.00,-0.11}, {-0.00,-0.11},
    {-0.00,-0.11}, {-0.00,-0.11}, {-0.00,-0.11}, {-0.00,-0.11},
    {-0.00,-0.11}, {-0.00,-0.11}, {-0.00,-0.11}, {-0.00,-0.11},

    { 0.21,-0.45}, { 0.21,-0.45}, { 0.21,-0.45}, { 0.21,-0.45},
    { 0.21,-0.45}, { 0.21,-0.45}, { 0.21,-0.45}, { 0.21,-0.45},
    { 0.21,-0.45}, { 0.53,-0.54}, { 0.21,-0.45}, { 0.21,-0.45},

    { 0.17,-0.15}, { 0.17,-0.15}, { 0.17,-0.15}, { 0.17,-0.15},
    { 0.17,-0.15}, { 0.17,-0.15}, { 0.17,-0.15}, { 0.17,-0.15},
    { 0.17,-0.15}, { 0.17,-0.15}, { 0.17,-0.15}, { 0.17,-0.15},

    { 0.49,-0.22}, { 0.52,-0.54}, { 0.49,-0.22}, { 0.49,-0.22},
    { 0.49,-0.22}, { 0.49,-0.22}, { 0.49,-0.22}, { 0.49,-0.22},
    { 0.49,-0.22}, { 0.49,-0.22}, { 0.49,-0.22}, { 0.49,-0.22},


    -- South
    { 0.06,-0.11}, { 0.06,-0.11}, { 0.06,-0.11}, { 0.06,-0.11},
    { 0.06,-0.11}, { 0.06,-0.11}, { 0.06,-0.11}, { 0.06,-0.11},
    { 0.06,-0.11}, { 0.06,-0.11}, { 0.06,-0.11}, { 0.06,-0.11},

    { 0.47,-0.11}, { 0.23, 0.05}, { 0.23, 0.05}, { 0.23, 0.05},
    { 0.23, 0.05}, { 0.23, 0.05}, { 0.23, 0.05}, { 0.23, 0.05},
    { 0.23, 0.05}, { 0.23, 0.05}, { 0.23, 0.05}, { 0.42, 0.07},

    {-0.01,-0.08}, {-0.01,-0.08}, {-0.01,-0.08}, {-0.01,-0.08},
    {-0.01,-0.08}, {-0.01,-0.08}, {-0.01,-0.08}, {-0.01,-0.08},
    {-0.01,-0.08}, {-0.01,-0.08}, {-0.01,-0.08}, {-0.01,-0.08},

    { 0.11, 0.01}, { 0.11, 0.01}, { 0.11, 0.01}, { 0.37, 0.19},
    { 0.11, 0.01}, { 0.11, 0.01}, { 0.11, 0.01}, { 0.11, 0.01},
    { 0.11, 0.01}, { 0.11, 0.01}, { 0.11, 0.01}, { 0.11, 0.01},


    -- West
    { 0.01,-0.17}, { 0.01,-0.17}, { 0.01,-0.17}, { 0.01,-0.17},
    { 0.01,-0.17}, { 0.01,-0.17}, { 0.01,-0.17}, { 0.01,-0.17},
    { 0.01,-0.17}, { 0.01,-0.17}, { 0.01,-0.17}, { 0.01,-0.17},

    {-0.03, 0.03}, {-0.03, 0.03}, {-0.03, 0.03}, {-0.03, 0.03},
    {-0.03, 0.03}, {-0.03, 0.03}, {-0.03, 0.03}, {-0.03, 0.03},
    {-0.03, 0.03}, {-0.03, 0.03}, {-0.31, 0.20}, {-0.03, 0.03},

    { 0.01,-0.18}, { 0.01,-0.18}, { 0.01,-0.18}, { 0.01,-0.18},
    { 0.01,-0.18}, { 0.01,-0.18}, { 0.01,-0.18}, { 0.01,-0.18},
    { 0.01,-0.18}, { 0.01,-0.18}, { 0.01,-0.18}, { 0.01,-0.18},

    {-0.39,-0.02}, {-0.39,-0.02}, {-0.35, 0.19}, {-0.39,-0.02},
    {-0.39,-0.02}, {-0.39,-0.02}, {-0.39,-0.02}, {-0.39,-0.02},
    {-0.39,-0.02}, {-0.39,-0.02}, {-0.39,-0.02}, {-0.39,-0.02},
  },
  rail_piece =
  {
    sprites = util.sprite_load(
      "__elevated-rails__/graphics/entity/elevated-rail-chain-signal/elevated-rail-chain-signal-metals",
      {
        priority = "low",
        frame_count = 35,
        scale = 0.5,
      }
    ),
    render_layer = "elevated-rail-stone-path-lower",
    align_to_frame_index =
    {
      --  X0Y0, X1Y0, X0Y1, X1Y1
      --  Left turn  | Straight/Multi |  Right turn
      00, 00, 00, 00,  00, 00, 00, 00,  00, 00, 00, 00, -- North
      01, 01, 01, 02,  01, 01, 01, 01,  03, 01, 01, 01,
      04, 04, 04, 04,  04, 04, 04, 04,  04, 04, 04, 04,
      08, 07, 05, 05,  05, 05, 05, 05,  05, 06, 05, 05,
      09, 09, 09, 09,  09, 09, 09, 09,  09, 09, 09, 09, -- East
      12, 10, 10, 10,  10, 10, 10, 10,  11, 13, 10, 10,
      14, 14, 14, 14,  14, 14, 14, 14,  14, 14, 14, 14,
      15, 17, 15, 15,  15, 15, 15, 15,  15, 15, 15, 16,
      18, 18, 18, 18,  18, 18, 18, 18,  18, 18, 18, 18, -- South
      20, 19, 19, 19,  19, 19, 19, 19,  19, 19, 19, 21,
      22, 22, 22, 22,  22, 22, 22, 22,  22, 22, 22, 22,
      23, 23, 23, 25,  23, 23, 23, 23,  23, 23, 24, 23,
      26, 26, 26, 26,  26, 26, 26, 26,  26, 26, 26, 26, -- West
      27, 27, 27, 28,  27, 27, 27, 27,  27, 27, 29, 27,
      30, 30, 30, 30,  30, 30, 30, 30,  30, 30, 30, 30,
      31, 31, 34, 31,  31, 31, 31, 31,  32, 33, 31, 31,
    }
  },
  upper_rail_piece =
  {
    sprites =
    {
      layers =
      {
        util.sprite_load(
          "__elevated-rails__/graphics/entity/elevated-rail-chain-signal/elevated-rail-chain-signal-metals-upper",
          {
            priority = "low",
            frame_count = 52,
            scale = 0.5,
          }
        ),
        util.sprite_load(
          "__elevated-rails__/graphics/entity/elevated-rail-chain-signal/elevated-rail-chain-signal-shadow",
          {
            priority = "low",
            frame_count = 52,
            draw_as_shadow = true,
            shift = {4.13, 2.75}, -- a guess not based on anything that kind of works
            scale = 0.5,
          }
        ),
      }
    },
    render_layer = "elevated-rail-screw",
    align_to_frame_index =
    {
      --  X0Y0, X1Y0, X0Y1, X1Y1
      --  Left turn  | Straight/Multi |  Right turn
      00, 01, 00, 00,  00, 01, 00, 00,  00, 01, 00, 00, -- North
      02, 02, 03, 05,  02, 02, 02, 04,  06, 02, 02, 04,
      07, 07, 08, 07,  07, 07, 08, 07,  07, 07, 08, 07,
      12, 11, 09, 09,  09, 09, 09, 09,  09, 10, 09, 09,
      13, 13, 13, 13,  13, 13, 13, 13,  13, 13, 13, 13, -- East
      16, 14, 14, 14,  14, 14, 14, 14,  15, 17, 14, 14,
      18, 19, 19, 19,  18, 19, 19, 19,  18, 19, 19, 19,
      20, 25, 22, 20,  20, 20, 21, 20,  20, 20, 23, 24,
      26, 27, 27, 27,  26, 27, 27, 27,  26, 27, 27, 27, -- South
      30, 29, 28, 28,  28, 29, 28, 28,  28, 29, 28, 31,
      32, 32, 33, 32,  32, 32, 33, 32,  32, 32, 33, 32,
      34, 34, 36, 38,  34, 34, 34, 34,  35, 34, 37, 34,
      39, 39, 39, 39,  39, 39, 39, 39,  39, 39, 39, 39, -- West
      40, 40, 40, 42,  40, 40, 40, 40,  40, 40, 43, 41,
      44, 44, 44, 45,  44, 44, 44, 45,  44, 44, 44, 45,
      48, 46, 51, 46,  47, 46, 46, 46,  49, 50, 46, 46,
    }
  },
  lights =
  {
    green  = { light = {intensity = 0.2, size = 4, color={0,   1,   0 }}, shift = { 0, 0 }},
    yellow = { light = {intensity = 0.2, size = 4, color={1,   0.5, 0 }}, shift = { 0, 0 }},
    red    = { light = {intensity = 0.2, size = 4, color={1,   0,   0 }}, shift = { 0, 0 }},
    blue   = { light = {intensity = 0.2, size = 4, color={0.4, 0.4, 1 }}, shift = { 0, 0 }},
  },
  circuit_connector = circuit_connector_definitions["elevated-rail-chain-signal"],
  circuit_connector_render_layer = "elevated-rail-stone-path-lower",
}
