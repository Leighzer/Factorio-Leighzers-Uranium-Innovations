local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local sounds = require ("__base__.prototypes.entity.sounds")

data:extend({
    {
        type = "item",
        name = "uranium-chemical-plant",
        icon = "__leighzeruraniuminnovations__/graphics/icons/chemical-plant.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "production-machine",
        order = "f[uranium-chemical-plant]",
        place_result = "uranium-chemical-plant",
        stack_size = 10
    }, -- item
    {
        type = "recipe",
        name = "uranium-chemical-plant",
        category = "crafting-with-fluid",
        energy_required = 5,
        enabled = false,
        ingredients =
        {
          {"steel-plate", 10},          
          {"processing-unit", 10},
          --{"uranium-pump", 2},
          {"uranium-235", 2},
          {type="fluid", name="sulfuric-acid", amount = 100}
        },
        result= "uranium-chemical-plant"
    }, -- recipe
    {
        type = "assembling-machine",
        name = "uranium-chemical-plant",
        icon = "__leighzeruraniuminnovations__/graphics/icons/chemical-plant.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral","placeable-player", "player-creation"},
        minable = {mining_time = 0.1, result = "uranium-chemical-plant"},
        max_health = 310,
        corpse = "uranium-chemical-plant-remnants",
        dying_explosion = "medium-explosion", -- "chemical-plant-explosion",
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        damaged_trigger_effect = hit_effects.entity(),
        drawing_box = {{-1.5, -1.9}, {1.5, 1.5}},
        module_specification =
        {
          module_slots = leighzermods.leighzeruraniuminnovations.chemicalPlant.moduleSlots
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    
        animation = make_4way_animation_from_spritesheet({ layers =
        {
          {
            filename = "__leighzeruraniuminnovations__/graphics/entity/chemical-plant/chemical-plant.png",
            width = 108,
            height = 148,
            frame_count = 24,
            line_length = 12,
            shift = util.by_pixel(1, -9),
            hr_version =
            {
              filename = "__leighzeruraniuminnovations__/graphics/entity/chemical-plant/hr-chemical-plant.png",
              width = 220,
              height = 292,
              frame_count = 24,
              line_length = 12,
              shift = util.by_pixel(0.5, -9),
              scale = 0.5
              }
          },
          {
            filename = "__base__/graphics/entity/chemical-plant/chemical-plant-shadow.png",
            width = 154,
            height = 112,
            repeat_count = 24,
            frame_count = 1,
            shift = util.by_pixel(28, 6),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-shadow.png",
              width = 312,
              height = 222,
              repeat_count = 24,
              frame_count = 1,
              shift = util.by_pixel(27, 6),
              draw_as_shadow = true,
              scale = 0.5
              }
          }
        }}),
        working_visualisations =
        {
          {
            apply_recipe_tint = "primary",
            north_animation =
            {
              filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-north.png",
              frame_count = 24,
              line_length = 6,
              width = 32,
              height = 24,
              shift = util.by_pixel(24, 14),
              hr_version =
              {
                filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-liquid-north.png",
                frame_count = 24,
                line_length = 6,
                width = 66,
                height = 44,
                shift = util.by_pixel(23, 15),
                scale = 0.5
              }
            },
            east_animation =
            {
              filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-east.png",
              frame_count = 24,
              line_length = 6,
              width = 36,
              height = 18,
              shift = util.by_pixel(0, 22),
              hr_version =
              {
                filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-liquid-east.png",
                frame_count = 24,
                line_length = 6,
                width = 70,
                height = 36,
                shift = util.by_pixel(0, 22),
                scale = 0.5
              }
            },
            south_animation =
            {
              filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-south.png",
              frame_count = 24,
              line_length = 6,
              width = 34,
              height = 24,
              shift = util.by_pixel(0, 16),
              hr_version =
              {
                filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-liquid-south.png",
                frame_count = 24,
                line_length = 6,
                width = 66,
                height = 42,
                shift = util.by_pixel(0, 17),
                scale = 0.5
              }
            },
            west_animation =
            {
              filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-west.png",
              frame_count = 24,
              line_length = 6,
              width = 38,
              height = 20,
              shift = util.by_pixel(-10, 12),
              hr_version =
              {
                filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-liquid-west.png",
                frame_count = 24,
                line_length = 6,
                width = 74,
                height = 36,
                shift = util.by_pixel(-10, 13),
                scale = 0.5
              }
            }
          },
          {
            apply_recipe_tint = "secondary",
            north_animation =
            {
              filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-north.png",
              frame_count = 24,
              line_length = 6,
              width = 32,
              height = 22,
              shift = util.by_pixel(24, 14),
              hr_version =
              {
                filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-foam-north.png",
                frame_count = 24,
                line_length = 6,
                width = 62,
                height = 42,
                shift = util.by_pixel(24, 15),
                scale = 0.5
              }
            },
            east_animation =
            {
              filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-east.png",
              frame_count = 24,
              line_length = 6,
              width = 34,
              height = 18,
              shift = util.by_pixel(0, 22),
              hr_version =
              {
                filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-foam-east.png",
                frame_count = 24,
                line_length = 6,
                width = 68,
                height = 36,
                shift = util.by_pixel(0, 22),
                scale = 0.5
              }
            },
            south_animation =
            {
              filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-south.png",
              frame_count = 24,
              line_length = 6,
              width = 32,
              height = 18,
              shift = util.by_pixel(0, 18),
              hr_version =
              {
                filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-foam-south.png",
                frame_count = 24,
                line_length = 6,
                width = 60,
                height = 40,
                shift = util.by_pixel(1, 17),
                scale = 0.5
              }
            },
            west_animation =
            {
              filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-west.png",
              frame_count = 24,
              line_length = 6,
              width = 36,
              height = 16,
              shift = util.by_pixel(-10, 14),
              hr_version =
              {
                filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-foam-west.png",
                frame_count = 24,
                line_length = 6,
                width = 68,
                height = 28,
                shift = util.by_pixel(-9, 15),
                scale = 0.5
              }
            }
          },
          {
            apply_recipe_tint = "tertiary",
            fadeout = true,
            constant_speed = true,
            north_position = util.by_pixel_hr(-30, -161),
            east_position = util.by_pixel_hr(29, -150),
            south_position = util.by_pixel_hr(12, -134),
            west_position = util.by_pixel_hr(-32, -130),
            render_layer = "wires",
            animation =
            {
              filename = "__base__/graphics/entity/chemical-plant/chemical-plant-smoke-outer.png",
              frame_count = 47,
              line_length = 16,
              width = 46,
              height = 94,
              animation_speed = 0.5,
              shift = util.by_pixel(-2, -40),
              hr_version =
              {
                filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-smoke-outer.png",
                frame_count = 47,
                line_length = 16,
                width = 90,
                height = 188,
                animation_speed = 0.5,
                shift = util.by_pixel(-2, -40),
                scale = 0.5
              }
            }
          },
          {
            apply_recipe_tint = "quaternary",
            fadeout = true,
            constant_speed = true,
            north_position = util.by_pixel_hr(-30, -161),
            east_position = util.by_pixel_hr(29, -150),
            south_position = util.by_pixel_hr(12, -134),
            west_position = util.by_pixel_hr(-32, -130),
            render_layer = "wires",
            animation =
            {
              filename = "__base__/graphics/entity/chemical-plant/chemical-plant-smoke-inner.png",
              frame_count = 47,
              line_length = 16,
              width = 20,
              height = 42,
              animation_speed = 0.5,
              shift = util.by_pixel(0, -14),
              hr_version =
              {
                filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-smoke-inner.png",
                frame_count = 47,
                line_length = 16,
                width = 40,
                height = 84,
                animation_speed = 0.5,
                shift = util.by_pixel(0, -14),
                scale = 0.5
              }
            }
          }
        },
        vehicle_impact_sound = sounds.generic_impact,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        working_sound =
        {
          sound =
          {
            {
              filename = "__base__/sound/chemical-plant-1.ogg",
              volume = 0.5
            },
            {
              filename = "__base__/sound/chemical-plant-2.ogg",
              volume = 0.5
            },
            {
              filename = "__base__/sound/chemical-plant-3.ogg",
              volume = 0.5
            }
          },
          --max_sounds_per_type = 3,
          --idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 },
          apparent_volume = 1.5,
          fade_in_ticks = 4,
          fade_out_ticks = 20
        },
        crafting_speed = leighzermods.leighzeruraniuminnovations.chemicalPlant.craftingSpeed,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = 2
        },
        energy_usage = "500kW", -- "210kW",
        crafting_categories = {"chemistry"},
        fluid_boxes =
        {
          {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{ type="input", position = {-1, -2} }}
          },
          {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{ type="input", position = {1, -2} }}
          },
          {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            base_level = 1,
            pipe_connections = {{ position = {-1, 2} }}
          },
          {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            base_level = 1,
            pipe_connections = {{ position = {1, 2} }}
          }
        },
        water_reflection =
        {
          pictures =
          {
            filename = "__base__/graphics/entity/chemical-plant/chemical-plant-reflection.png",
            priority = "extra-high",
            width = 28,
            height = 36,
            shift = util.by_pixel(5, 60),
            variation_count = 4,
            scale = 5
          },
          rotate = false,
          orientation_to_variation = true
        }
    }, -- entity
    {
        type = "corpse",
        name = "uranium-chemical-plant-remnants",
        icon = "__leighzeruraniuminnovations__/graphics/icons/chemical-plant.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
        subgroup = "production-machine-remnants",
        order = "a-e-b",
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        tile_width = 3,
        tile_height = 3,
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 15, -- 15 minutes
        final_render_layer = "remnants",
        remove_on_tile_placement = false,
        animation =
        {
          filename = "__leighzeruraniuminnovations__/graphics/entity/chemical-plant/remnants/chemical-plant-remnants.png",
          line_length = 1,
          width = 224,
          height = 172,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(16, -5),
          hr_version =
          {
            filename = "__leighzeruraniuminnovations__/graphics/entity/chemical-plant/remnants/hr-chemical-plant-remnants.png",
            line_length = 1,
            width = 446,
            height = 342,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(16, -5.5),
            scale = 0.5
          }
        }
    }, -- remnant entity
})