local amplify = {
	key = "amplify",
	set = "Amplify",
	atlas = "cardspack",
	order = 1,
	name = "Amplify",
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

local list = {amplify}

return {
	name = "Amplified 1",
	list = list
}