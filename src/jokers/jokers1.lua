local gambler ={ 
    key = "gambler",
    name = "gambler",
    pos = {x = 0, y = 0},
    config = {extra = {h_size = 1}},
    rarity = 1, 
    cost = 1, 
    atlas = "jokers",
    blueprint_compat = true,
    unlocked = true,
    discovered = true,
    calculate = function(self, card, context)
     if context.setting_blind and not self.getting_sliced then
        G.E_MANAGER:add_event(Event({
            func = function()
                local card = create_card("Amplify", G.pack_cards, nil, nil, true, true, "c_amp_radio", nil)
                card:add_to_deck()
                G.consumeables:emplace(card)
                
                local card = create_card("Amplify", G.pack_cards, nil, nil, true, true, "c_amp_speaker", nil)
                card:add_to_deck()
                G.consumeables:emplace(card)

                local card = create_card("Amplify", G.pack_cards, nil, nil, true, true, "c_amp_headphones", nil)
                card:add_to_deck()
                G.consumeables:emplace(card)

                local card = create_card("Amplify", G.pack_cards, nil, nil, true, true, "c_amp_antenna", nil)
                card:add_to_deck()
                G.consumeables:emplace(card)

                local card = create_card("Amplify", G.pack_cards, nil, nil, true, true, "c_amp_sonar", nil)
                card:add_to_deck()
                G.consumeables:emplace(card)

                local card = create_card("Amplify", G.pack_cards, nil, nil, true, true, "c_amp_satellite_dish", nil)
                card:add_to_deck()
                G.consumeables:emplace(card)

                local card = create_card("Amplify", G.pack_cards, nil, nil, true, true, "c_amp_megaphone", nil)
                card:add_to_deck()
                G.consumeables:emplace(card)

                local card = create_card("Amplify", G.pack_cards, nil, nil, true, true, "c_amp_microphone", nil)
                card:add_to_deck()
                G.consumeables:emplace(card)

                local card = create_card("Amplify", G.pack_cards, nil, nil, true, true, "c_amp_oscillator", nil)
                card:add_to_deck()
                G.consumeables:emplace(card)

                local card = create_card("Amplify", G.pack_cards, nil, nil, true, true, "c_amp_record_player", nil)
                card:add_to_deck()
                G.consumeables:emplace(card)

                local card = create_card("Amplify", G.pack_cards, nil, nil, true, true, "c_amp_soundboard", nil)
                card:add_to_deck()
                G.consumeables:emplace(card)

                local card = create_card("Amplify", G.pack_cards, nil, nil, true, true, "c_amp_tape_recorder", nil)
                card:add_to_deck()
                G.consumeables:emplace(card)

                local card = create_card("Amplify", G.pack_cards, nil, nil, true, true, "c_amp_echo", nil)
                card:add_to_deck()
                G.consumeables:emplace(card)

                local card = create_card("Amplify", G.pack_cards, nil, nil, true, true, "c_amp_equalizer", nil)
                card:add_to_deck()
                G.consumeables:emplace(card)

                local card = create_card("Amplify", G.pack_cards, nil, nil, true, true, "c_amp_amplified", nil)
                card:add_to_deck()
                G.consumeables:emplace(card)

                local card = create_card("Amplify", G.pack_cards, nil, nil, true, true, "c_amp_tuning_fork", nil)
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
    list = {gambler}
}