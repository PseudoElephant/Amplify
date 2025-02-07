init = function()
  local backapply_orig = Back.apply_to_run
  function Back.apply_to_run(self)
    backapply_orig(self)
    			G.E_MANAGER:add_event(Event({
					func = function()
						return true
					end,
				}))
  end
end

local amplifydeck = {
	name = "amplifydeck",
	key = "amplifydeck",  
	order = 17,
  unlocked = true,
  discovered = true,
	config = {consumables = {'c_amp_amplify'}},
	pos = { x = 0, y = 0 },
	atlas = "amplifydecks"
}

local dList = {amplifydeck}

return {
	name = "Back",
	init = init,
	list = dList
}