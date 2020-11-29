local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
    {
        type = "item",
        name = "uranium-radar",
        icon = "__leighzeruraniuminnovations__/graphics/icons/radar.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "defensive-structure",
        order = "d[radar]-a[uranium-radar]",
        place_result = "uranium-radar",
        stack_size = 50
    }, -- item
    {
        type = "recipe",
        name = "uranium-radar",
        category = "crafting-with-fluid",
        ingredients =
        {
          {"speed-module-2", 1},
          {"productivity-module-2", 1},
          {"steel-plate", 20},          
          {"radar", 2},
          {"uranium-235", 2},
          {type="fluid", name="sulfuric-acid", amount=100}
        },
        result = "uranium-radar",
        enabled=false,
      }, -- recipe
      {
        type = "radar",
        name = "uranium-radar",
        icon = "__leighzeruraniuminnovations__/graphics/icons/radar.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-player", "player-creation"},
        minable = {mining_time = 0.1, result = "uranium-radar"},
        max_health = leighzermods.leighzeruraniuminnovations.radar.maxHealth,
        corpse = "uranium-radar-remnants",
        dying_explosion = "medium-explosion", -- "radar-explosion",
        resistances =
        {
          {
            type = "fire",
            percent = 70
          },
          {
            type = "impact",
            percent = 30
          }
        },
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        damaged_trigger_effect = hit_effects.entity(),
        energy_per_sector = leighzermods.leighzeruraniuminnovations.radar.energyPerSector, -- "10MJ",
        max_distance_of_sector_revealed = leighzermods.leighzeruraniuminnovations.radar.maxDistanceOfSectorRevealed, -- 14,
        max_distance_of_nearby_sector_revealed = leighzermods.leighzeruraniuminnovations.radar.maxDistanceOfNearbySectorRevealed, -- 3,
        energy_per_nearby_scan = leighzermods.leighzeruraniuminnovations.radar.energyPerNearbyScan, -- "250kJ",
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input"
        },
        energy_usage = leighzermods.leighzeruraniuminnovations.radar.energyUsage, -- "300kW",
        integration_patch =
        {
          filename = "__base__/graphics/entity/radar/radar-integration.png",
          priority = "low",
          width = 119,
          height = 108,
          direction_count = 1,
          shift = util.by_pixel(1.5, 4),
          hr_version =
          {
            filename = "__base__/graphics/entity/radar/hr-radar-integration.png",
            priority = "low",
            width = 238,
            height = 216,
            direction_count = 1,
            shift = util.by_pixel(1.5, 4),
            scale = 0.5
          }
        },
        pictures =
        {
          layers =
          {
            {
              filename = "__leighzeruraniuminnovations__/graphics/entity/radar/radar.png",
              priority = "low",
              width = 98,
              height = 128,
              apply_projection = false,
              direction_count = 64,
              line_length = 8,
              shift = util.by_pixel(1, -16),
              hr_version =
              {
                filename = "__leighzeruraniuminnovations__/graphics/entity/radar/hr-radar.png",
                priority = "low",
                width = 196,
                height = 254,
                apply_projection = false,
                direction_count = 64,
                line_length = 8,
                shift = util.by_pixel(1, -16),
                scale = 0.5
              }
            },
            {
              filename = "__base__/graphics/entity/radar/radar-shadow.png",
              priority = "low",
              width = 172,
              height = 94,
              apply_projection = false,
              direction_count = 64,
              line_length = 8,
              shift = util.by_pixel(39,3),
              draw_as_shadow = true,
              hr_version =
              {
                filename = "__base__/graphics/entity/radar/hr-radar-shadow.png",
                priority = "low",
                width = 343,
                height = 186,
                apply_projection = false,
                direction_count = 64,
                line_length = 8,
                shift = util.by_pixel(39.25,3),
                draw_as_shadow = true,
                scale = 0.5
              }
            }
          }
        },
        vehicle_impact_sound = sounds.generic_impact,
        working_sound =
        {
          sound =
          {
            {
              filename = "__base__/sound/radar.ogg",
              volume = 0.8
            }
          },
        max_sounds_per_type = 3,
        --audible_distance_modifier = 0.8,
        use_doppler_shift = false
        },
        radius_minimap_visualisation_color = { r = 0.059, g = 0.092, b = 0.235, a = 0.275 },
        rotation_speed = leighzermods.leighzeruraniuminnovations.radar.rotationSpeed, -- 0.01,
        water_reflection =
        {
          pictures =
          {
            filename = "__base__/graphics/entity/radar/radar-reflection.png",
            priority = "extra-high",
            width = 28,
            height = 32,
            shift = util.by_pixel(5, 35),
            variation_count = 1,
            scale = 5
          },
          rotate = false,
          orientation_to_variation = false
        },
        fast_replaceable_group = "radar"
    }, -- entity
    {
        type = "corpse",
        name = "uranium-radar-remnants",
        icon = "__leighzeruraniuminnovations__/graphics/icons/radar.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "not-on-map"},
        subgroup = "defensive-structure-remnants",
        order = "a-g-b",
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        tile_width = 3,
        tile_height = 3,
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 15, -- 15 minutes
        final_render_layer = "remnants",
        remove_on_tile_placement = false,
        animation = make_rotated_animation_variations_from_sheet (1,
        {
          filename = "__leighzeruraniuminnovations__/graphics/entity/radar/remnants/radar-remnants.png",
          line_length = 1,
          width = 142,
          height = 106,
          frame_count = 1,
          variation_count = 1,
          axially_symmetrical = false,
          direction_count = 1,
          shift = util.by_pixel(12, 4),
          hr_version =
          {
            filename = "__leighzeruraniuminnovations__/graphics/entity/radar/remnants/hr-radar-remnants.png",
            line_length = 1,
            width = 282,
            height = 212,
            frame_count = 1,
            variation_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = util.by_pixel(12, 4.5),
            scale = 0.5
          }
        })
    }, -- remnant entity
})