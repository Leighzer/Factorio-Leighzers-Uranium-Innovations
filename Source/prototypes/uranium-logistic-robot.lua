local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

local robot_animations = require("prototypes.robot-animations")

data:extend({
    {
        type = "item",
        name = "uranium-logistic-robot",
        icon = "__leighzeruraniuminnovations__/graphics/icons/logistic-robot.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "logistic-network",
        order = "a[robot]-a[uranium-logistic-robot]",
        place_result = "uranium-logistic-robot",
        stack_size = 50
    }, -- item
    {
        type = "recipe",
        name = "uranium-logistic-robot",
        category = "crafting-with-fluid",
        enabled = false,
        ingredients =
        {
          {"flying-robot-frame", 1},
          {"speed-module", 1},
          {"effectivity-module", 1},
          {"logistic-robot", 1},
          {"uranium-235", 2},
          {type="fluid", name="sulfuric-acid", amount = 50}
        },
        result = "uranium-logistic-robot"
      }, -- recipe
      {
        type = "logistic-robot",
        name = "uranium-logistic-robot",
        icon = "__leighzeruraniuminnovations__/graphics/icons/logistic-robot.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
        minable = {mining_time = 0.1, result = "uranium-logistic-robot"},
        resistances =
        {
          {
            type = "fire",
            percent = 85
          }
        },
        max_health = 100,
        collision_box = {{0, 0}, {0, 0}},
        selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
        hit_visualization_box = {{-0.1, -1.1}, {0.1, -1.0}},
        damaged_trigger_effect = hit_effects.flying_robot(),
        dying_explosion = "medium-explosion", -- "logistic-robot-explosion",
        max_payload_size = 1,
        speed = 0.05,
        max_energy = "1.5MJ",
        energy_per_tick = "0.05kJ",
        speed_multiplier_when_out_of_energy = 0.2,
        energy_per_move = "5kJ",
        min_to_charge = 0.2,
        max_to_charge = 0.95,
        working_sound = sounds.flying_robot(0.48),
        cargo_centered = {0.0, 0.2},
        water_reflection = robot_reflection(1),
        idle = robot_animations.logistic_robot.idle,
        idle_with_cargo = robot_animations.logistic_robot.idle_with_cargo,
        in_motion = robot_animations.logistic_robot.in_motion,
        in_motion_with_cargo = robot_animations.logistic_robot.in_motion_with_cargo,
        shadow_idle = robot_animations.logistic_robot.shadow_idle,
        shadow_idle_with_cargo = robot_animations.logistic_robot.shadow_idle_with_cargo,
        shadow_in_motion = robot_animations.logistic_robot.shadow_in_motion,
        shadow_in_motion_with_cargo = robot_animations.logistic_robot.shadow_in_motion_with_cargo
    }, -- entity
    {
        type = "corpse",
        name = "uranium-logistic-robot-remnants",
        icon = "__leighzeruraniuminnovations__/graphics/icons/logistic-robot.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "not-on-map", "placeable-off-grid"},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        tile_width = 3,
        tile_height = 3,
        selectable_in_game = false,
        subgroup = "remnants",
        order="d[remnants]-a[generic]-a[small]-a",
        time_before_removed = 60 * 60 * 15, -- 15 minutes
        final_render_layer = "remnants",
        remove_on_tile_placement = false,
        animation = make_rotated_animation_variations_from_sheet (3,
        {
          filename = "__leighzeruraniuminnovations__/graphics/entity/logistic-robot/remnants/logistic-robot-remnants.png",
          line_length = 1,
          width = 58,
          height = 58,
          frame_count = 1,
          variation_count = 1,
          axially_symmetrical = false,
          direction_count = 1,
          shift = util.by_pixel(1, 1),
          hr_version =
          {
            filename = "__leighzeruraniuminnovations__/graphics/entity/logistic-robot/remnants/hr-logistic-robot-remnants.png",
            line_length = 1,
            width = 116,
            height = 114,
            frame_count = 1,
            variation_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = util.by_pixel(1, 1),
            scale = 0.5
          }
        })
    }, -- remnant entity
})