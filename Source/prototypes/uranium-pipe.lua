require("prototypes.uraniumpipepictures")

local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({ 
    {
        type = "item",
        name = "uranium-pipe",
        icon = "__leighzeruraniuminnovations__/graphics/icons/pipe.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "energy-pipe-distribution",
        order = "a[pipe]-a[uranium-pipe]",
        place_result = "uranium-pipe",
        stack_size = 100
    }, -- item
    {
        type = "recipe",
        name = "uranium-pipe",
        category = "crafting-with-fluid",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {"pipe", 10},
            {"steel-plate", 10},
            {type="fluid", name="sulfuric-acid", amount=100},
            {"uranium-235", 1}
        },
        result = "uranium-pipe",
        result_count = 10
    }, -- recipe
    {
        type = "pipe",
        name = "uranium-pipe",
        icon = "__leighzeruraniuminnovations__/graphics/icons/pipe.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
        minable = {mining_time = 0.1, result = "uranium-pipe"},
        max_health = leighzermods.leighzeruraniuminnovations.pipe.maxHealth, -- 100,
        corpse = "uranium-pipe-remnants",
        dying_explosion = "medium-explosion", -- "pipe-explosion",
        resistances =
        {
          {
            type = "fire",
            percent = 80
          },
          {
            type = "impact",
            percent = 30
          },
        },
        fast_replaceable_group = "pipe",
        collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        damaged_trigger_effect = hit_effects.entity(),
        fluid_box =
        {
          base_area = leighzermods.leighzeruraniuminnovations.pipe.baseArea, -- 1,
          height = leighzermods.leighzeruraniuminnovations.pipe.height, -- 1,
          pipe_connections =
          {
            { position = {0, -1} },
            { position = {1, 0} },
            { position = {0, 1} },
            { position = {-1, 0} }
          }
        },
        vehicle_impact_sound = sounds.generic_impact,
        pictures = uraniumpipepictures(),
        working_sound =
        {
          sound = sounds.pipe,
          match_volume_to_activity = true,
          audible_distance_modifier = 0.3,
          fade_in_ticks = 4,
          fade_out_ticks = 60
        },
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
    
        horizontal_window_bounding_box = {{-0.25, -0.28125}, {0.25, 0.15625}},
        vertical_window_bounding_box = {{-0.28125, -0.5}, {0.03125, 0.125}}
    }, -- entity
    {
        type = "corpse",
        name = "uranium-pipe-remnants",
        icon = "__leighzeruraniuminnovations__/graphics/icons/pipe.png",
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
        animation = make_rotated_animation_variations_from_sheet(2,
        {
          filename = "__leighzeruraniuminnovations__/graphics/entity/pipe/remnants/pipe-remnants.png",
          width = 62,
          height = 62,
          line_length = 1,
          frame_count = 1,
          direction_count = 2,
          shift = util.by_pixel(2, 3),
          hr_version =
          {
            filename = "__leighzeruraniuminnovations__/graphics/entity/pipe/remnants/hr-pipe-remnants.png",
            width = 122,
            height = 120,
            line_length = 1,
            frame_count = 1,
            direction_count = 2,
            shift = util.by_pixel(1.5, 2.5), -- -0,5
            scale = 0.5
          }
        })
    }, -- remnant entity
})