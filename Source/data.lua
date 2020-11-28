if not leighzermods then --generic mod variable to store information that may be needed later
    leighzermods = {}
end

if not leighzermods.leighzeruraniuminnovations then
    leighzermods.leighzeruraniuminnovations = {}

    leighzermods.leighzeruraniuminnovations.equipmentGrid = {}
    leighzermods.leighzeruraniuminnovations.equipmentGrid.width = 14
    leighzermods.leighzeruraniuminnovations.equipmentGrid.height = 14

    leighzermods.leighzeruraniuminnovations.nuclearSciencePack = {}
    leighzermods.leighzeruraniuminnovations.nuclearSciencePack.energyRequired = 21
    leighzermods.leighzeruraniuminnovations.nuclearSciencePack.resultCount = 3    
    leighzermods.leighzeruraniuminnovations.nuclearSciencePack.subgroup = "science-pack"
    leighzermods.leighzeruraniuminnovations.nuclearSciencePack.order = "f[utility-science-pack]-a" -- order immediately after utility science pack
    leighzermods.leighzeruraniuminnovations.nuclearSciencePack.name = "nuclear-science-pack"

    leighzermods.leighzeruraniuminnovations.assemblingMachine = {}
    leighzermods.leighzeruraniuminnovations.assemblingMachine.craftingSpeed = 2
    leighzermods.leighzeruraniuminnovations.assemblingMachine.moduleSlots = 6

    leighzermods.leighzeruraniuminnovations.chemicalPlant = {}
    leighzermods.leighzeruraniuminnovations.chemicalPlant.craftingSpeed = 2
    leighzermods.leighzeruraniuminnovations.chemicalPlant.moduleSlots = 5

    leighzermods.leighzeruraniuminnovations.constructionRobot = {}

    leighzermods.leighzeruraniuminnovations.electricFurnace = {}

    leighzermods.leighzeruraniuminnovations.electricMiningDrill = {}

    leighzermods.leighzeruraniuminnovations.logisticRobot = {}

    leighzermods.leighzeruraniuminnovations.oilRefinery = {}
    leighzermods.leighzeruraniuminnovations.oilRefinery.craftingSpeed = 2
    leighzermods.leighzeruraniuminnovations.oilRefinery.moduleSlots = 5

    leighzermods.leighzeruraniuminnovations.powerArmor = {}

    leighzermods.leighzeruraniuminnovations.pump = {}

    leighzermods.leighzeruraniuminnovations.pumpjack = {}

    leighzermods.leighzeruraniuminnovations.radar = {}

    leighzermods.leighzeruraniuminnovations.roboport = {}

    leighzermods.leighzeruraniuminnovations.logistics = {}
    leighzermods.leighzeruraniuminnovations.logistics.beltSpeed = 0.03125 * 5 -- 5x regular belt speed 75/s 4500/min
    leighzermods.leighzeruraniuminnovations.logistics.undergroundBeltMaxLength = 11 -- following pattern 5, 7, 9, => 11 for reg, fast, express => uranium
end

--load in items, recipes, entities, remnant entities,
require("prototypes.extra-large-equipment-grid")
require("prototypes.nuclear-science-pack")
require("prototypes.uranium-assembling-machine")
require("prototypes.uranium-chemical-plant")
require("prototypes.uranium-construction-robot")
require("prototypes.uranium-electric-furnace")
require("prototypes.uranium-electric-mining-drill")
require("prototypes.uranium-loader")
require("prototypes.uranium-logistic-robot")
require("prototypes.uranium-oil-refinery")
require("prototypes.uranium-power-armor")
require("prototypes.uranium-pump")
require("prototypes.uranium-pumpjack")
require("prototypes.uranium-radar")
require("prototypes.uranium-roboport")
require("prototypes.uranium-splitter")
require("prototypes.uranium-transport-belt")
require("prototypes.uranium-underground-belt")
--load in technologies
require("prototypes.technology")
