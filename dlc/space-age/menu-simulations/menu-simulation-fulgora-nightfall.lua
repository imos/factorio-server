return
  [[
    local character = game.surfaces.fulgora.find_entities_filtered{name = "character", limit = 1}[1]
    character.walking_state = {walking = true, direction = defines.direction.southwest}
    character.walking_state = {walking = false}

    local mod = function(a, b)
      return a - math.floor(a/b)*b
    end

    local spawn_lightning = function()
      game.surfaces.fulgora.create_entity{name = "lightning", force="enemy", position = {character.position.x, character.position.y - 25}}
    end

    on_tick = function()
      if tick==100 and character.valid then
        character.walking_state = {walking = true, direction = defines.direction.south}
      end
      if tick==140 and character.valid then
        character.walking_state = {walking = true, direction = defines.direction.southwest}
      end
      if tick==190 and character.valid then
        character.walking_state = {walking = true, direction = defines.direction.west}
      end
      if tick==275 and character.valid then
        character.walking_state = {walking = true, direction = defines.direction.southwest}
      end
      if tick>=325 and tick <=450 and mod(tick,25)==0 and character.valid then
        spawn_lightning()
      end
      if tick>=375 and tick <=450 and character.valid then
        if mod(tick,20)<=10 then
          character.walking_state = {walking = true, direction = defines.direction.northeast}
        else
          character.walking_state = {walking = true, direction = defines.direction.east}
        end
      end
      if tick==450 and character.valid then
        character.walking_state = {walking = true, direction = defines.direction.northeast}
      end
      if tick==525 and character.valid then
        character.walking_state = {walking = true, direction = defines.direction.east}
      end
      if tick==600 and character.valid then
        character.walking_state = {walking = true, direction = defines.direction.northeast}
      end
      if tick==615 and character.valid then
        character.walking_state = {walking = true, direction = defines.direction.southwest}
        character.walking_state = {walking = false}
      end
    end
  ]]
