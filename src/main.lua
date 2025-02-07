
--  UI CONFIGURATION SETTINGS --
local CFG = SMODS.current_mod.config
local mod_dir = ''..SMODS.current_mod.path

SMODS.current_mod.config_tab = function()
	local function dummy_callback() end

  return {
    n=G.UIT.ROOT, 

    config={
      align = "cm", 
      padding = 0.05, 
      colour = G.C.CLEAR
    }, 

    nodes={
      create_toggle({
        ref_table = CFG,
        ref_value = "infinite_upgrades",
        label = "Infinite Upgrades",
        callback = dummy_callback
      }),
	  }
  }
end

-- LOAD SPRITES
local sprite, load_error = SMODS.load_file("sprites.lua")
if load_error then
  sendDebugMessage ("ERROR: "..load_error)
else
  sprite()
end

-- LOAD CONSUMABLE SETS --
local pconsumable_types = NFS.getDirectoryItems(mod_dir.."consumable-type")

for _, file in ipairs(pconsumable_types) do
  sendDebugMessage ("The file is: "..file)
  local con_type, load_error = SMODS.load_file("consumable-type/"..file)

  if load_error then
    sendDebugMessage ("The error is: "..load_error)
  else
    local curr_type = con_type()
    if curr_type.init then curr_type:init() end
    
    for i, item in ipairs(curr_type.list) do
        SMODS.ConsumableType(item)
    end
  end
end

-- CREATE NEW CONSUMABLE ITEM --
local pconsumables = NFS.getDirectoryItems(mod_dir.."consumables")

for _, file in ipairs(pconsumables) do
  sendDebugMessage ("The file is: "..file)
  local consumable, load_error = SMODS.load_file("consumables/"..file)

  if load_error then
    sendDebugMessage ("The error is: "..load_error)
  else
    local curr_consumable = consumable()
    if curr_consumable.init then curr_consumable:init() end
    
    for i, item in ipairs(curr_consumable.list) do
        SMODS.Consumable(item)
    end
  end
end 

-- BOOSTER PACKS
local boosters = NFS.getDirectoryItems(mod_dir.."boosters")
for _, file in ipairs(boosters) do
    sendDebugMessage("LOADING: "..file)
    local booster, load_error = SMODS.load_file("boosters/"..file)

    if load_error then
      sendDebugMessage("AMP ERR: "..load_error)
    else
      local curr_booster = booster()
      if curr_booster.init then curr_booster:init() end
      
      for i, item in ipairs(curr_booster.list) do
        SMODS.Booster(item)
      end
    end
  end

-- JOKERS

local jokers = NFS.getDirectoryItems(mod_dir.."jokers")
for _, file in ipairs(jokers) do
	sendDebugMessage("LOADING: "..file)
	local joker, load_error = SMODS.load_file("jokers/"..file)

	if load_error then
	  sendDebugMessage("AMP ERR: "..load_error)
	else
	  local curr_joker = joker()
	  if curr_joker.init then curr_joker:init() end
	  
	  for i, item in ipairs(curr_joker.list) do
		SMODS.Joker(item)
	  end
	end
  end