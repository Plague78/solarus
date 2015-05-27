local map = ...

-- Crash not reproduced so far even in interactive mode.
function switch:on_activated()
  local hx,hy,hz = map:get_hero():get_position()
  local other = map:create_custom_entity({direction=0,layer=hz,x=hx,y=hy})
  other:remove()
end

sol.main.exit()
