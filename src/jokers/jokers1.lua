local gambler ={ 
    key = "gambler",
    name = "gambler",
    pos = {x = 0, y = 0},
    config = {extra = {h_size = 1}},
    rarity = 2, 
    cost = 5, 
    atlas = "jokers",
    blueprint_compat = true,
    unlocked = true,
    discovered = true,
    calculate = function(self, card, context)
     
    end,
    add_to_deck = function(self, card, from_debuff)
      if not from_debuff then
        G.hand:change_size(card.ability.extra.h_size)
      end
    end,
    remove_from_deck = function(self, card, from_debuff)
      if not from_debuff then
        G.hand:change_size(-card.ability.extra.h_size)
      end
    end
  }
  

return {
    name = "Jokers",
    list = {gambler}
}