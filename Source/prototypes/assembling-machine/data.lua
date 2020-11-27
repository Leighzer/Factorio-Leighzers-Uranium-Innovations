if not leighzermods then --generic mod variable to store information that may be needed later
    leighzermods = {}
end

if not leighzermods.leighzeruraniumautomation then
    leighzermods.leighzeruraniumautomation = {}

    leighzermods.leighzeruraniumautomation.craftingSpeed = 2
    leighzermods.leighzeruraniumautomation.moduleSlots = 6
end

--load in items, recipes, entities, and remnant entities
require("prototypes.technology")
require("prototypes.uranium-assembling-machine")

-- update assembling machine 3 to be upgradeable to our new assembler
if data.raw["assembling-machine"]["assembling-machine-3"] then
    data.raw["assembling-machine"]["assembling-machine-3"].next_upgrade = "uranium-assembling-machine"
end