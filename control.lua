local item_list = {
	{  1, "rr-power-armor"},
	{  2, "rr-battery"},
	{  3, "rr-exoskeleton"},
	{  1, "rr-fusion-reactor"},
	{ 15, "rr-personal-laser-defense"},
	{  3, "rr-energy-shield"},
	{  1, "rr-personal-roboport"},
	{500, "rr-construction-robot"},
	{  1, "belt-immunity-equipment"},
	{  1, "night-vision-equipment"}
}

-- add items to player inventory
local function InsertIntoInventory(event)
  local player = game.players[event.player_index]

	pcall(player.exit_cutscene)
	
	for _, item in pairs(item_list) do
		if game.item_prototypes[item[2]] ~= nil then
			player.insert{ name = item[2], count = item[1]}
		else
			player.print("Unable to add \"" .. item[2] .. "\" to inventory, please check spelling.")
		end
	end
end

-- add items to inventory
script.on_event(defines.events.on_player_created, InsertIntoInventory)