-- set next_upgrade on entities that come before our uranium entites
if data.raw["assembling-machine"]["assembling-machine-3"] then
    data.raw["assembling-machine"]["assembling-machine-3"].next_upgrade = "uranium-assembling-machine"
end

if data.raw["assembling-machine"]["chemical-plant"] then
    data.raw["assembling-machine"]["chemical-plant"].fast_replaceable_group = "chemical-plant"
    data.raw["assembling-machine"]["chemical-plant"].next_upgrade = "uranium-chemical-plant"
end

if data.raw["furnace"]["electric-furnace"] then
    data.raw["furnace"]["electric-furnace"].next_upgrade = "uranium-electric-furnace"
end

if data.raw["mining-drill"]["electric-mining-drill"] then
    data.raw["mining-drill"]["electric-mining-drill"].fast_replaceable_group = "mining-drill"
    data.raw["mining-drill"]["electric-mining-drill"].next_upgrade = "uranium-electric-mining-drill"
end

if data.raw["assembling-machine"]["oil-refinery"] then
    data.raw["assembling-machine"]["oil-refinery"].fast_replaceable_group = "oil-refinery"
    data.raw["assembling-machine"]["oil-refinery"].next_upgrade = "uranium-oil-refinery"
end

if data.raw["pump"]["pump"] then
    data.raw["pump"]["pump"].next_upgrade = "uranium-pump"
end

if data.raw["mining-drill"]["pumpjack"] then
    data.raw["mining-drill"]["pumpjack"].fast_replaceable_group = "pumpjack"
    data.raw["mining-drill"]["pumpjack"].next_upgrade = "uranium-pumpjack"
end

if data.raw["radar"]["radar"] then
    data.raw["radar"]["radar"].fast_replaceable_group = "radar"
    data.raw["radar"]["radar"].next_upgrade = "uranium-radar"    
end

if data.raw["roboport"]["roboport"] then
    data.raw["roboport"]["roboport"].fast_replaceable_group = "roboport"
    data.raw["roboport"]["roboport"].next_upgrade = "uranium-roboport"
end

if data.raw.splitter["express-splitter"] then
    data.raw.splitter["express-splitter"].next_upgrade = "uranium-splitter"
end

if data.raw["transport-belt"]["express-transport-belt"] then
    data.raw["transport-belt"]["express-transport-belt"].next_upgrade = "uranium-transport-belt"
end

if data.raw["underground-belt"]["express-underground-belt"] then
    data.raw["underground-belt"]["express-underground-belt"].next_upgrade = "uranium-underground-belt"
end

require("prototypes.technology-updates")