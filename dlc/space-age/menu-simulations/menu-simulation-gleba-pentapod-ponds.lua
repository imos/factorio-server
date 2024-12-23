return
  [[
    local strafer = game.surfaces.gleba.find_entities_filtered{name = "medium-strafer-pentapod", limit = 1}[1]
    local points =
    {
      {16, 0},
      {16, -8},
      {0, -12},
      {-16, -8},
      {-60, 60},
    }
    local next_waypoint = function()
      local k, position = next(points)
      if not k then return end
      points[k] = nil
      local x = position[1] + center[1]
      local y = position[2] + center[2]
      strafer.commandable.set_command{type = defines.command.go_to_location, destination  = {x, y}}
      game.surfaces.gleba.create_entity{name = "tesla-turret-slow", position = strafer.position, target = strafer}
    end

    next_waypoint()

    script.on_event(defines.events.on_ai_command_completed, function(event)
      if event.unit_number == strafer.unit_number then
        next_waypoint()
      end
    end)
  ]]
