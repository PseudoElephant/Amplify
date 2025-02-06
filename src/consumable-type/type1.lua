local amplified = {
	key = "Amplified",
	primary_colour = HEX("4F6367"),
	secondary_colour = HEX("4ABA8D"),
	loc_txt =  	{
			name = 'Amplified', -- used on card type badges
			collection = 'Amplified Cards', -- label for the button to access the collection
		},
	collection_row = {6, 6},
	shop_rate = 2,
	default = "c_amp_pokeball"
}

return {
	name = "Amplified Consumable Types",
	list = {amplified}
}