local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

local robot_animations = require("prototypes.robot-animations")

data:extend({
    {
        type = "item",
        name = "uranium-construction-robot",
        icon = "__leighzeruraniuminnovations__/graphics/icons/construction-robot.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "logistic-network",
        order = "a[robot]-b[uranium-construction-robot]",
        place_result = "uranium-construction-robot",
        stack_size = 50
    }, -- item
    {
        type = "recipe",
        name = "uranium-construction-robot",
        category = "crafting-with-fluid",
        enabled = false,
        ingredients =
        {
          {"flying-robot-frame", 1},
          {"speed-module", 1},
          {"uranium-235", 1},
          {type="fluid", name="sulfuric-acid", amount=50},
          {"construction-robot", 1}
        },
        result = "uranium-construction-robot"
    }, -- recipe
    {
        type = "construction-robot",
        name = "uranium-construction-robot",
        icon = "__leighzeruraniuminnovations__/graphics/icons/construction-robot.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
        minable = {mining_time = 0.1, result = "uranium-construction-robot"},
        resistances =
        {
          {
            type = "fire",
            percent = 85
          }
        },
        max_health = leighzermods.leighzeruraniuminnovations.constructionRobot.maxHealth, -- 100,
        collision_box = {{0, 0}, {0, 0}},
        selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
        hit_visualization_box = {{-0.1, -1.1}, {0.1, -1.0}},
        damaged_trigger_effect = hit_effects.flying_robot(),
        dying_explosion = "medium-explosion", -- "construction-robot-explosion",
        max_payload_size = leighzermods.leighzeruraniuminnovations.constructionRobot.maxPayloadSize, -- 1,
        speed = leighzermods.leighzeruraniuminnovations.constructionRobot.speed, -- 0.06,
        max_energy = leighzermods.leighzeruraniuminnovations.constructionRobot.maxEnergy, -- "1.5MJ",
        energy_per_tick = "0.05kJ",
        speed_multiplier_when_out_of_energy = 0.2,
        energy_per_move = "5kJ",
        min_to_charge = 0.2,
        max_to_charge = 0.95,
        --working_light = {intensity = 0.8, size = 3, color = {r = 0.8, g = 0.8, b = 0.8}},
        smoke =
        {
          filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
          width = 39,
          height = 32,
          frame_count = 19,
          line_length = 19,
          shift = {0.078125, -0.15625},
          animation_speed = 0.3
        },
        sparks = robot_animations.sparks,
        repairing_sound =
        {
          { filename = "__base__/sound/robot-repair-1.ogg", volume = 0.6 },
          { filename = "__base__/sound/robot-repair-2.ogg", volume = 0.6 },
          { filename = "__base__/sound/robot-repair-3.ogg", volume = 0.6 },
          { filename = "__base__/sound/robot-repair-4.ogg", volume = 0.6 },
          { filename = "__base__/sound/robot-repair-5.ogg", volume = 0.6 },
          { filename = "__base__/sound/robot-repair-6.ogg", volume = 0.6 },
        },
        working_sound = sounds.construction_robot(0.47),
        cargo_centered = {0.0, 0.2},
        construction_vector = {0.30, 0.22},
        water_reflection = robot_reflection(1),
        idle = robot_animations.uranium_construction_robot.idle,
        idle_with_cargo = robot_animations.uranium_construction_robot.idle_with_cargo,
        in_motion = robot_animations.uranium_construction_robot.in_motion,
        in_motion_with_cargo = robot_animations.uranium_construction_robot.in_motion_with_cargo,
        shadow_idle = robot_animations.uranium_construction_robot.shadow_idle,
        shadow_idle_with_cargo = robot_animations.uranium_construction_robot.shadow_idle_with_cargo,
        shadow_in_motion = robot_animations.uranium_construction_robot.shadow_in_motion,
        shadow_in_motion_with_cargo = robot_animations.uranium_construction_robot.shadow_in_motion_with_cargo,
        working = robot_animations.uranium_construction_robot.working,
        shadow_working = robot_animations.uranium_construction_robot.shadow_working
    }, -- entity
    {
        type = "corpse",
        name = "uranium-construction-robot-remnants",
        icon = "__leighzeruraniuminnovations__/graphics/icons/construction-robot.png",
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
          filename = "__leighzeruraniuminnovations__/graphics/entity/construction-robot/remnants/construction-robot-remnants.png",
          line_length = 1,
          width = 60,
          height = 58,
          frame_count = 1,
          variation_count = 1,
          axially_symmetrical = false,
          direction_count = 1,
          shift = util.by_pixel(2, 1),
          hr_version =
          {
            filename = "__leighzeruraniuminnovations__/graphics/entity/construction-robot/remnants/hr-construction-robot-remnants.png",
            line_length = 1,
            width = 120,
            height = 114,
            frame_count = 1,
            variation_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = util.by_pixel(2, 1),
            scale = 0.5
          }
        })
    }, -- remnant entity
})