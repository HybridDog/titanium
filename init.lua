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
	drop = 'titanium:screen_1',
	light_source = 8,
})

minetest.register_node( "titanium:titanium_tv_2", {
	description = "Titanium TV",
	tile_images = { "titanium_tv_2.png" },
	is_ground_content = true,
	groups = {snappy=1,bendy=2,cracky=1,melty=2,level=2},
	drop = 'titanium:screen_1',
	light_source = 8,
})

minetest.register_abm(
        {nodenames = {"titanium:titanium_tv_1", "titanium:titanium_tv_2"}, 
        interval = 12,
        chance = 1,
        action = function(pos)
		local i = math.random(1,2)
        
			if i== 1 then
				minetest.env:add_node(pos,{name="titanium:titanium_tv_1"})
			end
		
			if i== 2 then
				minetest.env:add_node(pos,{name="titanium:titanium_tv_2"})
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

print("[Titanium Mod] Loaded! By Aqua! Subscribe to my YouTube: youtube.com/theshaunzero!")

local function generate_ore(name, wherein, minp, maxp, seed, chunks_per_volume, ore_per_chunk, height_min, height_max)
	if maxp.y < height_min or minp.y > height_max then
		return
	end
	local y_min = math.max(minp.y, height_min)
	local y_max = math.min(maxp.y, height_max)
	local volume = (maxp.x-minp.x+1)*(y_max-y_min+1)*(maxp.z-minp.z+1)
	local pr = PseudoRandom(seed)
	local num_chunks = math.floor(chunks_per_volume * volume)
	local chunk_size = 3
	if ore_per_chunk <= 4 then
		chunk_size = 2
	end
	local inverse_chance = math.floor(chunk_size*chunk_size*chunk_size / ore_per_chunk)
	--print("generate_ore num_chunks: "..dump(num_chunks))
	for i=1,num_chunks do
		local y0 = pr:next(y_min, y_max-chunk_size+1)
		if y0 >= height_min and y0 <= height_max then
			local x0 = pr:next(minp.x, maxp.x-chunk_size+1)
			local z0 = pr:next(minp.z, maxp.z-chunk_size+1)
			local p0 = {x=x0, y=y0, z=z0}
			for x1=0,chunk_size-1 do
			for y1=0,chunk_size-1 do
			for z1=0,chunk_size-1 do
				if pr:next(1,inverse_chance) == 1 then
					local x2 = x0+x1
					local y2 = y0+y1
					local z2 = z0+z1
					local p2 = {x=x2, y=y2, z=z2}
					if minetest.env:get_node(p2).name == wherein then
						minetest.env:set_node(p2, {name=name})
					end
				end
			end
			end
			end
		end
	end
end

minetest.register_on_generated(function(minp, maxp, seed)
generate_ore("titanium:titanium_in_ground", "default:stone", minp, maxp, seed+21,   1/8/8/8,    2, -31000,  -1500)
end)

local players = {}
local player_positions = {}
local last_wielded = {}

function round(num) 
	return math.floor(num + 0.5) 
end

function check_for_googles (player)
if player==nil then return false end
local inv = player:get_inventory()
local hotbar=inv:get_list("main")
for index=1,8,1 do
    if hotbar[index]:get_name() == "titanium:sam_titanium" then
        return "titanium:sam_titanium"
    end
end
return false
end   

minetest.register_on_joinplayer(function(player)
	local player_name = player:get_player_name()
	table.insert(players, player_name)
	last_wielded[player_name] = player:get_wielded_item():get_name()
	local pos = player:getpos()
	local rounded_pos = {x=round(pos.x),y=round(pos.y)+1,z=round(pos.z)}
    local wielded_item = check_for_googles(player)
	if wielded_item ~= "titanium:sam_titanium" then
		minetest.env:add_node(rounded_pos,{type="node",name="titanium:who_knows"})
		minetest.env:add_node(rounded_pos,{type="node",name="air"})
	end
	player_positions[player_name] = {}
	player_positions[player_name]["x"] = rounded_pos.x;
	player_positions[player_name]["y"] = rounded_pos.y;
	player_positions[player_name]["z"] = rounded_pos.z;
end)

minetest.register_on_leaveplayer(function(player)
	local player_name = player:get_player_name()
	for i,v in ipairs(players) do
		if v == player_name then 
			table.remove(players, i)
			last_wielded[player_name] = nil
			local pos = player:getpos()
			local rounded_pos = {x=round(pos.x),y=round(pos.y)+1,z=round(pos.z)}
			minetest.env:add_node(rounded_pos,{type="node",name="titanium:who_knows"})
			minetest.env:add_node(rounded_pos,{type="node",name="air"})
			player_positions[player_name]["x"] = nil
			player_positions[player_name]["y"] = nil
			player_positions[player_name]["z"] = nil
			player_positions[player_name]["m"] = nil
			player_positions[player_name] = nil
		end
	end
end)

minetest.register_globalstep(function(dtime)
	for i,player_name in ipairs(players) do
		local player = minetest.env:get_player_by_name(player_name)
		local wielded_item = check_for_googles(player)
		if wielded_item == "titanium:sam_titanium" then
			local pos = player:getpos()
			local rounded_pos = {x=round(pos.x),y=round(pos.y)+1,z=round(pos.z)}
			if (last_wielded[player_name] ~= "titanium:sam_titanium") or (player_positions[player_name]["x"] ~= rounded_pos.x or player_positions[player_name]["y"] ~= rounded_pos.y or player_positions[player_name]["z"] ~= rounded_pos.z) then
				local is_air  = minetest.env:get_node_or_nil(rounded_pos)
				if is_air == nil or (is_air ~= nil and (is_air.name == "air" or is_air.name == "titanium:light")) then
					minetest.env:add_node(rounded_pos,{type="node",name="titanium:light"})
				end
				if (player_positions[player_name]["x"] ~= rounded_pos.x or player_positions[player_name]["y"] ~= rounded_pos.y or player_positions[player_name]["z"] ~= rounded_pos.z) then
					local old_pos = {x=player_positions[player_name]["x"], y=player_positions[player_name]["y"], z=player_positions[player_name]["z"]}
					local is_light = minetest.env:get_node_or_nil(old_pos)
					if is_light ~= nil and is_light.name == "titanium:light" then
						minetest.env:add_node(old_pos,{type="node",name="titanium:who_knows"})
						minetest.env:add_node(old_pos,{type="node",name="air"})
					end
				end
				player_positions[player_name]["x"] = rounded_pos.x
				player_positions[player_name]["y"] = rounded_pos.y
				player_positions[player_name]["z"] = rounded_pos.z
			end

			last_wielded[player_name] = wielded_item;
		elseif last_wielded[player_name] == "titanium:sam_titanium" then
			local pos = player:getpos()
			local rounded_pos = {x=round(pos.x),y=round(pos.y)+1,z=round(pos.z)}
			repeat
				local is_light  = minetest.env:get_node_or_nil(rounded_pos)
				if is_light ~= nil and is_light.name == "titanium:light" then
					minetest.env:add_node(rounded_pos,{type="node",name="titanium:who_knows"})
					minetest.env:add_node(rounded_pos,{type="node",name="air"})
				end
			until minetest.env:get_node_or_nil(rounded_pos) ~= "titanium:light"
			local old_pos = {x=player_positions[player_name]["x"], y=player_positions[player_name]["y"], z=player_positions[player_name]["z"]}
			repeat
				is_light  = minetest.env:get_node_or_nil(old_pos)
				if is_light ~= nil and is_light.name == "titanium:light" then
					minetest.env:add_node(old_pos,{type="node",name="titanium:who_knows"})
					minetest.env:add_node(old_pos,{type="node",name="air"})
				end
			until minetest.env:get_node_or_nil(old_pos) ~= "titanium:light"
			last_wielded[player_name] = wielded_item
		end
	end
end)

--------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------Version 4-----------------------------------------------------------------------

minetest.register_node("titanium:light", {
	drawtype = "glasslike",
	tile_images = {"titanium.png"},
	inventory_image = minetest.inventorycube("titanium.png"),
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	light_propagates = true,
	sunlight_propagates = true,
	light_source = 11,
	selection_box = {
        type = "fixed",
        fixed = {0, 0, 0, 0, 0, 0},
    },
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
		{'', '', ''},
	}
})
--------------------------------------------------------
minetest.register_node("titanium:who_knows", {
	description = "?Who Knows?",
	tiles = {"titanium.png"},
	is_ground_content = true,
	groups = {not_in_creative_inventory=1},
})