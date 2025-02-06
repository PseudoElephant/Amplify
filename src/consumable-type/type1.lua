local amplified = {
	key = "Amplify",
	primary_colour = HEX("4F6367"),
	secondary_colour = HEX("4ABA8D"),
	loc_txt =  	{
			name = 'Amplify', -- used on card type badges
			collection = 'Amplified Cards', -- label for the button to access the collection
		},
	collection_row = {6, 6},
	shop_rate = 2,
	default = "c_amp_amplify"
}

return {
	name = "Amplified Consumable Types",
	list = {amplified}
}