local create_amplify_card = function(self, card)
      return create_card("Amplify", G.pack_cards, nil, nil, true, true, nil, nil)
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
  draw_hand = false,
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
  key = "amplify_normal_2",
  kind = "Amplify",
  atlas = "amplifypack",
  pos = { x = 1, y = 0 },
  config = { extra = 3, choose = 1},
  cost = 4,
  order = 2,
  weight = 1,
  draw_hand = false,
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

local pack3 = {
    name = "Jumbo Amplify Pack",
    key = "amplify_jumbo_1",
    kind = "Amplify",
    atlas = "amplifypack",
    pos = { x = 2, y = 0 },
    config = { extra = 5, choose = 1},
    cost = 6,
    order = 3,
    weight = 1,
    draw_hand = false,
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

  local pack4 = {
    name = "Mega Amplify Pack",
    key = "amplify_mega_1",
    kind = "Amplify",
    atlas = "amplifypack",
    pos = { x = 3, y = 0 },
    config = { extra = 5, choose = 2},
    cost = 8,
    order = 4,
    weight = 0.25,
    draw_hand = false,
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
  list = {pack1, pack2, pack3, pack4}
}