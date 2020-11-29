local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
    {
        type = "item",
        name = "uranium-electric-furnace",
        icon = "__leighzeruraniuminnovations__/graphics/icons/electric-furnace.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "smelting-machine",
        order = "c[uranium-electric-furnace]",
        place_result = "uranium-electric-furnace",
        stack_size = 50
    }, -- item
    {
        type = "recipe",
        name = "uranium-electric-furnace",
        category = "crafting-with-fluid",
        ingredients =
        {
            {"steel-plate", 25},
            {"speed-module-2", 1},
            {"effectivity-module-2", 1},
            {"refined-concrete", 20},
            {"uranium-235", 2},
            {type="fluid", name="sulfuric-acid", amount=100}
        },
        result = "uranium-electric-furnace",
        energy_required = 5,
        enabled = false
    }, -- recipe
    {
        type = "furnace",
        name = "uranium-electric-furnace",
        icon = "__leighzeruraniuminnovations__/graphics/icons/electric-furnace.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "uranium-electric-furnace"},
        max_health = leighzermods.leighzeruraniuminnovations.electricFurnace.maxHealth, -- 350
        corpse = "uranium-electric-furnace-remnants",
        dying_explosion = "medium-explosion", -- "electric-furnace-explosion",
        resistances =
        {
          {
            type = "fire",
            percent = 80
          }
        },
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        damaged_trigger_effect = hit_effects.entity(),
        module_specification =
        {
          module_slots = leighzermods.leighzeruraniuminnovations.electricFurnace.moduleSlots, -- 2
          module_info_icon_shift = {0, 0.8}
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
        crafting_categories = {"smelting"},
        result_inventory_size = 1,
        crafting_speed = leighzermods.leighzeruraniuminnovations.electricFurnace.craftingSpeed, -- 2
        energy_usage = leighzermods.leighzeruraniuminnovations.electricFurnace.energyUsage, -- "180kW",
        source_inventory_size = 1,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = leighzermods.leighzeruraniuminnovations.electricFurnace.emmisionsPerMinute -- 1
        },
        vehicle_impact_sound = sounds.generic_impact,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        working_sound =
        {
          sound =
          {
            filename = "__base__/sound/electric-furnace.ogg",
            volume = 0.6
          },
          audible_distance_modifier = 0.6,
          fade_in_ticks = 4,
          fade_out_ticks = 20
        },
        animation =
        {
          layers =
          {
            {
              filename = "__leighzeruraniuminnovations__/graphics/entity/electric-furnace/electric-furnace-base.png",
              priority = "high",
              width = 129,
              height = 100,
              frame_count = 1,
              shift = {0.421875, 0},
              hr_version =
              {
                filename = "__leighzeruraniuminnovations__/graphics/entity/electric-furnace/hr-electric-furnace.png",
                priority = "high",
                width = 239,
                height = 219,
                frame_count = 1,
                shift = util.by_pixel(0.75, 5.75),
                scale = 0.5
              }
            },
            {
              filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
              priority = "high",
              width = 129,
              height = 100,
              frame_count = 1,
              shift = {0.421875, 0},
              draw_as_shadow = true,
              hr_version =
              {
                filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-shadow.png",
                priority = "high",
                width = 227,
                height = 171,
                frame_count = 1,
                draw_as_shadow = true,
                shift = util.by_pixel(11.25, 7.75),
                scale = 0.5
              }
            }
          }
        },
        working_visualisations =
        {
          {
            draw_as_light = true,
            fadeout = true,
            animation =
            {
              layers =
              {
                {
                  filename = "__leighzeruraniuminnovations__/graphics/entity/electric-furnace/electric-furnace-heater.png",
                  priority = "high",
                  width = 25,
                  height = 15,
                  frame_count = 12,
                  animation_speed = 0.5,
                  shift = {0.015625, 0.890625},
                  hr_version =
                  {
                    filename = "__leighzeruraniuminnovations__/graphics/entity/electric-furnace/hr-electric-furnace-heater.png",
                    priority = "high",
                    width = 60,
                    height = 56,
                    frame_count = 12,
                    animation_speed = 0.5,
                    shift = util.by_pixel(1.75, 32.75),
                    scale = 0.5
                  }
                },
                {
                  filename = "__leighzeruraniuminnovations__/graphics/entity/electric-furnace/electric-furnace-light.png",
                  blend_mode = "additive",
                  width = 104,
                  height = 102,
                  repeat_count = 12,
                  shift = util.by_pixel(0, 0),
                  hr_version =
                  {
                    filename = "__leighzeruraniuminnovations__/graphics/entity/electric-furnace/hr-electric-furnace-light.png",
                    blend_mode = "additive",
                    width = 202,
                    height = 202,
                    repeat_count = 12,
                    shift = util.by_pixel(1, 0),
                    scale = 0.5,
                  }
                },
              }
            },
          },
          {
            draw_as_light = true,
            draw_as_sprite = false,
            fadeout = true,
            animation =
            {
              filename = "__leighzeruraniuminnovations__/graphics/entity/electric-furnace/electric-furnace-ground-light.png",
              blend_mode = "additive",
              width = 82,
              height = 64,
              shift = util.by_pixel(4, 68),
              hr_version =
              {
                filename = "__leighzeruraniuminnovations__/graphics/entity/electric-furnace/hr-electric-furnace-ground-light.png",
                blend_mode = "additive",
                width = 166,
                height = 124,
                shift = util.by_pixel(3, 69),
                scale = 0.5,
              }
            },
          },
          {
            animation =
            {
              filename = "__leighzeruraniuminnovations__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
              priority = "high",
              width = 19,
              height = 13,
              frame_count = 4,
              animation_speed = 0.5,
              shift = {-0.671875, -0.640625},
              hr_version =
              {
                filename = "__leighzeruraniuminnovations__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-1.png",
                priority = "high",
                width = 37,
                height = 25,
                frame_count = 4,
                animation_speed = 0.5,
                shift = util.by_pixel(-20.5, -18.5),
                scale = 0.5
              }
            }
          },
          {
            animation =
            {
              filename = "__leighzeruraniuminnovations__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
              priority = "high",
              width = 12,
              height = 9,
              frame_count = 4,
              animation_speed = 0.5,
              shift = {0.0625, -1.234375},
              hr_version =
              {
                filename = "__leighzeruraniuminnovations__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-2.png",
                priority = "high",
                width = 23,
                height = 15,
                frame_count = 4,
                animation_speed = 0.5,
                shift = util.by_pixel(3.5, -38),
                scale = 0.5
              }
            }
          }
        },
        fast_replaceable_group = "furnace",
        water_reflection =
        {
          pictures =
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-reflection.png",
            priority = "extra-high",
            width = 24,
            height = 24,
            shift = util.by_pixel(5, 40),
            variation_count = 1,
            scale = 5
          },
          rotate = false,
          orientation_to_variation = false
        }
    }, -- entity
    {
        type = "corpse",
        name = "uranium-electric-furnace-remnants",
        icon = "__leighzeruraniuminnovations__/graphics/icons/electric-furnace.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
        subgroup = "smelting-machine-remnants",
        order = "a-a-b",
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        tile_width = 3,
        tile_height = 3,
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 15, -- 15 minutes
        final_render_layer = "remnants",
        remove_on_tile_placement = false,
        animation =
        {
          filename = "__leighzeruraniuminnovations__/graphics/entity/electric-furnace/remnants/electric-furnace-remnants.png",
          line_length = 1,
          width = 228,
          height = 224,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-3, 7),
          hr_version =
          {
            filename = "__leighzeruraniuminnovations__/graphics/entity/electric-furnace/remnants/hr-electric-furnace-remnants.png",
            line_length = 1,
            width = 454,
            height = 448,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-3.25, 7.25),
            scale = 0.5
          }
        }
    }, -- remnant entity
})