local create_amplify_card = function(self, card)
      return create_card("Tarot", G.pack_cards, nil, nil, true, true, nil, nil)
end

local pack1 = {
  name = "Amplify Pack",
	key = "amplify_normal_1",
	kind = "Amplify",
	atlas = "amplifypack",
	pos = { x = 0, y = 0 },
	config = { extra = 3, choose = 1},
	cost = 4,
	order = 1,
	weight = 1,
  draw_hand = true,
  unlocked = true,
  discovered = true,

	create_card = function(self, card)
    return create_amplify_card(self, card)
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.config.center.config.choose, card.ability.extra } }
	end,

	group_key = "pe_amplify_pack",
}

local pack2 = {
    name = "Amplify Pack",
    key = "amplify_jumbo_1",
    kind = "Amplify",
    atlas = "amplifypack",
    pos = { x = 1, y = 0 },
    config = { extra = 5, choose = 1},
    cost = 4,
    order = 2,
    weight = 1,
    draw_hand = true,
    unlocked = true,
    discovered = true,

    create_card = function(self, card)
      return create_amplify_card(self, card)
    end,

    loc_vars = function(self, info_queue, card)
      return { vars = { card.config.center.config.choose, card.ability.extra } }
    end,

    group_key = "pe_amplify_pack",
  }


return {
  name = "Amplify Packs",
  list = {pack1, pack2}
}