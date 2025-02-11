init = function()
end

local amplifydeck = {
	key = "amplifydeck",  
	name = "amplifydeck",
	order = 50,
  	unlocked = true,
  	discovered = true,
	config = {consumables = {'c_amp_radio', 'c_amp_tuning_fork'}, dollars=10000},
  loc_vars = function(self, info_queue, center)
    return {vars = {}}
  end,
	pos = { x = 0, y = 0 },
	atlas = "amplifydecks"
}

local dList = {amplifydeck}

return {
	name = "Back",
	init = init,
	list = dList
}