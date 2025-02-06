
--  UI CONFIGURATION SETTINGS --
local CFG = SMODS.current_mod.config

SMODS.current_mod.config_tab = function()
	local function dummy_callback() end

    return {n=G.UIT.ROOT, config={align = "cm", padding = 0.05, colour = G.C.CLEAR}, nodes={
          create_toggle({
		  				ref_table = CFG,
						ref_value = "infinite_upgrades",
                        label = "Infinite Upgrades",
                        callback = dummy_callback}),
	}}
end

-- CREATE NEW CONSUMABLE ITEM --


-- UPDATE JOKER CARD --

