return
  [[
    game.forces.player.reset()
    game.forces.player.character_health_bonus = 300000
    game.forces.enemy.technologies["weapon-shooting-speed-3"].researched = true;
    game.forces.enemy.technologies["weapon-shooting-speed-4"].researched = true;
    game.forces.enemy.technologies["weapon-shooting-speed-5"].researched = true;
    game.forces.enemy.technologies["weapon-shooting-speed-6"].researched = true;
    game.forces.enemy.character_health_bonus = 300000

    local second_lock = game.surfaces.vulcanus.find_entities_filtered{name = "constant-combinator", limit = 1}[1].get_control_behavior()
    local character = game.surfaces.vulcanus.find_entities_filtered{name = "character", force = "player", limit = 1}[1]
    character.walking_state = {walking = true, direction = defines.direction.southeast}
    character.character_running_speed_modifier = -0.25

    local demoman = game.surfaces.vulcanus.find_entities_filtered{name = "small-demolisher", limit = 1}[1]

    local bait = game.surfaces.vulcanus.find_entities_filtered{name = "character", force = "enemy", limit = 1}[1]
    bait.position.y = 2 + bait.position.y

    on_tick = function()
      if tick == 100 and character.valid then
        character.walking_state = {walking = true, direction = defines.direction.south}
      end
      if tick == 155 and character.valid  then
        character.walking_state = {walking = false}
      end
      if tick == 340 and character.valid then
        character.walking_state = {walking = true, direction = defines.direction.south}
        character.character_running_speed_modifier = -0.5
      end
      if tick == 370 and bait.valid then
        bait.walking_state = {walking = true, direction = defines.direction.east}
        bait.walking_state.character_running_speed_modifier = -0.8
      end
      if tick == 400 then
        if (second_lock.valid) then
          second_lock.enabled = true
        end
        if (character.valid) then
          character.character_running_speed_modifier = -0.6
        end
        if (bait.valid) then
          bait.shooting_state = {state = defines.shooting.shooting_enemies, position = demoman.position}
        end
      end
      if tick == 450 and bait.valid then
        bait.shooting_state = {state = defines.shooting.shooting_enemies, position = demoman.position}
      end
      if tick == 455 and character.valid then
        character.walking_state = {walking = false}
        character.character_running_speed_modifier = -0.25
      end
      if tick == 500 and bait.valid then
        bait.shooting_state = {}
        bait.walking_state.character_running_speed_modifier = 0.0
        bait.walking_state = {walking = true, direction = defines.direction.east}
      end
      if tick == 550 and bait.valid then
        bait.shooting_state = {state = defines.shooting.shooting_enemies, position = demoman.position}
      end
      if tick == 600 and bait.valid then
        bait.walking_state = {walking = true, direction = defines.direction.east}
        bait.shooting_state = {state = defines.shooting.shooting_enemies, position = demoman.position}
        game.surfaces.vulcanus.create_entity{name = "poison-capsule", position = bait.position, speed = 0.3, target = demoman.position, force = "enemy"}
      end
      if tick == 750 and bait.valid then
        bait.shooting_state = {state = defines.shooting.shooting_enemies, position = demoman.position}
      end
      if tick == 700 and bait.valid then
        bait.shooting_state = {}
        bait.walking_state.character_running_speed_modifier = -0.5
        bait.walking_state = {walking = true, direction = defines.direction.east}
      end
      if tick == 850 and bait.valid then
        bait.shooting_state = {}
        bait.walking_state.character_running_speed_modifier = -0.3
        game.surfaces.vulcanus.create_entity{name = "destroyer-capsule", position = bait.position, speed = 0.3, target = demoman.position, force = "enemy"}
        bait.walking_state = {walking = true, direction = defines.direction.northeast}
      end
      if tick == 900 and bait.valid then
        bait.shooting_state = {state = defines.shooting.shooting_enemies, position = demoman.position}
        bait.walking_state.character_running_speed_modifier = 0.0
        bait.walking_state = {walking = true, direction = defines.direction.southeast}
      end
    end
  ]]
