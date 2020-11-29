-- ordering
-- drill d
-- belt e
-- furnace f
-- assembler g
-- refinery h
-- robotics i 
-- power armor j
-- radar k

-- logistics
local uraniumLogisticsTech = {
    type = "technology",
    name = "uranium-logistics",
    icon_size = 128,
    icon = "__leighzeruraniuminnovations__/graphics/technology/uranium-logistics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "uranium-transport-belt"
      },
      {
        type = "unlock-recipe",
        recipe = "uranium-underground-belt"
      },
      {
        type = "unlock-recipe",
        recipe = "uranium-splitter"
      }
    },
    prerequisites = {"kovarex-enrichment-process"},
    unit =
    {
      count = 2000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 60
    },
    order = "e-p-b-e"
  }

-- weird I know, here for now in case I decide to add a setting to disable nuclear-science-pack for the player
if mods["leighzernuclearsciencepack"] or true then
    uraniumLogisticsTech.prerequisites = {"nuclear-science-pack"}
    table.insert(uraniumLogisticsTech.unit.ingredients, {"nuclear-science-pack",1})
end

if data.raw.technology["logistics-3"] then
  table.insert(uraniumLogisticsTech.prerequisites, "logistics-3")
end

if data.raw.technology["advanced-electronics-2"] then
  table.insert(uraniumLogisticsTech.prerequisites, "advanced-electronics-2")
end

data:extend({
    uraniumLogisticsTech
})

-- assembler
local uraniumAssemblerTech = {
  type = "technology",
  name = "uranium-automation",
  icon_size = 128,
  icon = "__leighzeruraniuminnovations__/graphics/technology/uranium-automation.png",
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "uranium-assembling-machine"
    }
  },
  prerequisites = {"kovarex-enrichment-process"},
  unit =
  {
    count = 2500,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"production-science-pack", 1}
    },
    time = 60
  },
  order = "e-p-b-g"
}

if mods["leighzernuclearsciencepack"] or true then
  uraniumAssemblerTech.prerequisites = {"nuclear-science-pack"}
  table.insert(uraniumAssemblerTech.unit.ingredients, {"nuclear-science-pack",1})
end

if data.raw.technology["automation-3"] then
table.insert(uraniumAssemblerTech.prerequisites, "automation-3")
end

if data.raw.technology["speed-module-2"] then
table.insert(uraniumAssemblerTech.prerequisites, "speed-module-2")
end

if data.raw.technology["effectivity-module-2"] then
table.insert(uraniumAssemblerTech.prerequisites, "effectivity-module-2")
end

data:extend({
  uraniumAssemblerTech
})

local uraniumAdvancedMaterialProcessingTech = {
  type = "technology",
  name = "uranium-advanced-material-processing",
  icon_size = 256, icon_mipmaps = 4,
  icon = "__leighzeruraniuminnovations__/graphics/technology/advanced-material-processing-2.png",
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "uranium-electric-furnace"
    }
  },
  prerequisites = {"kovarex-enrichment-process"},
  unit =
  {
    count = 2000,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"production-science-pack", 1}
    },
    time = 45
  },
  order = "e-p-b-f"
}

if mods["leighzernuclearsciencepack"] or true then
  uraniumAdvancedMaterialProcessingTech.prerequisites = {"nuclear-science-pack"}
  table.insert(uraniumAdvancedMaterialProcessingTech.unit.ingredients, {"nuclear-science-pack",1})
end

if data.raw.technology["speed-module-2"] then
  table.insert(uraniumAdvancedMaterialProcessingTech.prerequisites, "speed-module-2")
end
  
if data.raw.technology["effectivity-module-2"] then
  table.insert(uraniumAdvancedMaterialProcessingTech.prerequisites, "effectivity-module-2")
end

data:extend({
  uraniumAdvancedMaterialProcessingTech
})

local uraniumFluidProcessing = {
  type = "technology",
  name = "uranium-fluid-processing",
  icon_size = 256, icon_mipmaps = 4,
  icon = "__leighzeruraniuminnovations__/graphics/technology/oil-processing.png",
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "uranium-chemical-plant"
    },
    {
      type = "unlock-recipe",
      recipe = "uranium-oil-refinery"
    },
    {
      type = "unlock-recipe",
      recipe = "uranium-pump"
    },
    {
      type = "unlock-recipe",
      recipe = "uranium-pumpjack"
    },
  },
  prerequisites = {"kovarex-enrichment-process"},
  unit =
  {
    count = 5000,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"production-science-pack", 1}
    },
    time = 60
  },
  order = "e-p-b-h"
}

if mods["leighzernuclearsciencepack"] or true then
  uraniumFluidProcessing.prerequisites = {"nuclear-science-pack"}
  table.insert(uraniumFluidProcessing.unit.ingredients, {"nuclear-science-pack",1})
end

if data.raw.technology["speed-module-2"] then
  table.insert(uraniumFluidProcessing.prerequisites, "speed-module-2")
end
  
if data.raw.technology["effectivity-module-2"] then
  table.insert(uraniumFluidProcessing.prerequisites, "effectivity-module-2")
end

