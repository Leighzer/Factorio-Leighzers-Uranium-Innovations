-- create science pack item
local sciencePackTool = {
    type = "tool",
    name = leighzermods.leighzeruraniuminnovations.nuclearSciencePack.name,    
    icon = "__leighzeruraniuminnovations__/graphics/icons/nuclear-science-pack.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = leighzermods.leighzeruraniuminnovations.nuclearSciencePack.subgroup,
    order = leighzermods.leighzeruraniuminnovations.nuclearSciencePack.order,
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",

    leighzerscienceores = {
        OreTintName = "lime",
        StartingAreaEnabled = false
    },
    
    leighzerburiedscience = {
        MapTintName = "lime",
        StartingAreaEnabled = false
    }    
}
data:extend({
    sciencePackTool
})
if data.raw["lab"]["lab"] then
    local utilScienceFound = false
    for k,v in ipairs(data.raw["lab"]["lab"].inputs) do
        if v == "utility-science-pack" then
            utilScienceFound = true
            table.insert(data.raw["lab"]["lab"].inputs, k + 1, "nuclear-science-pack")
            break
        end
    end
    if not utilScienceFound then
        table.insert(data.raw["lab"]["lab"].inputs,"nuclear-science-pack") -- insert at end
    end
end

-- create science pack recipe
local sciencePackIngredients = {
    {"heat-exchanger",1},
    {"steam-turbine",2},
    {"heat-pipe",5},
    {"uranium-fuel-cell",1},
}
leighzermods.utils.createRecipe(leighzermods.leighzeruraniuminnovations.nuclearSciencePack.name,leighzermods.leighzeruraniuminnovations.nuclearSciencePack.energyRequired, false, "crafting",sciencePackIngredients,leighzermods.leighzeruraniuminnovations.nuclearSciencePack.name,leighzermods.leighzeruraniuminnovations.nuclearSciencePack.resultCount,leighzermods.leighzeruraniuminnovations.nuclearSciencePack.subgroup,leighzermods.leighzeruraniuminnovations.nuclearSciencePack.order,true)

-- create science pack technology
-- add kovarex processing to technology prereq
local sciencePackTechIcons = {{icon="__leighzeruraniuminnovations__/graphics/technology/nuclear-science-pack.png",icon_size=128}}
local sciencePackTechEffects = {{type="unlock-recipe",recipe=leighzermods.leighzeruraniuminnovations.nuclearSciencePack.name}}
local sciencePackTechUnit = {
    count = 1500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
}
local sciencePackTechPrereqs = {"kovarex-enrichment-process", "nuclear-power"}
leighzermods.utils.createTechnology(leighzermods.leighzeruraniuminnovations.nuclearSciencePack.name,sciencePackTechIcons,true,sciencePackTechEffects,sciencePackTechUnit,sciencePackTechPrereqs,"c-b",nil, nil)