require("prototypes.uraniumpipecovers")

local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
    {
        type = "item",
        name = "uranium-pipe-to-ground",
        icon = "__leighzeruraniuminnovations__/graphics/icons/pipe-to-ground.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "energy-pipe-distribution",
        order = "a[pipe]-b[uranium-pipe-to-ground]",
        place_result = "uranium-pipe-to-ground",
        stack_size = 50
    }, -- item
    {
        type = "recipe",
        name = "uranium-pipe-to-ground",
        category = "crafting-with-fluid",
        enabled = false,
        ingredients =
        {
            {"uranium-pipe", 10},
            {"steel-plate", 5},
            {"uranium-235", 1},
            {type="fluid", name="sulfuric-acid", amount=50}
        },
        result_count = 2,
        result = "uranium-pipe-to-ground"
    }, -- recipe
    {
        type = "pipe-to-ground",
        name = "uranium-pipe-to-ground",
        icon = "__leighzeruraniuminnovations__/graphics/icons/pipe-to-ground.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "uranium-pipe-to-ground"},
        max_health = leighzermods.leighzeruraniuminnovations.pipeToUnderground.maxHealth, -- 150,
        corpse = "uranium-pipe-to-ground-remnants",
        dying_explosion = "medium-explosion", -- "pipe-to-ground-explosion",
        resistances =
        {
          {
            type = "fire",
            percent = 80
          },
          {
            type = "impact",
            percent = 40
          }
    
        },
        fast_replaceable_group = "pipe",
        collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        damaged_trigger_effect = hit_effects.entity(),
        fluid_box =
        {
          base_area = leighzermods.leighzeruraniuminnovations.pipeToUnderground.baseArea, -- 1,
          height = leighzermods.leighzeruraniuminnovations.pipeToUnderground.height, -- 1,
          pipe_covers = uraniumpipecoverspictures(),
          pipe_connections =
          {
            { position = {0, -1} },
            {
              position = {0, 1},
              max_underground_distance = leighzermods.leighzeruraniuminnovations.pipeToUnderground.maxUndergroundDistance, -- 10
            }
          }
        },
        vehicle_impact_sound = sounds.generic_impact,
        working_sound =
        {
          sound = sounds.pipe,
          match_volume_to_activity = true,
          audible_distance_modifier = 0.3,
          fade_in_ticks = 4,
          fade_out_ticks = 60
        },
        pictures =
        {
          up =
          {
            filename = "__leighzeruraniuminnovations__/graphics/entity/pipe-to-ground/pipe-to-ground-up.png",
            priority = "high",
            width = 64,
            height = 64, --, shift = {0.10, -0.04}
            hr_version =
            {
              filename = "__leighzeruraniuminnovations__/graphics/entity/pipe-to-ground/hr-pipe-to-ground-up.png",
              priority = "extra-high",
              width = 128,
              height = 128,
              scale = 0.5
            }
          },
          down =
          {
            filename = "__leighzeruraniuminnovations__/graphics/entity/pipe-to-ground/pipe-to-ground-down.png",
            priority = "high",
            width = 64,
            height = 64, --, shift = {0.05, 0}
            hr_version =
            {
              filename = "__leighzeruraniuminnovations__/graphics/entity/pipe-to-ground/hr-pipe-to-ground-down.png",
              priority = "extra-high",
              width = 128,
              height = 128,
              scale = 0.5
            }
          },
          left =
          {
            filename = "__leighzeruraniuminnovations__/graphics/entity/pipe-to-ground/pipe-to-ground-left.png",
            priority = "high",
            width = 64,
            height = 64, --, shift = {-0.12, 0.1}
            hr_version =
            {
              filename = "__leighzeruraniuminnovations__/graphics/entity/pipe-to-ground/hr-pipe-to-ground-left.png",
              priority = "extra-high",
              width = 128,
              height = 128,
              scale = 0.5
            }
          },
          right =
          {
            filename = "__leighzeruraniuminnovations__/graphics/entity/pipe-to-ground/pipe-to-ground-right.png",
            priority = "high",
            width = 64,
            height = 64, --, shift = {0.1, 0.1}
            hr_version =
            {
              filename = "__leighzeruraniuminnovations__/graphics/entity/pipe-to-ground/hr-pipe-to-ground-right.png",
              priority = "extra-high",
              width = 128,
              height = 128,
              scale = 0.5
            }
          }
        }
    }, -- entity
    {
        type = "corpse",
        name = "uranium-pipe-to-ground-remnants",
        icon = "__leighzeruraniuminnovations__/graphics/icons/pipe-to-ground.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "not-on-map"},
        subgroup = "energy-pipe-distribution-remnants",
        order = "a-d-b",
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 15, -- 15 minutes
        final_render_layer = "remnants",
        remove_on_tile_placement = false,
        animation =
        {
          filename = "__leighzeruraniuminnovations__/graphics/entity/pipe-to-ground/remnants/pipe-to-ground-remnants.png",
          width = 46,
          height = 40,
          line_length = 1,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(0, -3),
          hr_version =
          {
            filename = "__leighzeruraniuminnovations__/graphics/entity/pipe-to-ground/remnants/hr-pipe-to-ground-remnants.png",
            width = 90,
            height = 80,
            line_length = 1,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(0.5, -3),
            scale = 0.5
          }
        }
    }, -- remnant entity
})