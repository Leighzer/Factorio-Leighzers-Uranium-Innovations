local uraniumAssemblerTech = {
    type = "technology",
    name = "uranium-automation",
    icon_size = 128,
    icon = "__leighzeruraniumautomation__/graphics/technology/uranium-automation.png",
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
    order = "e-p-b-e"
  }

if mods["leighzernuclearsciencepack"] then
    uraniumAssemblerTech.prerequisites = {"nuclear-science-pack"}
    table.insert(uraniumAssemblerTech.unit.ingredients, {"nuclear-science-pack",1})
end

if data.raw.technology["automation-3"] then
  table.insert(uraniumAssemblerTech.prerequisites, "automation-3")
end

if data.raw.technology["speed-module-3"] then
  table.insert(uraniumAssemblerTech.prerequisites, "speed-module-3")
end

if data.raw.technology["effectivity-module-3"] then
  table.insert(uraniumAssemblerTech.prerequisites, "effectivity-module-3")
end

data:extend({
    uraniumAssemblerTech
})