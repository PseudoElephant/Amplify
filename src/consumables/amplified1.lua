local radio = {
	key = "radio",
	set = "Amplify",
	atlas = "cardspack",
	order = 1,
	name = "The Radio",
	pos = {
			x = 0,
			y = 0
	},
	cost = 4,
	hidden = false,
	unlocked = true,
	discovered = true,
	can_use = function (self, card)
			return #G.jokers.cards > 0
	end,

	use = function (self, card, area, copier)
		G.E_MANAGER:add_event(Event({
			func = function()
			local card = create_card('Joker', G.jokers, nil, 0, nil, nil, "j_amp_gambler", 'gambler')
			card:add_to_deck()
			G.jokers:emplace(card)
			card:start_materialize()

			return true
			end
		}))
	
		local chosen_joker = pseudorandom_element(G.jokers.cards, pseudoseed('amp'))

		sendDebugMessage("Chosen joker: " .. inspect(chosen_joker.ability))

		if type(chosen_joker.ability.extra) == "table" then
			for k, v in pairs(chosen_joker.ability.extra) do
				if type(v) == "number" then
					chosen_joker.ability.extra[k] = v * 2
				end
			end
		elseif type(chosen_joker.ability.extra) == "number" then
			chosen_joker.ability.extra = chosen_joker.ability.extra * 2
		end

		chosen_joker.ability.bonus = chosen_joker.ability.bonus * 2
		chosen_joker.ability.mult = chosen_joker.ability.mult * 2
		chosen_joker.ability.t_chips = chosen_joker.ability.t_chips * 2
		chosen_joker.ability.t_mult = chosen_joker.ability.t_mult * 2

		chosen_joker:juice_up(0.3, 0.5)
		return 
	end
}

local speaker = {
	key = "speaker",
	set = "Amplify",
	atlas = "cardspack",
	order = 2,
	name = "The Speaker",
	pos = {
			x = 1,
			y = 0
	},
	cost = 4,
	hidden = false,
	unlocked = true,
	discovered = true,
	can_use = function (self, card)
			return true
	end,

	use = function (self, card, area, copier)
		return 
	end
}

local headphones = {
	key = "headphones",
	set = "Amplify",
	atlas = "cardspack",
	order = 3,
	name = "The Headphones",
	pos = {
			x = 1,
			y = 1
	},
	cost = 4,
	hidden = false,
	unlocked = true,
	discovered = true,
	can_use = function (self, card)
			return true
	end,

	use = function (self, card, area, copier)
		return 
	end
}

local antenna = {
	key = "antenna",
	set = "Amplify",
	atlas = "cardspack",
	order = 4,
	name = "The Antenna",
	pos = {
			x = 0,
			y = 1
	},
	cost = 4,
	hidden = false,
	unlocked = true,
	discovered = true,
	can_use = function (self, card)
			return true
	end,

	use = function (self, card, area, copier)
		return 
	end
}

local satellite_dish = {
	key = "satellite_dish",
	set = "Amplify",
	atlas = "cardspack",
	order = 5,
	name = "The Satellite Dish",
	pos = {
			x = 2,
			y = 0
	},
	cost = 4,
	hidden = false,
	unlocked = true,
	discovered = true,
	can_use = function (self, card)
			return true
	end,

	use = function (self, card, area, copier)
		return 
	end
}

local megaphone = {
	key = "megaphone",
	set = "Amplify",
	atlas = "cardspack",
	order = 6,
	name = "The Megaphone",
	pos = {
			x = 2,
			y = 1
	},
	cost = 4,
	hidden = false,
	unlocked = true,
	discovered = true,
	can_use = function (self, card)
			return true
	end,

	use = function (self, card, area, copier)
		return 
	end
}

local microphone = {
	key = "microphone",
	set = "Amplify",
	atlas = "cardspack",
	order = 7,
	name = "The Microphone",
	pos = {
			x = 1,
			y = 2
	},
	cost = 4,
	hidden = false,
	unlocked = true,
	discovered = true,
	can_use = function (self, card)
			return true
	end,

	use = function (self, card, area, copier)
		return 
	end
}

