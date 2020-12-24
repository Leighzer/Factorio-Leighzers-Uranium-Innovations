if not leighzermods then --generic mod variable to store information that may be needed later
    leighzermods = {}
end

if not leighzermods.leighzeruraniuminnovations then
    leighzermods.leighzeruraniuminnovations = {}

    --important info in one place so we can tweak balance easily
    leighzermods.leighzeruraniuminnovations.equipmentGrid = {}
    leighzermods.leighzeruraniuminnovations.equipmentGrid.width = 14
    leighzermods.leighzeruraniuminnovations.equipmentGrid.height = 14

    leighzermods.leighzeruraniuminnovations.nuclearSciencePack = {}
    leighzermods.leighzeruraniuminnovations.nuclearSciencePack.energyRequired = 21
    leighzermods.leighzeruraniuminnovations.nuclearSciencePack.resultCount = 4
    leighzermods.leighzeruraniuminnovations.nuclearSciencePack.subgroup = "science-pack"
    leighzermods.leighzeruraniuminnovations.nuclearSciencePack.order = "f[utility-science-pack]-a" -- order immediately after utility science pack
    leighzermods.leighzeruraniuminnovations.nuclearSciencePack.name = "nuclear-science-pack"

    leighzermods.leighzeruraniuminnovations.assemblingMachine = {}
    leighzermods.leighzeruraniuminnovations.assemblingMachine.maxHealth = 450
    leighzermods.leighzeruraniuminnovations.assemblingMachine.craftingSpeed = 2
    leighzermods.leighzeruraniuminnovations.assemblingMachine.emmisionsPerMinute = 1
    leighzermods.leighzeruraniuminnovations.assemblingMachine.energyUsage = "750kW"
    leighzermods.leighzeruraniuminnovations.assemblingMachine.moduleSlots = 6

    leighzermods.leighzeruraniuminnovations.chemicalPlant = {}
    leighzermods.leighzeruraniuminnovations.chemicalPlant.maxHealth = 340
    leighzermods.leighzeruraniuminnovations.chemicalPlant.craftingSpeed = 2
    leighzermods.leighzeruraniuminnovations.chemicalPlant.emmisionsPerMinute = 2
    leighzermods.leighzeruraniuminnovations.chemicalPlant.energyUsage = "500kW"
    leighzermods.leighzeruraniuminnovations.chemicalPlant.moduleSlots = 5

    leighzermods.leighzeruraniuminnovations.constructionRobot = {}
    leighzermods.leighzeruraniuminnovations.constructionRobot.maxHealth = 200
    leighzermods.leighzeruraniuminnovations.constructionRobot.maxPayloadSize = 1 -- orig
    leighzermods.leighzeruraniuminnovations.constructionRobot.speed = 0.06 * 2
    leighzermods.leighzeruraniuminnovations.constructionRobot.maxEnergy = "3MJ" -- "1.5MJ"
    leighzermods.leighzeruraniuminnovations.constructionRobot.energyPerTick = "0.1kJ" -- "0.05kJ"
    leighzermods.leighzeruraniuminnovations.constructionRobot.speedMultiplierWhenOutOfEnergy = 0.02 -- orig
    leighzermods.leighzeruraniuminnovations.constructionRobot.energyPerMove = "5kJ" -- orig
    leighzermods.leighzeruraniuminnovations.constructionRobot.minToCharge = 0.2 -- orig
    leighzermods.leighzeruraniuminnovations.constructionRobot.maxToCharge = 0.95 -- orig

    leighzermods.leighzeruraniuminnovations.electricFurnace = {}
    leighzermods.leighzeruraniuminnovations.electricFurnace.maxHealth = 400
    leighzermods.leighzeruraniuminnovations.electricFurnace.craftingSpeed = 4
    leighzermods.leighzeruraniuminnovations.electricFurnace.emmisionsPerMinute = 0.5
    leighzermods.leighzeruraniuminnovations.electricFurnace.energyUsage = "400kW"
    leighzermods.leighzeruraniuminnovations.electricFurnace.moduleSlots = 4

    leighzermods.leighzeruraniuminnovations.electricMiningDrill = {}
    leighzermods.leighzeruraniuminnovations.electricMiningDrill.maxHealth = 340
    leighzermods.leighzeruraniuminnovations.electricMiningDrill.miningSpeed = 1
    leighzermods.leighzeruraniuminnovations.electricMiningDrill.emmisionsPerMinute = 5
    leighzermods.leighzeruraniuminnovations.electricMiningDrill.energyUsage = "200kW"
    leighzermods.leighzeruraniuminnovations.electricMiningDrill.moduleSlots = 5

    leighzermods.leighzeruraniuminnovations.logisticRobot = {}
    leighzermods.leighzeruraniuminnovations.logisticRobot.maxHealth = 200
    leighzermods.leighzeruraniuminnovations.logisticRobot.maxPayloadSize = 1 -- orig
    leighzermods.leighzeruraniuminnovations.logisticRobot.speed = 0.05 * 2
    leighzermods.leighzeruraniuminnovations.logisticRobot.maxEnergy = "3MJ" -- "1.5MJ"
    leighzermods.leighzeruraniuminnovations.logisticRobot.energyPerTick = "0.1kJ" -- "0.05kJ"
    leighzermods.leighzeruraniuminnovations.logisticRobot.speedMultiplierWhenOutOfEnergy = 0.02 -- orig
    leighzermods.leighzeruraniuminnovations.logisticRobot.energyPerMove = "5kJ" -- orig
    leighzermods.leighzeruraniuminnovations.logisticRobot.minToCharge = 0.2 -- orig
    leighzermods.leighzeruraniuminnovations.logisticRobot.maxToCharge = 0.95 -- orig

    leighzermods.leighzeruraniuminnovations.oilRefinery = {}
    leighzermods.leighzeruraniuminnovations.oilRefinery.maxHealth = 400
    leighzermods.leighzeruraniuminnovations.oilRefinery.craftingSpeed = 2
    leighzermods.leighzeruraniuminnovations.oilRefinery.emmisionsPerMinute = 3
    leighzermods.leighzeruraniuminnovations.oilRefinery.energyUsage = "1MW"
    leighzermods.leighzeruraniuminnovations.oilRefinery.moduleSlots = 5

    leighzermods.leighzeruraniuminnovations.pipe = {}
    leighzermods.leighzeruraniuminnovations.pipe.maxHealth = 125
    leighzermods.leighzeruraniuminnovations.pipe.baseArea = 1 * 2
    leighzermods.leighzeruraniuminnovations.pipe.height = 1 -- orig

    leighzermods.leighzeruraniuminnovations.pipeToUnderground = {}
    leighzermods.leighzeruraniuminnovations.pipeToUnderground.maxHealth = 175
    leighzermods.leighzeruraniuminnovations.pipeToUnderground.baseArea = 1 * 2
    leighzermods.leighzeruraniuminnovations.pipeToUnderground.height = 1 -- orig
    leighzermods.leighzeruraniuminnovations.pipeToUnderground.maxUndergroundDistance = 12 -- 10

    leighzermods.leighzeruraniuminnovations.powerArmor = {}

    leighzermods.leighzeruraniuminnovations.pump = {}
    leighzermods.leighzeruraniuminnovations.pump.maxHealth = 200
    leighzermods.leighzeruraniuminnovations.pump.pumpingSpeed = 200 * 2
    leighzermods.leighzeruraniuminnovations.pump.energyUsage = "75kW"
    leighzermods.leighzeruraniuminnovations.pump.drain = "2kW"    

    leighzermods.leighzeruraniuminnovations.pumpjack = {}
    leighzermods.leighzeruraniuminnovations.pumpjack.maxHealth = 225
    leighzermods.leighzeruraniuminnovations.pumpjack.miningSpeed = 2
    leighzermods.leighzeruraniuminnovations.pumpjack.emmisionsPerMinute = 5
    leighzermods.leighzeruraniuminnovations.pumpjack.energyUsage = "200kW"
    leighzermods.leighzeruraniuminnovations.pumpjack.moduleSlots = 4

    leighzermods.leighzeruraniuminnovations.radar = {}
    leighzermods.leighzeruraniuminnovations.radar.maxHealth = 500
    leighzermods.leighzeruraniuminnovations.radar.energyPerSector = "33.333MJ"
    leighzermods.leighzeruraniuminnovations.radar.maxDistanceOfSectorRevealed = 14 -- orig 
    leighzermods.leighzeruraniuminnovations.radar.maxDistanceOfNearbySectorRevealed = 6
    leighzermods.leighzeruraniuminnovations.radar.energyPerNearbyScan = "1MJ"
    leighzermods.leighzeruraniuminnovations.radar.energyUsage = "1MW" 
    leighzermods.leighzeruraniuminnovations.radar.rotationSpeed = 0.01 * 1.5

    leighzermods.leighzeruraniuminnovations.refinedConcrete = {}
    leighzermods.leighzeruraniuminnovations.refinedConcrete.mapColor = {r=57/255, g=170/255, b=0/255}
    leighzermods.leighzeruraniuminnovations.refinedConcrete.walkingSpeedModifier = 2

    leighzermods.leighzeruraniuminnovations.roboport = {}
    leighzermods.leighzeruraniuminnovations.roboport.maxHealth = 600
    leighzermods.leighzeruraniuminnovations.roboport.inputFlowLimit = "15MW" -- "5MW"
    leighzermods.leighzeruraniuminnovations.roboport.bufferCapacity = "300MJ" -- "100MJ"
    leighzermods.leighzeruraniuminnovations.roboport.rechargeMinimum = "120MJ" -- "40MJ"
    leighzermods.leighzeruraniuminnovations.roboport.energyUsage = "100kW" -- "50kW"
    leighzermods.leighzeruraniuminnovations.roboport.chargingEnergy = "3000kW" -- "1000kW"
    leighzermods.leighzeruraniuminnovations.roboport.logisticsRadius = 25 * 2
    leighzermods.leighzeruraniuminnovations.roboport.constructionRadius = 55 * 2
    leighzermods.leighzeruraniuminnovations.roboport.chargeApproachDistance = 5 * 2
    leighzermods.leighzeruraniuminnovations.roboport.robotSlotsCount = 10
    leighzermods.leighzeruraniuminnovations.roboport.materialSlotsCount = leighzermods.leighzeruraniuminnovations.roboport.robotSlotsCount

    leighzermods.leighzeruraniuminnovations.storageTank = {}
    leighzermods.leighzeruraniuminnovations.storageTank.maxHealth = 575
    leighzermods.leighzeruraniuminnovations.storageTank.baseArea = 250 * 2
    leighzermods.leighzeruraniuminnovations.storageTank.height = 1 -- 1

    leighzermods.leighzeruraniuminnovations.logistics = {}
    leighzermods.leighzeruraniuminnovations.logistics.beltSpeed = 0.03125 * 5 -- 5x regular belt speed 75/s 4500/min
    leighzermods.leighzeruraniuminnovations.logistics.undergroundBeltMaxLength = 11 -- following pattern 5, 7, 9, => 11 for reg, fast, express => uranium
end

-- load in global used by our uranium entities
require ("prototypes.uraniumpipecovers")

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
require("prototypes.uranium-pipe")
require("prototypes.uranium-pipe-to-ground")
require("prototypes.uranium-power-armor")
require("prototypes.uranium-pump")
require("prototypes.uranium-pumpjack")
require("prototypes.uranium-radar")
require("prototypes.uranium-roboport")
require("prototypes.uranium-splitter")
require("prototypes.uranium-storage-tank")
require("prototypes.uranium-transport-belt")
require("prototypes.uranium-underground-belt")
--load in technologies
require("prototypes.technology")
