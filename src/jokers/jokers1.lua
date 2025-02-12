local duper ={ 
    key = "duper",
    name = "Duper",
    pos = {x = 0, y = 0},
    config = {extra = {h_size = 1}},
    rarity = 1, 
    cost = 1, 
    atlas = "jokers",
    blueprint_compat = true,
    unlocked = true,
    discovered = true,
    calculate = function(self, card, context)
      if context.using_consumeable and (context.consumeable.ability.set == "Amplify") then
        G.E_MANAGER:add_event(Event({
            func = function()
              local card = create_card("Amplify", G.pack_cards, nil, nil, true, true, context.consumeable.config.center_key, nil)
              card:add_to_deck()
              G.consumeables:emplace(card)

              return true
            end
        }))

        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil,
				{ message = localize('k_duplicated_ex') })
     end
    end,
    add_to_deck = function(self, card, from_debuff)
      if not from_debuff then
        -- G.hand:change_size(card.ability.extra.h_size)
      end


    end,
    remove_from_deck = function(self, card, from_debuff)
      if not from_debuff then
        -- G.hand:change_size(-card.ability.extra.h_size)
      end
    end
  }
  

return {
    name = "Jokers",
    list = {duper}
}