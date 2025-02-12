local radio = {
	key = "radio",
	set = "Amplify",
	atlas = "cardspack",
	order = 1,
	name = "Radio",
	pos = {
			x = 9,
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
	name = "Speaker",
	pos = {
			x = 13,
			y = 0
	},
	cost = 4,
	hidden = false,
	unlocked = true,
	discovered = true,
	can_use = function (self, card)
			return #G.jokers.highlighted > 0
	end,

	use = function (self, card, area, copier)
		local chosen_joker = G.jokers.highlighted[1]

		sendDebugMessage("Chosen Joker: " .. inspect(chosen_joker.ability))

		if type(chosen_joker.ability.extra) == "table" then
			for k, v in pairs(chosen_joker.ability.extra) do
				if type(v) == "number" then
					chosen_joker.ability.extra[k] = v * 1.25
				end
			end
		elseif type(chosen_joker.ability.extra) == "number" then
			chosen_joker.ability.extra = chosen_joker.ability.extra * 1.25
		end
		
		chosen_joker.ability.bonus = chosen_joker.ability.bonus * 1.25
		chosen_joker.ability.mult = chosen_joker.ability.mult * 1.25
		chosen_joker.ability.t_chips = chosen_joker.ability.t_chips * 1.25
		chosen_joker.ability.t_mult = chosen_joker.ability.t_mult * 1.25

		card_eval_status_text(chosen_joker, 'extra', nil, nil, nil, { message = localize('k_upgrade_ex') })
		chosen_joker:juice_up(0.3, 0.5)
		return 
	end
}

local headphones = {
	key = "headphones",
	set = "Amplify",
	atlas = "cardspack",
	order = 3,
	name = "Headphones",
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

local antenna = {
	key = "antenna",
	set = "Amplify",
	atlas = "cardspack",
	order = 4,
	name = "Antenna",
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

local sonar = {
	key = "sonar",
	set = "Amplify",
	atlas = "cardspack",
	order = 12,
	name = "Sonar",
	pos = {
			x = 12,
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

local satellite_dish = {
	key = "satellite_dish",
	set = "Amplify",
	atlas = "cardspack",
	order = 5,
	name = "Satellite Dish",
	pos = {
			x = 11,
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
	name = "Megaphone",
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
		return 
	end
}

local microphone = {
	key = "microphone",
	set = "Amplify",
	atlas = "cardspack",
	order = 7,
	name = "Microphone",
	pos = {
			x = 7,
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

local oscillator = {
	key = "oscillator",
	set = "Amplify",
	atlas = "cardspack",
	order = 13,
	name = "Oscillator",
	pos = {
			x = 8,
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

local record_player = {
	key = "record_player",
	set = "Amplify",
	atlas = "cardspack",
	order = 8,
	name = "Record Player",
	pos = {
			x = 10,
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

local soundboard = {
	key = "soundboard",
	set = "Amplify",
	atlas = "cardspack",
	order = 9,
	name = "Soundboard",
	pos = {
			x = 14,
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

local tape_recorder = {
	key = "tape_recorder",
	set = "Amplify",
	atlas = "cardspack",
	order = 11,
	name = "Tape Recorder",
	pos = {
			x = 15,
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

local echo = {
	key = "echo",
	set = "Amplify",
	atlas = "cardspack",
	order = 14,
	name = "Echo",
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

local equalizer = {
	key = "equalizer",
	set = "Amplify",
	atlas = "cardspack",
	order = 15,
	name = "Equalizer",
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
	order = 16,
	name = "Amplified",
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

local tuning_fork = {
	key = "tuning_fork",
	set = "Amplify",
	atlas = "cardspack",
	order = 10,
	name = "Tuning Fork",
	pos = {
			x = 2,
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
			},
			mult = {
				value = 0,
				times = 0
			},
			t_chips = {
				value = 0,
				times = 0
			},
			t_mult = {
				value = 0,
				times = 0
			}
		}

		local defaultExtraKey = "pe_default"
		local extra = {}

		local average = function(stat)
			return stat.value / stat.times
		end

		for i, joker in ipairs(jokers) do
			for stat, value in pairs(stats) do
				sendDebugMessage("Joker ability: " .. inspect(joker.ability))
				if type(joker.ability[stat]) == "number" then
					stats[stat].value = stats[stat].value + joker.ability[stat]
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

			if type(joker.ability.extra) == "number" then
				if not extra[defaultExtraKey] then
					extra[defaultExtraKey] = {
						value = joker.ability.extra,
						times = 1
					}
				else
					extra[defaultExtraKey].value = extra[defaultExtraKey].value + joker.ability.extra
					extra[defaultExtraKey].times = extra[defaultExtraKey].times + 1
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
				joker.ability[stat] = value
			end

			if type(joker.ability.extra) == "table" then
				for stat, value in pairs(extra) do
					if joker.ability.extra[stat] then
						joker.ability.extra[stat] = value
					end
				end
			end

			if type(joker.ability.extra) == "number" then
				joker.ability.extra = extra[defaultExtraKey]
			end

			joker:juice_up(0.3, 0.5)
			card_eval_status_text(joker, 'extra', nil, nil, nil,
				{ message = localize('k_tuning_fork') })
		end
	end
}

local list = {
	radio,
	speaker,
	headphones,
	echo,
	equalizer,
	oscillator,
	sonar,
	antenna,
	satellite_dish,
	megaphone,
	microphone,
	record_player,
	soundboard,
	tape_recorder,
	amplified,
	tuning_fork
}

return {
	name = "Amplified 1",
	list = list
}