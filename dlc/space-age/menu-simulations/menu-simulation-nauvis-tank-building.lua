return [[
  local tank = game.get_entity_by_tag("tank1")
  tank.color = {0.5, 0, 0, 0.5}

  local character = game.surfaces.nauvis.create_entity{name = "character", position = tank.position, force = "player"}
  character.color = tank.color
  tank.set_passenger(character)

  local radar_blueprint = {
    -- Solar panels
    {name = "solar-panel", position = {x = 1040.5, y = -45.5}},
    {name = "solar-panel", position = {x = 1043.5, y = -45.5}},
    {name = "solar-panel", position = {x = 1046.5, y = -45.5}},
    {name = "solar-panel", position = {x = 1040.5, y = -42.5}},
    {name = "solar-panel", position = {x = 1046.5, y = -42.5}},
    {name = "solar-panel", position = {x = 1040.5, y = -39.5}},
    {name = "solar-panel", position = {x = 1043.5, y = -39.5}},
    {name = "solar-panel", position = {x = 1046.5, y = -39.5}},

    -- Radar
    {name = "radar", position = {x = 1043.5, y = -42.5}},

    -- Substation
    {name = "substation", position = {x = 1044, y = -37}},

    -- Accumulators
    {name = "accumulator", position = {x = 1040, y = -37}},
    {name = "accumulator", position = {x = 1042, y = -37}},
    {name = "accumulator", position = {x = 1046, y = -37}},
    {name = "accumulator", position = {x = 1048, y = -37}},
    {name = "accumulator", position = {x = 1042, y = -35}},
    {name = "accumulator", position = {x = 1046, y = -35}},
  }

  local build_blueprint = function(blueprint)
    for _, entity in pairs(blueprint) do
        tank.surface.create_entity{
            name = "entity-ghost",
            inner_name = entity.name,
            position = entity.position,
            force = game.forces.player,
            expires = false
        }
    end
  end

  on_tick = function()
    if tick==10 then
      tank.riding_state = {acceleration = defines.riding.acceleration.accelerating, direction = defines.riding.direction.left}
    end
    if tick == 30 then
      tank.riding_state = {acceleration = defines.riding.acceleration.accelerating, direction = defines.riding.direction.straight}
    end
    if tick == 100 then
      tank.riding_state = {acceleration = defines.riding.acceleration.accelerating, direction = defines.riding.direction.right}
    end
    if tick == 125 then
      tank.riding_state = {acceleration = defines.riding.acceleration.accelerating, direction = defines.riding.direction.straight}
    end
    if tick == 230 then
      tank.riding_state = {acceleration = defines.riding.acceleration.nothing, direction = defines.riding.direction.left}
    end
    if tick == 450 then
      tank.riding_state = {acceleration = defines.riding.acceleration.braking, direction = defines.riding.direction.left}
    end
    if tick == 510 then
      tank.riding_state = {acceleration = defines.riding.acceleration.braking, direction = defines.riding.direction.straight}
    end
    if tick == 530 then
      build_blueprint(radar_blueprint)
    end
  end
]]