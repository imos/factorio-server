local elevated_rails_menu_simulations = {}

elevated_rails_menu_simulations.nauvis_ship_rails =
{
  checkboard = false,
  save = "__elevated-rails__/menu-simulations/nauvis-ship-rails.zip",
  length = 60 * 11,
  init =
  [[
    local logo = game.surfaces.nauvis.find_entities_filtered{name = "factorio-logo-11tiles", limit = 1}[1]
    local center = {logo.position.x, logo.position.y+9.75}
    game.simulation.camera_surface_index = game.surfaces.nauvis.index
    game.simulation.camera_position = center
    game.simulation.camera_zoom = 1
    game.tick_paused = false
  ]]
}

elevated_rails_menu_simulations.nauvis_river_bridge =
{
  checkboard = false,
  save = "__elevated-rails__/menu-simulations/nauvis-river-bridge.zip",
  length = 60 * 5,
  init =
  [[
    local logo = game.surfaces.nauvis.find_entities_filtered{name = "factorio-logo-11tiles", limit = 1}[1]
    local center = {logo.position.x, logo.position.y+9.75}
    game.simulation.camera_surface_index = game.surfaces.nauvis.index
    game.simulation.camera_position = center
    game.simulation.camera_zoom = 1
    game.tick_paused = false
  ]]
}

elevated_rails_menu_simulations.nauvis_t_section =
{
  checkboard = false,
  save = "__elevated-rails__/menu-simulations/nauvis-t-section.zip",
  length = 60 * 5,
  init =
  [[
    local logo = game.surfaces.nauvis.find_entities_filtered{name = "factorio-logo-11tiles", limit = 1}[1]
    local center = {logo.position.x, logo.position.y+9.75}
    game.simulation.camera_surface_index = game.surfaces.nauvis.index
    game.simulation.camera_position = center
    game.simulation.camera_zoom = 1
    game.tick_paused = false
  ]]
}

data.raw["utility-constants"]["default"].main_menu_simulations.nauvis_ship_rails = elevated_rails_menu_simulations.nauvis_ship_rails
data.raw["utility-constants"]["default"].main_menu_simulations.nauvis_river_bridge = elevated_rails_menu_simulations.nauvis_river_bridge
data.raw["utility-constants"]["default"].main_menu_simulations.nauvis_t_section = elevated_rails_menu_simulations.nauvis_t_section
