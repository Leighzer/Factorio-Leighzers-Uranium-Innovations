-- find power armor mk2 animation, add our armor to list of armors that will use the mk2 character animation
-- adapted and modified code from "Power Armor MK3" by jimmy_1283
for _, animation in ipairs(data.raw["character"]["character"]["animations"]) do
  if animation.armors then
    for _, armor in ipairs(animation.armors) do
      if armor == "power-armor-mk2" then
        table.insert(animation.armors, "uranium-power-armor")    
        break
      end
    end
  end
end

data:extend({
    {
        type = "armor",
        name = "uranium-power-armor",
        icon = "__leighzeruraniuminnovations__/graphics/icons/power-armor-mk2.png",
        icon_size = 64, icon_mipmaps = 4,
        resistances =
        {
          {
            type = "physical",
            decrease = 10,
            percent = 40
          },
          {
            type = "acid",
            decrease = 0,
            percent = 70
          },
          {
            type = "explosion",
            decrease = 60,
            percent = 50
          },
          {
            type = "fire",
            decrease = 0,
            percent = 70
          }
        },
        subgroup = "armor",
        order = "e[uranium-power-armor]",
        stack_size = 1,
        infinite = true,
        equipment_grid = "extra-large-equipment-grid",
        inventory_size_bonus = 50,
        open_sound = {filename =  "__base__/sound/armor-open.ogg", volume = 1},
        close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
    }, -- item
    {
        type = "recipe",
        name = "uranium-power-armor",
        category = "crafting-with-fluid",
        enabled = false,
        energy_required = 30,
        ingredients = {
            {"speed-module-3", 25},
            {"productivity-module-3", 25},
            {"effectivity-module-3", 25},
            {"low-density-structure", 100},
            {"satellite", 1},
            {"uranium-235", 5},
            {type="fluid", name="sulfuric-acid", amount=100}
        },
        result = "uranium-power-armor",
        requester_paste_multiplier = 1
    }, -- recipe    
})