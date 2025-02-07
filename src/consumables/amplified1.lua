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
			return true
	end,

	use = function (self, card, area, copier)
		-- Balances stats across hand
		local total_stats = 0
		local num_cards = #area.hand
		for _, hand_card in ipairs(area.hand) do
			total_stats = total_stats + hand_card.stats
		end
		local average_stats = total_stats / num_cards
		for _, hand_card in ipairs(area.hand) do
			hand_card.stats = average_stats
		end
		return 
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