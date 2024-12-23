local space_age_menu_simulations = {}

--special variables:
-- sim_planet = current sim surface
-- on_tick = override to do stuff on given tick when timeline_tools are included
local make_simulation = function(duration, planet, filename, script)
  return
  {
    checkboard = false,
    save = "__space-age__/menu-simulations/" .. filename,
    length = duration,
    init =
    [[
      local sim_planet = game.surfaces["]] .. planet .. [["]
      local logo = sim_planet.find_entities_filtered{name = "factorio-logo-11tiles", limit = 1}[1]
      logo.destructible = false
      local center = {logo.position.x, logo.position.y+9.75}
      game.simulation.camera_surface_index = sim_planet.index
      game.simulation.camera_position = center
      game.simulation.camera_zoom = 1
      game.tick_paused = false
    ]]
    ..
    script
  }
end

local timeline_tools =
  [[
    local tick = 0
    local on_tick = function() end
    script.on_nth_tick(1,
      function()
        tick = tick + 1
        on_tick()
      end)
  ]]

space_age_menu_simulations.nauvis_biolab = make_simulation(60 * 12, "nauvis", "menu-simulation-nauvis-biolab.zip", [[]])
space_age_menu_simulations.nauvis_tank_building = make_simulation(60 * 13, "nauvis", "menu-simulation-nauvis-tank-building.zip",
  timeline_tools .. require("__space-age__.menu-simulations.menu-simulation-nauvis-tank-building"))

space_age_menu_simulations.platform_science = make_simulation(60 * 12, "platform-1", "menu-simulation-platform-science.zip",
  [[ game.surfaces["platform-1"].create_entity{name = "huge-metallic-asteroid", position = {-4, -43}} ]])
space_age_menu_simulations.platform_moving = make_simulation(60 * 12, "platform-1", "menu-simulation-platform-moving.zip", [[]])
space_age_menu_simulations.platform_messy_nuclear = make_simulation(60 * 12, "platform-1", "menu-simulation-platform-messy-nuclear.zip", [[]])

space_age_menu_simulations.vulcanus_lava_forge = make_simulation(60 * 12, "vulcanus", "menu-simulation-vulcanus-lava-forge.zip", [[]])
space_age_menu_simulations.vulcanus_crossing = make_simulation(60 * 18, "vulcanus", "menu-simulation-vulcanus-crossing.zip",
  timeline_tools .. require("__space-age__.menu-simulations.menu-simulation-vulcanus-crossing"))
space_age_menu_simulations.vulcanus_punishmnent = make_simulation(60 * 24, "vulcanus", "menu-simulation-vulcanus-punishment.zip",
  timeline_tools .. require("__space-age__.menu-simulations.menu-simulation-vulcanus-punishment"))
space_age_menu_simulations.vulcanus_sulfur_drop = make_simulation(60 * 14, "vulcanus", "menu-simulation-vulcanus-sulfur-drop.zip",
  timeline_tools .. require("__space-age__.menu-simulations.menu-simulation-vulcanus-sulfur-drop"))

space_age_menu_simulations.gleba_pentapod_ponds = make_simulation(60 * 12, "gleba", "menu-simulation-gleba-pentapod-ponds.zip",
  require("__space-age__.menu-simulations.menu-simulation-gleba-pentapod-ponds"))
space_age_menu_simulations.gleba_egg_escape = make_simulation(60 * 22, "gleba", "menu-simulation-gleba-egg-escape.zip",
  timeline_tools .. require("__space-age__.menu-simulations.menu-simulation-gleba-egg-escape"))
space_age_menu_simulations.gleba_agri_towers = make_simulation(60 * 12, "gleba", "menu-simulation-gleba-agri-towers.zip", [[]])
space_age_menu_simulations.gleba_farm_attack = make_simulation(60 * 13, "gleba", "menu-simulation-gleba-farm-attack.zip",
  [[ game.forces.player.create_ghost_on_entity_death = false ]])
space_age_menu_simulations.gleba_grotto = make_simulation(60 * 12, "gleba", "menu-simulation-gleba-grotto.zip", [[]])

space_age_menu_simulations.fulgora_city_crossing = make_simulation(60 * 12, "fulgora", "menu-simulation-fulgora-city-crossing.zip", [[]])
space_age_menu_simulations.fulgora_recycling_hell = make_simulation(60 * 12, "fulgora", "menu-simulation-fulgora-recycling-hell.zip", [[]])
space_age_menu_simulations.fulgora_nightfall = make_simulation(60 * 12, "fulgora", "menu-simulation-fulgora-nightfall.zip",
  timeline_tools .. require("__space-age__.menu-simulations.menu-simulation-fulgora-nightfall"))
space_age_menu_simulations.fulgora_race = make_simulation(60 * 12, "fulgora", "menu-simulation-fulgora-race.zip",
  require("__space-age__.menu-simulations.menu-simulation-fulgora-race"))

space_age_menu_simulations.aquilo_send_help = make_simulation(60 * 12, "aquilo", "menu-simulation-aquilo-send-help.zip",
  timeline_tools .. require("__space-age__.menu-simulations.menu-simulation-aquilo-send-help"))
space_age_menu_simulations.aquilo_starter = make_simulation(60 * 8, "aquilo", "menu-simulation-aquilo-starter.zip", [[]])

space_age_menu_simulations.nauvis_rocket_factory = make_simulation(60 * 8, "nauvis", "menu-simulation-nauvis-rocket-factory.zip", [[]])

return space_age_menu_simulations