local record_player = {
	key = "record_player",
	set = "Amplify",
	atlas = "cardspack",
	order = 8,
	name = "The Record Player",
	pos = {
			x = 2,
			y = 2
	},
	cost = 4,
	hidden = false,
	unlocked = true,
	discovered = true,
	can_use = function (self, card)
			return true
	end,

	use = function (self, card, area, copier)
		return 
	end
}

local tuning_fork = {
	key = "tuning_fork",
	set = "Amplify",
	atlas = "cardspack",
	order = 9,
	name = "The Tuning Fork",
	pos = {
			x = 3,
			y = 0
	},
	cost = 4,
	hidden = false,
	unlocked = true,
	discovered = true,
	can_use = function (self, card)
			return true
	end,

	use = function (self, card, area, copier)
		return 
	end
}

local walkie_talkie = {
	key = "walkie_talkie",
	set = "Amplify",
	atlas = "cardspack",
	order = 10,
	name = "The Walkie Talkie",
	pos = {
			x = 4,
			y = 0
	},
	cost = 4,
	hidden = false,
	unlocked = true,
	discovered = true,
	can_use = function (self, card)
			return true
	end,

	use = function (self, card, area, copier)
		return 
	end
}

local amplified = {
	key = "amplified",
	set = "Amplify",
	atlas = "cardspack",
	order = 11,
	name = "Amplified",
	pos = {
			x = 5,
			y = 0
	},
	cost = 4,
	hidden = false,
	unlocked = true,
	discovered = true,
	can_use = function (self, card)
			return true
	end,

	use = function (self, card, area, copier)
		return 
	end
}

local balanced = {
	key = "balanced",
	set = "Amplify",
	atlas = "cardspack",
	order = 12,
	name = "Balanced",
	pos = {
			x = 6,
			y = 0
	},
	cost = 4,
	hidden = false,
	unlocked = true,
	discovered = true,
	can_use = function (self, card)
			return #G.jokers.cards > 0
	end,

	use = function (self, card, area, copier)
		local jokers = G.jokers.cards

		local stats = {
			bonus = {
				value = 0,
				times = 0
			}
			mult = {
				value = 0,
				times = 0
			}
			t_chips = {
				value = 0,
				times = 0
			}
			t_mult = {
				value = 0,
				times = 0
			}
		}

		local extra = {}

		local average = function(stat)
			return stat.value / stat.times
		end

		for i, joker in ipairs(jokers) do
			for stat, value in pairs(stats) do
				sendDebugMessage("Stat: " .. stat .. " Value: " .. value)
				sendDebugMessage("Joker ability: " .. inspect(joker.ability))
				if type(joker.ability[stat]) == "number" then
					stats[stat].value = stats[stat].value + joker.abilit[stat]
					stats[stat].times = stats[stat].times + 1
				end
			end

			if type(joker.ability.extra) == "table" then
				for stat, value in pairs(joker.ability.extra) do
					if type(value) == "number" and not stat:find("^h_") then
						if not extra[stat] then
							extra[stat] = {
								value = value,
								times = 1
							}
						else
							extra[stat].value = extra[stat].value + value
							extra[stat].times = extra[stat].times + 1
						end
					end
				end
			end
		end

		for stat, value in pairs(stats) do
			stats[stat] = average(value)
		end

		for stat, value in pairs(extra) do
			extra[stat] = average(value)
		end

		for i, joker in ipairs(jokers) do
			for stat, value in pairs(stats) do
				joker.ability[stat] = value.value
			end

			if type(joker.ability.extra) == "table" then
				for stat, value in pairs(extra) do
					if joker.ability.extra[stat] then
						joker.ability.extra[stat] = value.value
					end
				end
			end

			joker:juice_up(0.3, 0.5)
			card_eval_status_text(joker, 'extra', nil, nil, nil,
				{ message = localize('k_balanced') })
		end
	end
}

local list = {
	radio,
	speaker,
	headphones,
	antenna,
	satellite_dish,
	megaphone,
	microphone,
	record_player,
	tuning_fork,
	walkie_talkie,
	amplified,
	balanced
}

return {
	name = "Amplified 1",
	list = list
}