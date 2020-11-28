require("prototypes.uranium-transport-belt-pictures")

local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
    {
        type = "item",
        name = "uranium-loader",
        icon = "__leighzeruraniuminnovations__/graphics/icons/loader.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"hidden"},
        subgroup = "belt",
        order = "d[loader]-d[uranium-loader]",
        place_result = "uranium-loader",
        stack_size = 50
    }, -- item
    {
        type = "recipe",
        name = "uranium-loader",
        hidden = true,
        category = "crafting-with-fluid",
        energy_required = 2,
        ingredients =
        {
            {"uranium-underground-belt", 1},
            {"steel-plate", 5},
            {"uranium-235", 2},
            {type="fluid", name="sulfuric-acid", amount=100},            
        },
        result = "uranium-loader"        
    }, -- recipe
    {
        type = "loader",
        name = "uranium-loader",
        icon = "__leighzeruraniuminnovations__/graphics/icons/loader.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving", "hidden"},
        minable = {mining_time = 0.1, result = "uranium-loader"},
        max_health = 170,
        filter_count = 5,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        working_sound = sounds.loader,
        corpse = "small-remnants",
        resistances =
        {
          {
            type = "fire",
            percent = 60
          }
        },
        collision_box = {{-0.4, -0.9}, {0.4, 0.9}},
        selection_box = {{-0.5, -1}, {0.5, 1}},
        animation_speed_coefficient = 32,
        belt_animation_set = uranium_basic_belt_animation_set,
        fast_replaceable_group = "loader",
        speed = leighzermods.leighzeruraniuminnovations.logistics.beltSpeed,
        structure_render_layer = "lower-object",
        structure =
        {
          direction_in =
          {
            sheet =
            {
              filename = "__base__/graphics/entity/loader/loader-structure.png",
              priority = "extra-high",
              width = 64,
              height = 64
            }
          },
          direction_out =
          {
            sheet =
            {
              filename = "__base__/graphics/entity/loader/loader-structure.png",
              priority = "extra-high",
              width = 64,
              height = 64,
              y = 64
            }
          }
        }
    }, -- entity    
})