local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
    {
        type = "item",
        name = "uranium-oil-refinery",
        icon = "__leighzeruraniuminnovations__/graphics/icons/oil-refinery.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "production-machine",
        order = "d[uranium-refinery]",
        place_result = "uranium-oil-refinery",
        stack_size = 10
    }, -- item
    {
        type = "recipe",
        name = "uranium-oil-refinery",
        category = "crafting-with-fluid",
        energy_required = 8,
        ingredients =
        {
          {"steel-plate", 50},          
          {"refined-concrete", 50},
          {"speed-module-2", 1},
          {"effectivity-module-2", 1},
          {"uranium-pump", 5},
          {"uranium-235", 5},
          {type="fluid", name="sulfuric-acid", amount=200}
        },
        result = "uranium-oil-refinery",
        enabled = false
      }, -- recipe
      {
        type = "assembling-machine",
        name = "uranium-oil-refinery",
        icon = "__leighzeruraniuminnovations__/graphics/icons/oil-refinery.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral","player-creation"},
        minable = {mining_time = 0.2, result = "uranium-oil-refinery"},
        max_health = leighzermods.leighzeruraniuminnovations.oilRefinery.maxHealth,
        corpse = "uranium-oil-refinery-remnants",
        dying_explosion = "medium-explosion", -- "oil-refinery-explosion",
        collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        damaged_trigger_effect = hit_effects.entity(),
        drawing_box = {{-2.5, -2.8}, {2.5, 2.5}},
        module_specification =
        {
          module_slots = leighzermods.leighzeruraniuminnovations.chemicalPlant.moduleSlots
        },
        scale_entity_info_icon = true,
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
        crafting_categories = {"oil-processing"},
        crafting_speed = leighzermods.leighzeruraniuminnovations.oilRefinery.craftingSpeed,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = leighzermods.leighzeruraniuminnovations.chemicalPlant.emissionsPerMinute
        },
        energy_usage = leighzermods.leighzeruraniuminnovations.oilRefinery.energyUsage, -- "420kW",
    
        animation = make_4way_animation_from_spritesheet(
        {
          layers =
          {
            {
              filename = "__leighzeruraniuminnovations__/graphics/entity/oil-refinery/oil-refinery.png",
              width = 337,
              height = 255,
              frame_count = 1,
              shift = {2.515625, 0.484375},
              hr_version =
              {
                filename = "__leighzeruraniuminnovations__/graphics/entity/oil-refinery/hr-oil-refinery.png",
                width = 386,
                height = 430,
                frame_count = 1,
                shift = util.by_pixel(0, -7.5),
                scale = 0.5
              }
            },
            {
              filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
              width = 337,
              height = 213,
              frame_count = 1,
              shift = util.by_pixel(82.5, 26.5),
              draw_as_shadow = true,
              hr_version =
              {
                filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png",
                width = 674,
                height = 426,
                frame_count = 1,
                shift = util.by_pixel(82.5, 26.5),
                draw_as_shadow = true,
                force_hr_shadow = true,
                scale = 0.5
              }
            }
          }
        }),
    
        working_visualisations =
        {
          {
            draw_as_light = true,
            fadeout = true,
            constant_speed = true,
            north_position = util.by_pixel(34, -65),
            east_position = util.by_pixel(-52, -61),
            south_position = util.by_pixel(-59, -82),
            west_position = util.by_pixel(57, -58),
            animation =
            {
              filename = "__leighzeruraniuminnovations__/graphics/entity/oil-refinery/oil-refinery-fire.png",
              line_length = 10,
              width = 20,
              height = 40,
              frame_count = 60,
              animation_speed = 0.75,
              shift = util.by_pixel(0, -14),
              hr_version =
              {
                filename = "__leighzeruraniuminnovations__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
                line_length = 10,
                width = 40,
                height = 81,
                frame_count = 60,
                animation_speed = 0.75,
                scale = 0.5,
                shift = util.by_pixel(0, -14.25)
              }
            },
          },
          {
            fadeout = true,
            draw_as_light = true,
            north_animation =
            {
              filename = "__leighzeruraniuminnovations__/graphics/entity/oil-refinery/oil-refinery-light.png",
              width = 163,
              height = 104,
              blend_mode = "additive",
              shift = util.by_pixel(-2, -50),
              hr_version =
              {
                filename = "__leighzeruraniuminnovations__/graphics/entity/oil-refinery/hr-oil-refinery-light.png",
                width = 321,
                height = 205,
                blend_mode = "additive",
                shift = util.by_pixel(-1, -50),
                scale = 0.5,
              }
            },
            east_animation =
            {
              filename = "__leighzeruraniuminnovations__/graphics/entity/oil-refinery/oil-refinery-light.png",
              width = 163,
              x = 163;
              height = 104,
              blend_mode = "additive",
              shift = util.by_pixel(-2, -50),
              hr_version =
              {
                filename = "__leighzeruraniuminnovations__/graphics/entity/oil-refinery/hr-oil-refinery-light.png",
                width = 321,
                x = 321;
                height = 205,
                blend_mode = "additive",
                shift = util.by_pixel(-1, -50),
                scale = 0.5,
              }
            },
            south_animation =
            {
              filename = "__leighzeruraniuminnovations__/graphics/entity/oil-refinery/oil-refinery-light.png",
              width = 163,
              x = 163 * 2;
              height = 104,
              blend_mode = "additive",
              shift = util.by_pixel(-2, -50),
              hr_version =
              {
                filename = "__leighzeruraniuminnovations__/graphics/entity/oil-refinery/hr-oil-refinery-light.png",
                width = 321,
                x = 321 * 2;
                height = 205,
                blend_mode = "additive",
                shift = util.by_pixel(-1, -50),
                scale = 0.5,
              }
            },
            west_animation =
            {
              filename = "__leighzeruraniuminnovations__/graphics/entity/oil-refinery/oil-refinery-light.png",
              width = 163,
              x = 163 * 3;
              height = 104,
              blend_mode = "additive",
              shift = util.by_pixel(-2, -50),
              hr_version =
              {
                filename = "__leighzeruraniuminnovations__/graphics/entity/oil-refinery/hr-oil-refinery-light.png",
                width = 321,
                x = 321 * 3;
                height = 205,
                blend_mode = "additive",
                shift = util.by_pixel(-1, -50),
                scale = 0.5,
              }
            },
          }
        },
        vehicle_impact_sound = sounds.generic_impact,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        working_sound =
        {
          sound =
          {
            filename = "__base__/sound/oil-refinery.ogg"
          },
          --idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 },
          fade_in_ticks = 4,
          fade_out_ticks = 20
        },
        fluid_boxes =
        {
          {
            production_type = "input",
            pipe_covers = uraniumpipecoverspictures(),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{ type="input", position = {-1, 3} }}
          },
          {
            production_type = "input",
            pipe_covers = uraniumpipecoverspictures(),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{ type="input", position = {1, 3} }}
          },
          {
            production_type = "output",
            pipe_covers = uraniumpipecoverspictures(),
            base_level = 1,
            pipe_connections = {{ position = {-2, -3} }}
          },
          {
            production_type = "output",
            pipe_covers = uraniumpipecoverspictures(),
            base_level = 1,
            pipe_connections = {{ position = {0, -3} }}
          },
          {
            production_type = "output",
            pipe_covers = uraniumpipecoverspictures(),
            base_level = 1,
            pipe_connections = {{ position = {2, -3} }}
          }
        },
        water_reflection =
        {
          pictures =
          {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-reflection.png",
            priority = "extra-high",
            width = 40,
            height = 48,
            shift = util.by_pixel(5, 95),
            variation_count = 4,
            scale = 5
          },
          rotate = false,
          orientation_to_variation = true
        },
        fast_replaceable_group = "oil-refinery"
    }, -- entity
    {
        type = "corpse",
        name = "uranium-oil-refinery-remnants",
        icon = "__leighzeruraniuminnovations__/graphics/icons/oil-refinery.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
        subgroup = "production-machine-remnants",
        order = "a-d-b",
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        tile_width = 5,
        tile_height = 5,
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 15, -- 15 minutes
        final_render_layer = "remnants",
        remove_on_tile_placement = false,
        animation = make_rotated_animation_variations_from_sheet(1,
        {
          filename = "__leighzeruraniuminnovations__/graphics/entity/oil-refinery/remnants/refinery-remnants.png",
          line_length = 1,
          width = 234,
          height = 200,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(0, 0), --moved from -8.5 to -4.5
          hr_version =
          {
            filename = "__leighzeruraniuminnovations__/graphics/entity/oil-refinery/remnants/hr-refinery-remnants.png",
            line_length = 1,
            width = 467,
            height = 415,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-0.25, -0.25), --moved from -8.5 to -4.5
            scale = 0.5
          }
        })
      }, -- remnant entity
})