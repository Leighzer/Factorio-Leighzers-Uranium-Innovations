require ("__base__.prototypes.entity.pipecovers")
local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
  
  {
    type = "item",
    name = "uranium-assembling-machine",
    icon = "__leighzeruraniuminnovations__/graphics/icons/uranium-assembling-machine.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "d-[uranium-assembling-machine]",
    place_result = "uranium-assembling-machine",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "uranium-assembling-machine",
    enabled = false,
    category = "crafting-with-fluid",
    ingredients =
    {
      {"uranium-235", 3},
      {name="sulfuric-acid", amount=100,type="fluid"},
      {"assembling-machine-3",1},
      {"speed-module-2",1},
      {"effectivity-module-2",1},
    },
    result = "uranium-assembling-machine"
  },      
  {
    type = "assembling-machine",
    name = "uranium-assembling-machine",
    icon = "__leighzeruraniuminnovations__/graphics/icons/uranium-assembling-machine.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "uranium-assembling-machine"},
    max_health = leighzermods.leighzeruraniuminnovations.assemblingMachine.maxHealth,
    corpse = "uranium-assembling-machine-remnants",
    dying_explosion = "uranium-assembling-machine", -- "assembling-machine-3-explosion",
    alert_icon_shift = util.by_pixel(-3, -12),
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 2} }},
        secondary_draw_orders = { north = -1 }
      },
      off_when_no_fluid_recipe = true
    },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    vehicle_impact_sound = sounds.generic_impact,
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/assembling-machine-t3-1.ogg",
          volume = 0.45
        }
      },
      audible_distance_modifier = 0.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = hit_effects.entity(),
    drawing_box = {{-1.5, -1.7}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      layers =
      {
        {
          filename = "__leighzeruraniuminnovations__/graphics/entity/uranium-assembling-machine/uranium-assembling-machine.png",
          priority = "high",
          width = 108,
          height = 119,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, -0.5),
          hr_version =
          {
            filename = "__leighzeruraniuminnovations__/graphics/entity/uranium-assembling-machine/hr-uranium-assembling-machine.png",
            priority = "high",
            width = 214,
            height = 237,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, -0.75),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-shadow.png",
          priority = "high",
          width = 130,
          height = 82,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(28, 4),
          hr_version =
          {
            filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-shadow.png",
            priority = "high",
            width = 260,
            height = 162,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(28, 4),
            scale = 0.5
          }
        }
      }
    },

    crafting_categories = {"basic-crafting", "crafting", "advanced-crafting", "crafting-with-fluid"},
    crafting_speed = leighzermods.leighzeruraniuminnovations.assemblingMachine.craftingSpeed,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = leighzermods.leighzeruraniuminnovations.assemblingMachine.emmisionsPerMinute
    },
    energy_usage = leighzermods.leighzeruraniuminnovations.assemblingMachine.energyUsage,
    module_specification =
    {
      module_slots = leighzermods.leighzeruraniuminnovations.assemblingMachine.moduleSlots
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  },
  {
    type = "corpse",
    name = "uranium-assembling-machine-remnants",
    icon = "__leighzeruraniuminnovations__/graphics/icons/uranium-assembling-machine.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "not-on-map"},
    subgroup = "production-machine-remnants",
    order = "a-a-b",
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    tile_width = 3,
    tile_height = 3,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    animation = make_rotated_animation_variations_from_sheet (3,
    {
      filename = "__leighzeruraniuminnovations__/graphics/entity/uranium-assembling-machine/remnants/uranium-assembling-machine-remnants.png",
      line_length = 1,
      width = 164,
      height = 142,
      frame_count = 1,
      variation_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = util.by_pixel(0, 10),
      hr_version =
      {
        filename = "__leighzeruraniuminnovations__/graphics/entity/uranium-assembling-machine/remnants/hr-uranium-assembling-machine-remnants.png",
        line_length = 1,
        width = 328,
        height = 282,
        frame_count = 1,
        variation_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        shift = util.by_pixel(0, 9.5),
        scale = 0.5,
      },
    })
  },
})