local the_radio = {
	key = "the_radio",
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
			return true
	end,

	use = function (self, card, area, copier)
		return 
	end
}

local the_speaker = {
	key = "the_speaker",
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

local the_headphones = {
	key = "the_headphones",
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

local the_antenna = {
	key = "the_antenna",
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

local the_satellite_dish = {
	key = "the_satellite_dish",
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

local the_megaphone = {
	key = "the_megaphone",
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

local the_microphone = {
	key = "the_microphone",
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

local the_record_player = {
	key = "the_record_player",
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

local the_tuning_fork = {
	key = "the_tuning_fork",
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

local the_walkie_talkie = {
	key = "the_walkie_talkie",
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
	the_radio,
	the_speaker,
	the_headphones,
	the_antenna,
	the_satellite_dish,
	the_megaphone,
	the_microphone,
	the_record_player,
	the_tuning_fork,
	the_walkie_talkie,
	amplified,
	balanced
}

return {
	name = "Amplified 1",
	list = list
}