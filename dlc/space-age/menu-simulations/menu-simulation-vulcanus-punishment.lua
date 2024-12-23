return
  [[
    local rail_turn_string = "0eNqd09tqhDAQANB/mecI3jV+RR/2rZQSddgGNEpMpIvk3xsvpd01u+36FHKZMwOTmaBsNPaSCwXFBLzqxADF6wQDPwvWzGeCtQgFSMYbT7K2B0OAixo/oQgMufPy16PQvBFAobjiuNrL5vIudFuitAr5jsQGR6aw9gZlkfOH8haLQN8NNrwTc5Y5LyVwsbKfmbmCGy887lGXFx32gsDlxce9yOUle6/ScrTL0jP2wEttm2ousVovA9/Bp+TqCwy67zupHGi+ofQGdZjZ45JLh56tehj8o+T8eT7a+OSajx06JfuZ2IFeuIHZ32DgP93B/J5uZ40rbC31M9gEGlaiHVF40eKkpbAnI8phCUnSkMaUJlGe+34aG/MFO3BZFQ=="
    local rail_piece_string = "0eNpFjt0KgzAMRt8l1x2oU6d9lTFG1eACNUpbx0T67kuVsbv8fOckO3R2xcURB9A7UD+zB33fwdPIxqYZmwlBgzNkISogHvADOo8PBciBAuFJHM325HXq0ElA/UgfhB1f4XIoFCyzF2rmJBfTJZfoBroobqIfyGF/bst0ggJO4vh/qcCaDm36SOo3On+Eq7poy7atrk2TZXUZ4xd6rUbW"
    local powerpole_string = "0eNp1jsEKgzAQRP9lzhE0VdH8SilF7VIW4kaSWCrivzex0FuPs8x7OztGu9LiWSLMDp6cBJjrjsBPGWy+yTATDEZ+FmRpip6nYnGWcCiwPOgNUx03BZLIkemLn2G7yzqP5FNB/dcoLC4k0kn+lmxFpRU2GK3rI4s50pzJ31CFF/lwAk2r+7rvm0vXlWWb+h9mUkUA"
    local substation_string = "0eNptjs0KwjAQhN9lzhFq/0jyKiKS6CIL7bY0qVhK3t00Hrx42xnm+9gdflhpXlgi7A6+TxJgLzsCP8UNRyduJFiE1YfoIk+CpMDyoDfsOV0VSCJHpi9XwnaTdfS05IH6wyvMU+ByZn/WnLTCBls3dTqEHGnMxO8zhRctoey7vjatMV2jdVX1bUofg9RAXg=="
    local belt_up_string = "0eNp9jkEOgjAQRe8y60IQKKG9ijGm6GgmgSlpByMhvbsFF+5czs9/788Gw7jgHIgF7AZ08xzBnjeI9GQ37hm7CcHCw0UpJDiOsw9SDDgKJAXEd3yDPaWLAmQhIfwKjmO98jINGHJB/RMpmH3MrOd9MfsKU2oFK9i66UuddjsJThn//avghSEejO5q0xqjm76vqq5N6QO2tUfL"
    local belt_left_string = "0eNp9jt0KgzAMRt8l13VYf4b2VcYYVbMR0FTaOCbSd1/Vi93tLglfzvk26MYFZ08sYDag3nEAc9sg0IvtuN/YTggGnjZIJt5ymJ2XrMNRICogHvADRse7AmQhITwBx7I+eJk69Cmg/oEUzC6kX8e7MfEyrS+1ghVMUaYpiQby2J8JXew2EpwS7tdfwRt9OBL1tWirtq3LpsnzaxXjF11BTLs="
    local belt_right_string = "0eNp9jtsKgzAMQP8lz1WctjL7K2MML9kIaCptHBPpv6/qw972mHByTjboxgVnTyxgN6DecQB72yDQi9tx33E7IVh4tkEy8S2H2XnJOhwFogLiAT9gL/GuAFlICE/BMawPXqYOfQLUP5GC2YV063gvJl9W6twoWMGWVZGbFBrIY38Seo+R4JRsv/cVvNGHAzB12eimMdX1WhS1jvELF5BMjw=="
    local inserter_string = "0eNptjssKgzAQRf9l1lE0NRLzK0WKj6EM1VGSWCqSf2+i0FWXc7n3nDmgnzZcLbEHcwANCzsw9wMcPbmbUsbdjGCg36ZXRuzQerQQBBCP+AFThlYAsidPeE3PY3/wNvexaUrxHyFgXVxcLZwskZTJMlcCdjBS6lxFxUgWh6uhk4Y8zonze1nAG607C6qWTdU06qZ1UdRVCF8iNEft"
    local miner_left = "0eNp1jssKgzAQRf9l1lF8RTS/UkrxMchAMkoSS0Xy700UuutyLveeMyeMesfNEntQJ9C0sgP1OMHRwoNOGQ8GQcFIS2aIiZdstqQ1BAHEM35AleEpANmTJ7zX13G8eDcj2lgQfykCttXF4crJFWFZ1eZSwAGqqptcRstMFqe7UVZJRR5NYv0+F/BG666GbKu+6XtZd11RtE0IXwWUSdY="
    local miner_right = "0eNp1jssKgzAQRf9l1lGsMaL5lVKKj0EGkrEksVQk/95Eobsu53LvOXPAaDZ8OeIA+gCaVvag7wd4WngwOePBImgYaSksMfFSzI6MgSiAeMYP6Ft8CEAOFAiv9XnsT97siC4VxF+KgNfq03Dl7EqwQtalErCDrqUsVbLM5HC6Gk02UUCbUb/HBbzR+bOg2rpv+l7JrquqtonxC8CeSaM="

    local bp_dictionary = {}
    bp_dictionary["rail"] = rail_piece_string
    bp_dictionary["up"] = belt_up_string
    bp_dictionary["left"] = belt_left_string
    bp_dictionary["right"] = belt_right_string
    bp_dictionary["pp"] = powerpole_string
    bp_dictionary["subpp"] = substation_string
    bp_dictionary["inserter"] = inserter_string
    bp_dictionary["miner_l"] = miner_left
    bp_dictionary["miner_r"] = miner_right

    local inventory = game.create_inventory(1)
    local stack = inventory[1]

    local build_id = 1
    local build_list =
      {
        {{-11, 227}, "rail"},
        {{-13, 227}, "rail"},
        {{-15, 227}, "rail"},
        {{-17, 227}, "rail"},
        {{-19, 227}, "rail"},
        {{-21, 227}, "rail"},
        {{-23, 227}, "rail"},
        {{-25, 227}, "rail"},
        {{-27, 227}, "rail"},

        {{-12, 224}, "pp"},
        
        {{-10, 242}, "up"},
        {{-10, 241}, "up"},
        {{-10, 240}, "up"},
        {{-10, 239}, "up"},
        {{-10, 238}, "up"},
        {{-10, 237}, "up"},
        {{-10, 236}, "up"},
        {{-10, 235}, "up"},
        {{-10, 234}, "up"},
        {{-10, 233}, "up"},
        {{-10, 232}, "up"},
        {{-10, 231}, "left"},
        {{-11, 231}, "left"},
        {{-12, 231}, "left"},
        {{-13, 231}, "up"},
        {{-13, 230}, "up"},
        {{-13, 229}, "up"},
        {{-13, 228}, "inserter"},

        {{-30, 239}, "up"},
        {{-30, 238}, "up"},
        {{-30, 237}, "up"},
        {{-30, 236}, "up"},
        {{-30, 235}, "up"},
        {{-30, 234}, "up"},
        {{-30, 233}, "up"},
        {{-30, 232}, "up"},
        {{-30, 231}, "up"},
        {{-30, 230}, "right"},
        {{-29, 230}, "right"},
        {{-28, 230}, "right"},
        {{-27, 230}, "right"},
        {{-26, 230}, "right"},
        {{-25, 230}, "right"},
        {{-24, 230}, "right"},
        {{-23, 230}, "right"},
        {{-22, 230}, "up"},
        {{-22, 229}, "up"},
        {{-22, 228}, "inserter"},
        
        {{-23, 236}, "subpp"},
        {{-8, 232}, "subpp"},
        
        {{-6.5, 242.5}, "miner_l"},
        {{-6.5, 235.5}, "miner_l"},
        {{-12.5, 235.5}, "miner_r"},
        {{-12.5, 241.5}, "miner_r"},

        {{-26.5, 239.5}, "miner_l"},
        {{-26.5, 234.5}, "miner_l"},
        {{-32.5, 233.5}, "miner_r"},
        {{-32.5, 239.5}, "miner_r"},
      }
    local build_list_len = #build_list

    local build_thing_until = function(until_thing)
      if build_id > build_list_len then
        return end
      if (until_thing == build_list[build_id][2]) then
        return end
      local build_position = build_list[build_id][1]
      stack.import_stack(bp_dictionary[ build_list[build_id][2] ])
      stack.build_blueprint{ surface = 'vulcanus', position = build_position, force = 'player', build_mode = defines.build_mode.forced }
      build_id = build_id + 1
    end

    game.forces.player.create_ghost_on_entity_death = false
    local loco = game.surfaces.vulcanus.find_entities_filtered{name = "locomotive", force = "player", limit = 1}[1]
    local character = game.get_entity_by_tag("leberblume")
    loco.set_driver(character)
    character.riding_state = { acceleration = defines.riding.acceleration.accelerating, direction = defines.riding.direction.straight }

    local delay = 200
    on_tick = function()
      if tick==10 then
        stack.import_stack(rail_turn_string)
        stack.build_blueprint{ surface = 'vulcanus', position = {5, 217}, force = 'player', build_mode = defines.build_mode.forced }
      end
      if tick > 20 and tick < 35 then
        build_thing_until("pp")
      end
      if tick == 60 then
        build_thing_until()
      end
      if tick > 75 + delay and tick < 110 + delay then
        build_thing_until("inserter")
      end
      if tick == 120 + delay then
        build_thing_until()
      end
      if tick > 135 + delay and tick < 180 + delay then
        build_thing_until("inserter")
      end
      if tick == 190 + delay then
        build_thing_until()
      end
      if tick == 210 + delay or tick == 245 + delay then
        build_thing_until()
      end
      if tick%30 == 0 and tick > 255 + delay and tick < 505 + delay then
        build_thing_until()
      end

      if tick == 250 and character.valid  then
        character.riding_state = { acceleration = defines.riding.acceleration.nothing, direction = defines.riding.direction.straight }
      end
      if tick == 315 and loco.valid  then
        loco.set_driver(nil)
      end
      if tick == 950 and character.valid then
        character.walking_state = {walking = true, direction = defines.direction.southwest}
      end
      if tick == 980 and character.valid then
        character.walking_state = {walking = true, direction = defines.direction.north}
      end
      if tick == 984 and character.valid then
        character.walking_state = {walking = true, direction = defines.direction.northeast}
      end
      if tick == 992 and character.valid then
        character.walking_state = {walking = true, direction = defines.direction.north}
      end
      if tick == 1010 and loco.valid and character.valid then
        loco.set_driver(character)
        character.riding_state = { acceleration = defines.riding.acceleration.reversing, direction = defines.riding.direction.straight }
        character.walking_state = {walking = true, direction = defines.direction.west}
      end
      if tick == 1250 and character.valid then
        character.walking_state = {walking = true, direction = defines.direction.southwest}
      end
      if tick == 1290 and character.valid then
        character.walking_state = {walking = true, direction = defines.direction.southeast}
      end
      if tick == 1410 and character.valid then
        character.walking_state = {walking = true, direction = defines.direction.east}
      end
    end
  ]]