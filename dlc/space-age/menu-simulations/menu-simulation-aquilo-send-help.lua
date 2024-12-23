return
  [[
    game.forces.player.custom_color = {0.0, 0.5, 1.0, 0.5}
    game.forces.enemy.custom_color = {0.0, 1.0, 0.5, 0.5}
    game.forces.neutral.custom_color = {1.0, 0.4, 0.8, 0.5}

    local neutral_character = game.surfaces.aquilo.find_entities_filtered{name = "character", force = "neutral", limit = 1}[1]
    neutral_character.walking_state = {walking = true, direction = defines.direction.northeast}
    neutral_character.walking_state = {walking = false}

    local character = game.surfaces.aquilo.find_entities_filtered{name = "character", force = "player", limit = 1}[1]

    local h_points = {{1, 2}, {1, 1}, {1, 0}, {1, -1}, {1, -2}, {0, 0}, {-1, 2}, {-1, 1}, {-1, 0}, {-1, -1}, {-1, -2}}
    local h_count = 11
    local e_points = {{1, 2}, {0, 2}, {1, 0}, {0, 0}, {1, -2}, {0, -2}, {-1, 2}, {-1, 1}, {-1, 0}, {-1, -1}, {-1, -2}}
    local e_count = 11
    local l_points = {{1, 2}, {0, 2}, {-1, 2}, {-1, 1}, {-1, 0}, {-1, -1}, {-1, -2}}
    local l_count = 7
    local p_points = {{0, 0}, {1, 0}, {1, -1}, {1, -2}, {0, -2}, {-1, -2}, {-1, -1}, {-1, 0}, {-1, 1}, {-1, 2}}
    local p_count = 10

    local concrete_tile_string = "0eNpljsEKwjAQRP9lzvEQU9OaXxEPtS6ykG5KE0UJ+Xe3evDgaeANb5iKS7zTsrIUhAqekmSEU0Xmm4xxYzLOhABtppUKoRmwXOmJYNvZoHCkr7KkzIWTbJK2O2cNXpq2U+VvRVUuNCv7PTB40Jo/E/vBdoM7+N55b/tja28Iqzbt"
    local draw_letter = function(points, count, origin)
      if count >= 1 then
        local point = {origin[1] + points[count][1], origin[2] + points[count][2]}
        game.surfaces.aquilo.create_entities_from_blueprint_string
        {
          string = concrete_tile_string,
          position = point
        }
        game.surfaces.aquilo.play_sound{path = "tile-build-small/concrete", position = point}
        return count - 1
      end
    end

    on_tick = function()
      if tick==280 then
        character.walking_state = {walking = true, direction = defines.direction.north}
        character.character_running_speed_modifier = -0.25
      end
      if tick==320 then
        character.walking_state = {walking = true, direction = defines.direction.northwest}
      end
      if tick==340 then
        character.walking_state = {walking = true, direction = defines.direction.northeast}
        character.walking_state = {walking = false}
      end
      if tick>400 and tick%3==0 and h_count>=1 then
        h_count = draw_letter (h_points, h_count, {-25.5, -27.5})
      end
      if tick>440 and tick%3==0 and e_count>=1 then
        e_count = draw_letter (e_points, e_count, {-21.5, -27.5})
      end
      if tick>480 and tick%3==0 and l_count>=1 then
        l_count = draw_letter (l_points, l_count, {-17.5, -27.5})
      end
      if tick>510 and tick%3==0 and p_count>=1 then
        p_count = draw_letter (p_points, p_count, {-13.5, -27.5})
      end
    end
  ]]
