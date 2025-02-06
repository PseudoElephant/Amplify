local pokeball = {
	key = "pokeball",
	set = "Amplified",
	atlas = "cardspack",
	order = 1,
	name = "Pokeball",
	pos = {
			x = 0,
			y = 0
	},
	cost = 4,
	hidden = false,

	can_use = function (self, card)
			return true
	end,

	use = function (self, card, area, copier)
		return 
	end
}

local list = {pokeball}

return {
	name = "Amplified 1",
	list = list
}