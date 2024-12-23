return
  [[
    local upgrade_string = "0eNqlmdFuozAQRf/Fz6QCz4yx8yurakVSq0JKDAKzahTl3xfSh3Y3uPEwT1EQ3MNc6TLc5KoOp8n3Qxui2l9Ve+zCqPa/rmps30NzWo6F5uzVXo3RN+ddnIZDG7y6FaoNb/5D7atbsXK2/+gHP467ODRh7Lsh7g7+FL9dpm+vhfIhtrH1n8T7l8vvMJ0Pfph1iydaheq7cb68Cwt3kaQXKtRF7XcELzSj3trBHz9PwOUu/yNoCUHPhBVN4GvWvLtGPsHwCMQnWB7B8AmOR6jZBCh5BMsnVDyC4xM0j1CVfAQwEfwcw78pe47gBxmQOQVIpnhA2DUEP9hgmEbxkw01E8GPNlgmYkO2HRPBDzeWTAQ/3VjxEJqfbtRMBD/dCGnEWi60aE1X62tag0S0TIiixIwqywySIMoshBFYgy5hTS0RtQlRKzDjfqfPzXAShM1BQCmxpk68hkrentEkRLXEjDrLDJAgTM4jCzakFJmIDSklJoKfUjRMBD+zWDMRGxJsmYgNCXY8BD4meJpL7vA+dPNnAkLVD5BCxUu/6LWhn5bW/MjkB5xK5lh6y1h1zljdFFNzwRaolXmJG5iGhIPynxHmhwCvPUxRtMlpfQmgaJNjQtRKzKAsM5wEgTkIEm1yWLeGRJs88SsVaYkZWXWWQILIagaEEmsSzYBIIppoBmQkZmQ1A6oliKxmQFZgDSSaATmJaKIZmFJgBmQ1A1NJEFnNwEiaLySagZE0X0g0A4MSM7KagZHsS8jal0ayLyGxL41kX0JiXxrJvoSVfflaqDb686z39XdQoU7NrDUfG3x/ao4zuFB//DDeryGjHTpHYG1ZGrzd/gKixLAh"
  
    local inventory = game.create_inventory(1)
    local stack = inventory[1]
    stack.import_stack(upgrade_string)

    game.forces.player.worker_robots_speed_modifier = 2

    on_tick = function()
      if tick == 450 then
        stack.build_blueprint{ surface = 'vulcanus', position = {45.5, -44.5}, force = 'player', build_mode = defines.build_mode.superforced }
      end
    end
  ]]