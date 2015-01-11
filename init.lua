---
---Titanium Mod Version 4 By Aqua. Added new Google Glass Titanium. Be nice this is my first mod!!! Subscribe to my YouTube: youtube.com/theshaunzero!
---

---
---blocks
---

minetest.register_node( "titanium:titanium_in_ground", {
	description = "Titanium Ore",
	tile_images = { "default_stone.png^titanium_titanium_in_ground.png" },
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
	drop = 'craft "titanium:titanium" 1',
})

minetest.register_node( "titanium:block", {
	description = "Titanium Block",
	tile_images = { "titanium_block.png" },
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("titanium:glass", {
	description = "Titanium Glass",
	drawtype = "glasslike",
	tile_images = {"titanium_glass.png"},
	light_propagates = true,
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {snappy=1,cracky=2,oddly_breakable_by_hand=2},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craftitem( "titanium:titanium", {
	description = "Titanium",
	inventory_image = "titanium_titanium.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "titanium:tougher_titanium", {
	description = "Tougher Titanium",
	inventory_image = "tougher_titanium.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_node( "titanium:titanium_plate", {
	description = "Titanium Plate",
	tile_images = {"titanium_plate.png"},
	inventory_image = "titanium_plate.png",
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node( "titanium:titanium_tv_1", {
	description = "Titanium TV",
	tile_images = { "titanium_tv_1.png" },
	is_ground_content = true,
	groups = {snappy=1,bendy=2,cracky=1,melty=2,level=2},
	light_source = 8,
})

minetest.register_node( "titanium:titanium_tv_2", {
	description = "Titanium TV",
	tile_images = { "titanium_tv_2.png" },
	is_ground_content = true,
	groups = {snappy=1,bendy=2,cracky=1,melty=2,level=2},
	drop = 'titanium:titanium_tv_1',
	light_source = 8,
})

minetest.register_abm(
		{nodenames = {"titanium:titanium_tv_1", "titanium:titanium_tv_2"}, 
		interval = 12,
		chance = 1,
		action = function(pos, node)
		if math.random(2) == 1
		and node.name == "titanium:titanium_tv_2" then
			minetest.add_node(pos,{name="titanium:titanium_tv_1"})
		elseif node.name == "titanium:titanium_tv_1" then
			minetest.add_node(pos,{name="titanium:titanium_tv_2"})
		end
	   end 
})
			
---
---tools
---

minetest.register_tool("titanium:sword", {
	description = "Titanium Sword",
	inventory_image = "titanium_sword.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			fleshy={times={[1]=2.00, [2]=0.60, [3]=0.20}, uses=1000, maxlevel=2},
			snappy={times={[2]=0.60, [3]=0.20}, uses=1000, maxlevel=1},
			choppy={times={[3]=0.70}, uses=1000, maxlevel=0}
		}
	}
})

minetest.register_tool("titanium:axe", {
	description = "Titanium Axe",
	inventory_image = "titanium_axe.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.50, [2]=1.50, [3]=1.00}, uses=1500, maxlevel=2},
			fleshy={times={[2]=1.00, [3]=0.50}, uses=1200, maxlevel=1}
		}
	},
})

minetest.register_tool("titanium:shovel", {
	description = "Titanium Shovel",
	inventory_image = "titanium_shovel.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=1.0, [2]=0.50, [3]=0.50}, uses=1500, maxlevel=3}
		}
	},
})
	
	minetest.register_tool("titanium:pick", {
	description = "Titanium Pickaxe",
	inventory_image = "titanium_pick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			cracky={times={[1]=2.4, [2]=1.0, [3]=0.6}, uses=1600, maxlevel=3},
			crumbly={times={[1]=2.4, [2]=1.0, [3]=0.6}, uses=1600, maxlevel=3},
			snappy={times={[1]=2.4, [2]=1.0, [3]=0.6}, uses=1600, maxlevel=3}
		}
	},
})

---
---crafting
---

