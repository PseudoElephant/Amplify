SMODS.Atlas({
    key = "amplifypack",
    path = "amplifypacks.png",
    px = 71,
    py = 95
}):register()


--Custom colors for Types (humplydinkle wuz here)
local pokecolors = loc_colour
function loc_colour(_c, _default)
  if not G.ARGS.LOC_COLOURS then
    pokecolors()
  end
  G.ARGS.LOC_COLOURS["item"] = HEX("9AA4B7")
  return pokecolors(_c, _default)
end