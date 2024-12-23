local function create_layered_variation(frame_index, has_shadow, has_glow)
  local width = 222
  local height = 270

  local width1 = 220
  local height1 = 168

  local width2 = 148
  local height2 = 198

  local width3 = 152
  local height3 = 164

  local widthS = 254
  local heightS = 216

  local widthE = 96
  local heightE = 118

  local line_length = 8

  local x = 0
  local y = 0
  local x1 = 0
  local y1 = 0
  local x2 = 0
  local y2 = 0
  local x3 = 0
  local y3 = 0
  local xS = 0
  local yS = 0
  local xE = 0
  local yE = 0

  if frame_index then
    local column_index = (frame_index - 1) % line_length
    local row_index = ((frame_index - 1) - column_index) / line_length
    x = column_index * width
    y = row_index * height
    x1 = column_index * width1
    y1 = row_index * height1
    x2 = column_index * width2
    y2 = row_index * height2
    x3 = column_index * width3
    y3 = row_index * height3
    xS = column_index * widthS
    yS = row_index * heightS
    xE = column_index * widthE
    yE = row_index * heightE
  end

  local result =
  {
    {
      render_layer = "lower-object-above-shadow",
      filename = "__space-age__/graphics/entity/cargo-hubs/connections/platform-connections-0.png",
      width = width,
      height = height,
      x = x,
      y = y,
      shift = util.by_pixel( 2.5, -1.0),
      scale = 0.5
    },
    {
      render_layer = "lower-object-overlay",
      filename = "__space-age__/graphics/entity/cargo-hubs/connections/platform-connections-1.png",
      width = width1,
      height = height1,
      x = x1,
      y = y1,
      shift = util.by_pixel( 0.5, -24.0),
      scale = 0.5
    },
    {
      render_layer = "object-under",
      filename = "__space-age__/graphics/entity/cargo-hubs/connections/platform-connections-2.png",
      width = width2,
      height = height2,
      x = x2,
      y = y2,
      shift = util.by_pixel( -2.5, -6.0),
      scale = 0.5
    },
    {
      render_layer = "object",
      layers =
      {
        {
          filename = "__space-age__/graphics/entity/cargo-hubs/connections/platform-connections-3.png",
          width = width3,
          height = height3,
          x = x3,
          y = y3,
          shift = util.by_pixel( -1.0, -20.5),
          scale = 0.5,
        }
      }
    }
  }
  if has_shadow then
    table.insert(result[4].layers,
                 {
                   filename = "__base__/graphics/entity/cargo-hubs/connections/shared-connections-shadow.png",
                   width = widthS,
                   height = heightS,
                   x = xS,
                   y = yS,
                   scale = 0.5,
                   shift = util.by_pixel( 32.5, 9.0),
                   draw_as_shadow = true
                 })
  end
  if has_glow then
    table.insert(result[4].layers,
                 {
                   filename = "__base__/graphics/entity/cargo-hubs/connections/shared-connections-emission.png",
                   width = widthE,
                   height = heightE,
                   x = xE,
                   y = yE,
                   shift = util.by_pixel( 0.5, -16.5),
                   scale = 0.5,
                   draw_as_glow = true,
                   blend_mode = "additive"
                 })
  end
  return result
end

return
{
  top_wall =
  {
    create_layered_variation( 5),
    create_layered_variation( 6),
    create_layered_variation( 7),
    create_layered_variation( 8)
  },
  right_wall =
  {
    create_layered_variation( 1, true),
    create_layered_variation( 2, true),
    create_layered_variation( 3, true),
    create_layered_variation( 4, true)
  },
  bottom_wall =
  {
    create_layered_variation( 9, false, true),
    create_layered_variation(10, true),
    create_layered_variation(11, true),
    create_layered_variation(12, true)
  },
  left_wall =
  {
    create_layered_variation(13),
    create_layered_variation(14),
    create_layered_variation(15),
    create_layered_variation(16)
  },
  top_left_outer_corner =
  {
    create_layered_variation(19),
    create_layered_variation(20)
  },
  top_right_outer_corner =
  {
    create_layered_variation(17, true),
    create_layered_variation(18, true)
  },
  bottom_left_outer_corner =
  {
    create_layered_variation(23, true),
    create_layered_variation(24, true)
  },
  bottom_right_outer_corner =
  {
    create_layered_variation(21, true),
    create_layered_variation(22, true, true)
  },
  top_left_inner_corner =
  {
    create_layered_variation(27),
    create_layered_variation(28)
  },
  top_right_inner_corner =
  {
    create_layered_variation(25, true),
    create_layered_variation(26, true)
  },
  bottom_left_inner_corner =
  {
    create_layered_variation(31),
    create_layered_variation(32, false, true)
  },
  bottom_right_inner_corner =
  {
    create_layered_variation(29, true),
    create_layered_variation(30, true)
  },
  bridge_horizontal_narrow =
  {
    create_layered_variation(38)
  },
  bridge_vertical_narrow =
  {
    create_layered_variation(33)
  },
  bridge_horizontal_wide =
  {
    create_layered_variation(34),
    create_layered_variation(35)
  },
  bridge_vertical_wide =
  {
    create_layered_variation(36),
    create_layered_variation(37)
  },
  bridge_crossing =
  {
    create_layered_variation(39),
    create_layered_variation(40)
  }
}
