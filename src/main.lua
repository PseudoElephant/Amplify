
--  UI CONFIGURATION SETTINGS --
local CFG = SMODS.current_mod.config
local mod_dir = ''..SMODS.current_mod.path

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

-- LOAD SPRITES
local sprite, load_error = SMODS.load_file("sprites.lua")
if load_error then
  sendDebugMessage ("ERROR: "..load_error)
else
  sprite()
end

-- BOOSTER PACKS
local boosters = NFS.getDirectoryItems(mod_dir.."boosters")
for _, file in ipairs(boosters) do
    sendDebugMessage ("LOADING: "..file)
    local booster, load_error = SMODS.load_file("boosters/"..file)
    if load_error then
      sendDebugMessage ("AMP ERR: "..load_error)
    else
      local curr_booster = booster()
      if curr_booster.init then curr_booster:init() end
      
      for i, item in ipairs(curr_booster.list) do
        SMODS.Booster(item)
      end
    end
  end

-- CREATE NEW CONSUMABLE ITEM --


-- UPDATE JOKER CARD --