if data.raw.technology["coal-liquefaction"] then
  table.insert(uraniumFluidProcessing.prerequisites, "coal-liquefaction")
end

if data.raw.technology["electric-engine"] then
  table.insert(uraniumFluidProcessing.prerequisites, "electric-engine")
end

data:extend({
  uraniumFluidProcessing
})

local uraniumRobotics = {
  type = "technology",
  name = "uranium-robotics",
  icon_size = 256, icon_mipmaps = 4,
  icon = "__leighzeruraniuminnovations__/graphics/technology/robotics.png",
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "uranium-construction-robot"
    },
    {
      type = "unlock-recipe",
      recipe = "uranium-logistic-robot"
    },
    {
      type = "unlock-recipe",
      recipe = "uranium-roboport"
    },    
  },
  prerequisites = {"kovarex-enrichment-process"},
  unit =
  {
    count = 5000,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"utility-science-pack", 1}
    },
    time = 60
  },
  order = "e-p-b-i"
}

if mods["leighzernuclearsciencepack"] or true then
  uraniumRobotics.prerequisites = {"nuclear-science-pack"}
  table.insert(uraniumRobotics.unit.ingredients, {"nuclear-science-pack",1})
end

if data.raw.technology["logistic-system"] then
  table.insert(uraniumRobotics.prerequisites, "logistic-system")
end

if data.raw.technology["construction-robotics"] then
  table.insert(uraniumRobotics.prerequisites, "construction-robotics")
end

data:extend({
  uraniumRobotics
})

local uraniumMining = {
  type = "technology",
  name = "uranium-mining",
  icon_size = 256, icon_mipmaps = 4,
  icon = "__leighzeruraniuminnovations__/graphics/technology/mining-productivity.png",
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "uranium-electric-mining-drill"
    },    
  },
  prerequisites = {"kovarex-enrichment-process"},
  unit =
  {
    count = 1500,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"production-science-pack", 1}
    },
    time = 30
  },
  order = "e-p-b-d"
}

if mods["leighzernuclearsciencepack"] or true then
  uraniumMining.prerequisites = {"nuclear-science-pack"}
  table.insert(uraniumMining.unit.ingredients, {"nuclear-science-pack",1})
end

if data.raw.technology["speed-module-2"] then
  table.insert(uraniumMining.prerequisites, "speed-module-2")
end
  
if data.raw.technology["effectivity-module-2"] then
  table.insert(uraniumMining.prerequisites, "effectivity-module-2")
end

data:extend({
  uraniumMining
})

local uraniumPowerArmor = {
  type = "technology",
  name = "uranium-power-armor",
  icon_size = 256, icon_mipmaps = 4,
  icon = "__leighzeruraniuminnovations__/graphics/technology/power-armor-mk2.png",
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "uranium-power-armor"
    },    
  },
  prerequisites = {"kovarex-enrichment-process"},
  unit =
  {
    count = 2000,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"military-science-pack", 1},
      {"chemical-science-pack", 1},
      {"utility-science-pack", 1},
      {"space-science-pack", 1}
    },
    time = 45
  },
  order = "e-p-b-j"
}

if mods["leighzernuclearsciencepack"] or true then
  uraniumPowerArmor.prerequisites = {"nuclear-science-pack"}
  table.insert(uraniumPowerArmor.unit.ingredients, {"nuclear-science-pack",1})
end

if data.raw.technology["speed-module-3"] then
  table.insert(uraniumPowerArmor.prerequisites, "speed-module-3")
end
  
if data.raw.technology["productivity-module-3"] then
  table.insert(uraniumPowerArmor.prerequisites, "productivity-module-3")
end

if data.raw.technology["effectivity-module-3"] then
  table.insert(uraniumPowerArmor.prerequisites, "effectivity-module-3")
end

if data.raw.technology["space-science-pack"] then
  table.insert(uraniumPowerArmor.prerequisites, "space-science-pack")
end

if data.raw.technology["power-armor-mk2"] then
  table.insert(uraniumPowerArmor.prerequisites, "power-armor-mk2")
end

data:extend({
  uraniumPowerArmor
})

local uraniumRecon = {
  type = "technology",
  name = "uranium-recon",
  icon_size = 200,
  icon = "__leighzeruraniuminnovations__/graphics/technology/uranium-recon.png",
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "uranium-radar"
    },    
  },
  prerequisites = {"kovarex-enrichment-process"},
  unit =
  {
    count = 1000,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"utility-science-pack", 1}
    },
    time = 30
  },
  order = "e-p-b-k"
}

if mods["leighzernuclearsciencepack"] or true then
  uraniumRecon.prerequisites = {"nuclear-science-pack"}
  table.insert(uraniumRecon.unit.ingredients, {"nuclear-science-pack",1})
end

if data.raw.technology["military-4"] then
  table.insert(uraniumRecon.prerequisites, "military-4")
end

if data.raw.technology["speed-module-2"] then
  table.insert(uraniumRecon.prerequisites, "speed-module-2")
end
  
if data.raw.technology["productivity-module-2"] then
  table.insert(uraniumRecon.prerequisites, "productivity-module-2")
end

data:extend({
  uraniumRecon
})