minetest.register_craft({
	output = 'titanium:pick',
	recipe = {
		{'titanium:titanium', 'titanium:titanium', 'titanium:titanium'},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'titanium:axe',
	recipe = {
		{'titanium:titanium', 'titanium:titanium', ''},
		{'titanium:titanium', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'titanium:shovel',
	recipe = {
		{'', 'titanium:titanium', ''},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'titanium:sword',
	recipe = {
		{'', 'titanium:titanium', ''},
		{'', 'titanium:titanium', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'titanium:block',
	recipe = {
		{'titanium:titanium', 'titanium:titanium', 'titanium:titanium'},
		{'titanium:titanium', 'titanium:titanium', 'titanium:titanium'},
		{'titanium:titanium', 'titanium:titanium', 'titanium:titanium'},
	}
})

minetest.register_craft({
	output = 'titanium:titanium 9',
	recipe = {
		{'', 'titanium:block', ''},
	}
})

minetest.register_craft({
	output = 'titanium:glass 3',
	recipe = {
		{'', 'titanium:titanium', ''},
		{'titanium:titanium', 'default:glass', 'titanium:titanium'},
		{'', 'titanium:titanium', ''},
	}
})

minetest.register_craft({
	output = 'titanium:tougher_titanium',
	recipe = {
		{'titanium:titanium', 'titanium:titanium'},
		{'titanium:titanium', 'titanium:titanium'},
	}
})

minetest.register_craft({
	output = 'titanium:titanium_tv_1',
	recipe = {
		{'default:steel_ingot', 'titanium:tougher_titanium', 'default:steel_ingot'},
		{'titanium:tougher_titanium', 'default:glass', 'titanium:tougher_titanium'},
		{'default:steel_ingot', 'titanium:tougher_titanium', 'default:steel_ingot'},
	}
})

minetest.register_craft({
	output = 'titanium:titanium_plate 9',
	recipe = {
		{'titanium:titanium', 'titanium:titanium', 'titanium:titanium'},
		{'titanium:titanium', 'titanium:tougher_titanium', 'titanium:titanium'},
		{'titanium:titanium', 'titanium:titanium', 'titanium:titanium'},
	}
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "titanium:titanium_in_ground",
	wherein	= "default:stone",
	clust_scarcity = 8*8*8,
	clust_num_ores = 2,
	clust_size = 2,
	height_min = -31000,
	height_max = -1500,
})

local players = {}
local player_positions = {}
local last_wielded = {}

function round(num) 
	return math.floor(num + 0.5) 
end

function check_for_googles (player)
	if not player then
		return
	end
	local inv = player:get_inventory()
	local hotbar=inv:get_list("main")
	for index=1,8 do
		if hotbar[index]:get_name() == "titanium:sam_titanium" then
			return true
		end
	end
end   

minetest.register_on_joinplayer(function(player)
	local player_name = player:get_player_name()
	table.insert(players, player_name)
	last_wielded[player_name] = player:get_wielded_item():get_name()
	local pos = player:getpos()
	pos = vector.round(pos)
	pos.y = pos.y+1
	if not check_for_googles(player)
	and minetest.get_node(pos).name == "titanium:light" then
		minetest.remove_node(pos)
	end
	player_positions[player_name] = pos
end)

minetest.register_on_leaveplayer(function(player)
	local player_name = player:get_player_name()
	for i,v in pairs(players) do
		if v == player_name then 
			table.remove(players, i)
			last_wielded[player_name] = nil
			player_positions[player_name] = nil
			local pos = vector.round(player:getpos())
			pos.y = pos.y+1
			if minetest.get_node(pos).name == "titanium:light" then
				minetest.remove_node(pos)
			end
			return
		end
	end
end)

local timer = 0
minetest.register_globalstep(function(dtime)
	timer = timer+dtime
	if timer < 0.5 then
		return
	end
	timer = 0
	for i,player_name in pairs(players) do
		local player = minetest.get_player_by_name(player_name)
		if check_for_googles(player) then
			local pos = vector.round(player:getpos())
			pos.y = pos.y+1
			local new_pos = not vector.equals(pos, player_positions[player_name])
			if last_wielded[player_name] ~= "titanium:sam_titanium"
			or new_pos then
				if minetest.get_node_light(pos) < 11
				and minetest.get_node(pos).name == "air" then
					minetest.add_node(pos, {name="titanium:light"})
				end
				if new_pos then
					local old_pos = player_positions[player_name]
					if minetest.get_node(old_pos).name == "titanium:light" then
						minetest.remove_node(old_pos)
					end
				end
				player_positions[player_name] = pos
			end

			last_wielded[player_name] = wielded_item;
		elseif last_wielded[player_name] == "titanium:sam_titanium" then
			local pos = vector.round(player:getpos())
			pos.y = pos.y+1
			if minetest.get_node(pos).name == "titanium:light" then
				minetest.remove_node(pos)
			end
			local old_pos = player_positions[player_name]
			if minetest.get_node(old_pos).name == "titanium:light" then
				minetest.remove_node(old_pos)
			end
			last_wielded[player_name] = wielded_item
		end
	end
end)

--------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------Version 4-----------------------------------------------------------------------

minetest.register_node("titanium:light", {
	drawtype = "airlike",
	walkable = false,
	light_propagates = true,
	sunlight_propagates = true,
	drop = "",
	light_source = 11,
	pointable = false,
})

minetest.register_tool("titanium:sam_titanium", {
	description = "Google Glass Titanium",
	inventory_image = "sam_titanium.png",
	wield_image = "sam_titanium.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			cracky={times={[2]=1.20, [3]=0.80}, uses=5, maxlevel=1}
		}
	},
})

minetest.register_craft({
	output = 'titanium:sam_titanium',
	recipe = {
		{'titanium:titanium_plate', 'default:torch', 'titanium:titanium_plate'},
		{'titanium:glass', 'default:mese_crystal', 'titanium:glass'},
	}
})
--------------------------------------------------------
minetest.register_alias("titanium:who_knows", "air")

minetest.log("info", "[Titanium Mod] Loaded! By Aqua! Subscribe to my YouTube: youtube.com/theshaunzero!")
