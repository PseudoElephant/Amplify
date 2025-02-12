init = function()
end

local amplifydeck = {
	key = "amplifydeck",  
	name = "amplifydeck",
	order = 50,
	unlocked = true,
	discovered = true,
	config = {
		jokers = {
			"j_amp_duper"
		},
		consumables = {
			"c_amp_radio", 
			"c_amp_speaker", 
			"c_amp_headphones", 
			"c_amp_antenna", 
			"c_amp_sonar", 
			"c_amp_satellite_dish", 
			"c_amp_megaphone", 
			"c_amp_microphone", 
			"c_amp_oscillator", 
			"c_amp_record_player", 
			"c_amp_soundboard", 
			"c_amp_tape_recorder", 
			"c_amp_echo", 
			"c_amp_equalizer", 
			"c_amp_amplified", 
			"c_amp_tuning_fork"
		}, 
		dollars=10000
	},

	apply = function(self, back) 
		sendDebugMessage("Apply Amplify Deck Jokers: " .. inspect(back))
		if back.effect.config.jokers then
			delay(0.4)
			G.E_MANAGER:add_event(Event({
				func = function()
						G.E_MANAGER:add_event(Event({
							func = function()
									for k, v in ipairs(back.effect.config.jokers) do
										local card = create_card('Joker', G.jokers, nil, nil, nil, nil, v, 'deck')
										card:add_to_deck()
										card:set_edition({negative = true}, true)
										G.jokers:emplace(card)
									end
								return true
							end
						}))
					return true
				end
			}))
		end
	end,

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