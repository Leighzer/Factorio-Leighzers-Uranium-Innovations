require ("__base__.prototypes.entity.demo-pipecovers")
local hit_effects = require ("__base__.prototypes.entity.demo-hit-effects")
local sounds = require("__base__.prototypes.entity.demo-sounds")

data:extend({
  
  {
    type = "item",
    name = "uranium-assembling-machine",
    icon = "__leighzeruraniumautomation__/graphics/icons/uranium-assembling-machine.png",
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
      {"speed-module-3",1},
      {"effectivity-module-3",1},
    },
    result = "uranium-assembling-machine"
  },
      
  {
    type = "assembling-machine",
    name = "uranium-assembling-machine",
    icon = "__leighzeruraniumautomation__/graphics/icons/uranium-assembling-machine.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "uranium-assembling-machine"},
    max_health = 450,
    corpse = "uranium-assembling-machine-remnants",
    dying_explosion = "medium-explosion",
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
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = hit_effects.entity(),
    fast_replaceable_group = "assembling-machine",    
    alert_icon_shift = util.by_pixel(-3, -12),
    animation =
    {
      layers =
      {
        {
          filename = "__leighzeruraniumautomation__/graphics/entity/uranium-assembling-machine/uranium-assembling-machine.png",
          priority = "high",
          width = 108,
          height = 119,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, -0.5),
          hr_version =
          {
            filename = "__leighzeruraniumautomation__/graphics/entity/uranium-assembling-machine/hr-uranium-assembling-machine.png",
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
    crafting_speed = leighzermods.leighzeruraniumautomation.craftingSpeed,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 1,      
    },
    energy_usage = "750kW",
    module_specification =
    {
      module_slots = leighzermods.leighzeruraniumautomation.moduleSlots
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.6 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.6 },
    vehicle_impact_sound = sounds.generic_impact,
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/assembling-machine-t1-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t1-2.ogg",
          volume = 0.8
        }
      },
      --idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 },
      apparent_volume = 1.5,
      --max_sounds_per_type = 2,
      fade_in_ticks = 10,
      fade_out_ticks = 30
    }
  },
  {
    type = "corpse",
    name = "uranium-assembling-machine-remnants",
    icon = "__leighzeruraniumautomation__/graphics/icons/uranium-assembling-machine.png",
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
      filename = "__leighzeruraniumautomation__/graphics/entity/uranium-assembling-machine/remnants/uranium-assembling-machine-remnants.png",
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
        filename = "__leighzeruraniumautomation__/graphics/entity/uranium-assembling-machine/remnants/hr-uranium-assembling-machine-remnants.png",
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