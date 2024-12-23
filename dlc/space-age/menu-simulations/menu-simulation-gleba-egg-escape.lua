return
  [[
    game.forces.player.custom_color = {0.7, 0.0, 0.0, 0.5}
    game.forces.player.character_health_bonus = 1000
    game.forces.player.technologies["weapon-shooting-speed-1"].researched = true;
    game.forces.player.technologies["weapon-shooting-speed-2"].researched = true;
    game.forces.player.technologies["weapon-shooting-speed-3"].researched = true;
    game.forces.player.technologies["physical-projectile-damage-1"].researched = true;
    game.forces.player.technologies["physical-projectile-damage-2"].researched = true;
    game.forces.player.technologies["physical-projectile-damage-3"].researched = true;
    game.forces.enemy.set_evolution_factor(1.0, "gleba")

    local character = game.surfaces.gleba.find_entities_filtered{name = "character", force = "player", limit = 1}[1]
    character.walking_state = {walking = true, direction = defines.direction.southeast}
    character.walking_state = {walking = false}

    local wriggler_area = {{center[1]-15, center[2]-3}, {center[1]+15, center[2]+2}}
    local biter_area = {{center[1]-15, center[2]+2}, {center[1]+15, center[2]+15}}

    local alarm = game.surfaces.gleba.find_entities_filtered{name = "constant-combinator", limit = 1}[1].get_control_behavior()
    local wriggler_belts = game.surfaces.gleba.find_entities_filtered{name = "express-transport-belt", area = wriggler_area}
    local biter_belts = game.surfaces.gleba.find_entities_filtered{name = "express-transport-belt", area = biter_area}

    local first_belt = game.surfaces.gleba.find_entities_filtered{name = "express-transport-belt", area = {{255-1, 122-1}, {255+1, 122+1}}}[1]
    local first_belt_2 = game.surfaces.gleba.find_entities_filtered{name = "express-transport-belt", area = {{250-1, 122-1}, {250+1, 122+1}}}[1]
    local first_belt_3 = game.surfaces.gleba.find_entities_filtered{name = "express-transport-belt", area = {{260-1, 127-1}, {260+1, 127+1}}}[1]
    local second_belt = game.surfaces.gleba.find_entities_filtered{name = "express-transport-belt", area = {{256-1, 134-1}, {256+1, 134+1}}}[1]

    for b, belt in pairs(wriggler_belts) do
      belt.destructible = false
    end
    for b, belt in pairs(biter_belts) do
      belt.destructible = false
    end

    local spawn_wrigglers = function(count)
      for c=1,count do
        beltid = math.random(#wriggler_belts)
        lineid = math.random(2)
        local line = wriggler_belts[beltid].get_transport_line(lineid)
        for i=1,#line do
          line[1].spoil()
        end
      end
    end

    local spawn_biters = function(count)
      for c=1,count do
        beltid = math.random(#biter_belts)
        lineid = math.random(2)
        local line = biter_belts[beltid].get_transport_line(lineid)
        for i=1,#line do
          line[1].spoil()
        end
      end
    end

    local command_wrigglers = function(target, target2)
      local wrigglers = game.surfaces.gleba.find_entities_filtered{name = "big-wriggler-pentapod-premature", area = {{target[1]-5, target[2]-15}, {target[1]+5, target[2]+15}}}
      for w, wriggler in pairs(wrigglers) do
        local cw = wriggler.commandable
        if not (cw.has_command and cw.command.type == defines.command.attack_area) then
          cw.set_command{type = defines.command.attack_area,
                        distraction = defines.distraction.damage,
                        destination = math.random(2)==1 and target or target2,
                        radius = 4}
        end
      end
    end

    on_tick = function()
      if tick == 100 and first_belt and first_belt.valid then
        local line = first_belt.get_transport_line(1)
        for i=1,#line do
          line[1].spoil()
        end
      end
      if tick == 110 and first_belt_2 and first_belt_2.valid then
        local line = first_belt_2.get_transport_line(1)
        for i=1,#line do
          line[1].spoil()
        end
      end
      if tick == 120 and first_belt_3 and first_belt_3.valid then
        local line = first_belt_3.get_transport_line(1)
        for i=1,#line do
          line[1].spoil()
        end
      end
      if tick == 340 then
        local line = second_belt.get_transport_line(1)
        for i=1,#line do
          line[1].spoil()
        end
      end
      if tick == 355 then
        local line = second_belt.get_transport_line(1)
        for i=1,#line do
          line[1].spoil()
        end
      end
      if tick == 850 and character.valid then
        character.shooting_state = {state = defines.shooting.shooting_enemies, position = {258, 120}}
      end
      if tick >= 800 and tick < 900 and tick%2==0 then
        spawn_wrigglers(1)
        command_wrigglers({258, 120}, {258, 138})
        command_wrigglers({278, 120}, {278, 137})
      end
      if tick == 900 and alarm.valid then
        alarm.enabled = true
      end
      if tick == 1200 and character.valid then
        character.walking_state = {walking = true, direction = defines.direction.north}
      end
    end
  ]]
