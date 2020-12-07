local tile_trigger_effects = require("__base__.prototypes.tile.tile-trigger-effects")

--base_tile_transition_effect_maps = {}
local ttfxmaps = base_tile_transition_effect_maps

ttfxmaps.water_grass =
{
  filename_norm = "__base__/graphics/terrain/effect-maps/water-grass-mask.png",
  filename_high = "__base__/graphics/terrain/effect-maps/hr-water-grass-mask.png",
  o_transition_tall = false,
  u_transition_count = 4,
  o_transition_count = 1
}

ttfxmaps.water_grass_to_land =
{
  filename_norm = "__base__/graphics/terrain/effect-maps/water-grass-to-land-mask.png",
  filename_high = "__base__/graphics/terrain/effect-maps/hr-water-grass-to-land-mask.png",
  count = 3,
  u_transition_count = 1,
  o_transition_count = 0
}

ttfxmaps.water_grass_to_out_of_map =
{
  filename_norm = "__base__/graphics/terrain/effect-maps/water-grass-to-out-of-map-mask.png",
  filename_high = "__base__/graphics/terrain/effect-maps/hr-water-grass-to-out-of-map-mask.png",
  count = 3,
  u_transition_count = 1,
  o_transition_count = 0
}

ttfxmaps.water_sand =
{
  filename_norm = "__base__/graphics/terrain/effect-maps/water-sand-mask.png",
  filename_high = "__base__/graphics/terrain/effect-maps/hr-water-sand-mask.png",
  o_transition_tall = false,
  u_transition_count = 4,
  o_transition_count = 1
}

ttfxmaps.water_sand_to_land =
{
  filename_norm = "__base__/graphics/terrain/effect-maps/water-sand-to-land-mask.png",
  filename_high = "__base__/graphics/terrain/effect-maps/hr-water-sand-to-land-mask.png",
  count = 3,
  u_transition_count = 1,
  o_transition_count = 0
}

ttfxmaps.water_sand_to_out_of_map =
{
  filename_norm = "__base__/graphics/terrain/effect-maps/water-sand-to-out-of-map-mask.png",
  filename_high = "__base__/graphics/terrain/effect-maps/hr-water-sand-to-out-of-map-mask.png",
  count = 3,
  u_transition_count = 1,
  o_transition_count = 0
}

ttfxmaps.water_dirt =
{
  filename_norm = "__base__/graphics/terrain/effect-maps/water-dirt-mask.png",
  filename_high = "__base__/graphics/terrain/effect-maps/hr-water-dirt-mask.png",
  count = 8,
  o_transition_tall = false,
  u_transition_count = 2,
  o_transition_count = 1
}

ttfxmaps.water_dirt_to_land =
{
  filename_norm = "__base__/graphics/terrain/effect-maps/water-dirt-to-land-mask.png",
  filename_high = "__base__/graphics/terrain/effect-maps/hr-water-dirt-to-land-mask.png",
  count = 3,
  u_transition_count = 1,
  o_transition_count = 0
}

ttfxmaps.water_dirt_to_out_of_map =
{
  filename_norm = "__base__/graphics/terrain/effect-maps/water-dirt-to-out-of-map-mask.png",
  filename_high = "__base__/graphics/terrain/effect-maps/hr-water-dirt-to-out-of-map-mask.png",
  count = 3,
  u_transition_count = 0,
  o_transition_count = 0
}

ttfxmaps.water_stone =
{
  filename_norm = "__base__/graphics/terrain/effect-maps/water-stone-mask.png",
  filename_high = "__base__/graphics/terrain/effect-maps/hr-water-stone-mask.png",
  count = 1,
  o_transition_tall = false
}

ttfxmaps.water_stone_to_land =
{
  filename_norm = "__base__/graphics/terrain/effect-maps/water-stone-to-land-mask.png",
  filename_high = "__base__/graphics/terrain/effect-maps/hr-water-stone-to-land-mask.png",
  count = 3,
  u_transition_count = 1,
  o_transition_count = 0
}

ttfxmaps.water_stone_to_out_of_map =
{
  filename_norm = "__base__/graphics/terrain/effect-maps/water-stone-to-out-of-map-mask.png",
  filename_high = "__base__/graphics/terrain/effect-maps/hr-water-stone-to-out-of-map-mask.png",
  count = 3,
  u_transition_count = 0,
  o_transition_count = 0
}

local function water_transition_template_with_effect(to_tiles, normal_res_transition, high_res_transition, options)
  return make_generic_transition_template(to_tiles, water_transition_group_id, nil, normal_res_transition, high_res_transition, options, true, false, true)
end

local concrete_transitions =
{
  water_transition_template_with_effect
  (
      water_tile_type_names,
      "__base__/graphics/terrain/water-transitions/concrete.png",
      "__base__/graphics/terrain/water-transitions/hr-concrete.png",
      {
        effect_map = ttfxmaps.water_stone,
        o_transition_tall = false,
        u_transition_count = 4,
        o_transition_count = 4,
        side_count = 8,
        outer_corner_count = 8,
        inner_corner_count = 8,
        --base = { layer = 40 }
      }
  ),
  concrete_to_out_of_map_transition
}

local concrete_transitions_between_transitions =
{
  make_generic_transition_template -- generic_transition_between_transitions_template
  (
      nil,
      default_transition_group_id,
      water_transition_group_id,
      "__base__/graphics/terrain/water-transitions/concrete-transitions.png",
      "__base__/graphics/terrain/water-transitions/hr-concrete-transitions.png",
      {
        effect_map = ttfxmaps.water_stone_to_land,
        inner_corner_tall = true,
        inner_corner_count = 3,
        outer_corner_count = 3,
        side_count = 3,
        u_transition_count = 1,
        o_transition_count = 0
      },
      true,
      false,
      true
  ),
  make_generic_transition_template
  (
    nil,
    default_transition_group_id,
    out_of_map_transition_group_id,
    "__base__/graphics/terrain/out-of-map-transition/concrete-out-of-map-transition-b.png",
    "__base__/graphics/terrain/out-of-map-transition/hr-concrete-out-of-map-transition-b.png",
    {
      inner_corner_tall = true,
      inner_corner_count = 3,
      outer_corner_count = 3,
      side_count = 3,
      u_transition_count = 1,
      o_transition_count = 0,
      base = init_transition_between_transition_common_options()
    },
    true,
    true,
    true
  ),
  generic_transition_between_transitions_template
  (
      water_transition_group_id,
      out_of_map_transition_group_id,
      "__base__/graphics/terrain/out-of-map-transition/concrete-shore-out-of-map-transition.png",
      "__base__/graphics/terrain/out-of-map-transition/hr-concrete-shore-out-of-map-transition.png",
      {
        effect_map = ttfxmaps.water_stone_to_out_of_map,
        o_transition_tall = false,
        inner_corner_count = 3,
        outer_corner_count = 3,
        side_count = 3,
        u_transition_count = 1,
        o_transition_count = 0,
        base = init_transition_between_transition_water_out_of_map_options()
      }
  )
}

local refined_concrete_sounds =
{
  {
    filename = "__base__/sound/walking/refined-concrete-01.ogg",
    volume = 0.5
  },
  {
    filename = "__base__/sound/walking/refined-concrete-02.ogg",
    volume = 0.5
  },
  {
    filename = "__base__/sound/walking/refined-concrete-03.ogg",
    volume = 0.5
  },
  {
    filename = "__base__/sound/walking/refined-concrete-04.ogg",
    volume = 0.5
  },
  {
    filename = "__base__/sound/walking/refined-concrete-05.ogg",
    volume = 0.5
  },
  {
    filename = "__base__/sound/walking/refined-concrete-06.ogg",
    volume = 0.5
  },
  {
    filename = "__base__/sound/walking/refined-concrete-07.ogg",
    volume = 0.5
  },
  {
    filename = "__base__/sound/walking/refined-concrete-08.ogg",
    volume = 0.5
  },
  {
    filename = "__base__/sound/walking/refined-concrete-09.ogg",
    volume = 0.5
  },
  {
    filename = "__base__/sound/walking/refined-concrete-10.ogg",
    volume = 0.5
  },
  {
    filename = "__base__/sound/walking/refined-concrete-11.ogg",
    volume = 0.5
  }
}

local concrete_tile_build_sounds =
{ small =  {{ filename = "__core__/sound/build-concrete-small.ogg", volume = 0.4 },
            { filename = "__core__/sound/build-concrete-small-1.ogg", volume = 0.4 },
            { filename = "__core__/sound/build-concrete-small-2.ogg", volume = 0.4 },
            { filename = "__core__/sound/build-concrete-small-3.ogg", volume = 0.4 },
            { filename = "__core__/sound/build-concrete-small-4.ogg", volume = 0.4 },
            { filename = "__core__/sound/build-concrete-small-5.ogg", volume = 0.4 }},
  medium = {{ filename = "__core__/sound/build-concrete-medium.ogg", volume = 0.5 },
            { filename = "__core__/sound/build-concrete-medium-1.ogg", volume = 0.5 },
            { filename = "__core__/sound/build-concrete-medium-2.ogg", volume = 0.5 },
            { filename = "__core__/sound/build-concrete-medium-3.ogg", volume = 0.5 },
            { filename = "__core__/sound/build-concrete-medium-4.ogg", volume = 0.5 },
            { filename = "__core__/sound/build-concrete-medium-5.ogg", volume = 0.5 }},
  large =  {{ filename = "__core__/sound/build-concrete-large.ogg", volume = 0.5 },
            { filename = "__core__/sound/build-concrete-large-1.ogg", volume = 0.5 },
            { filename = "__core__/sound/build-concrete-large-2.ogg", volume = 0.5 },
            { filename = "__core__/sound/build-concrete-large-3.ogg", volume = 0.5 },
            { filename = "__core__/sound/build-concrete-large-4.ogg", volume = 0.5 },
            { filename = "__core__/sound/build-concrete-large-5.ogg", volume = 0.5 }}
}

local concrete_vehicle_speed_modifier = 0.8

data:extend({
    {
        type = "item",
        name = "uranium-refined-concrete",
        icon = "__base__/graphics/icons/refined-concrete.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "terrain",
        order = "b[concrete]-c[uranium-refined]",
        stack_size = 100,
        place_as_tile =
        {
          result = "uranium-refined-concrete",
          condition_size = 1,
          condition = { "water-tile" }
        }
    }, -- item
    {
        type = "recipe",
        name = "uranium-refined-concrete",
        energy_required = 15,
        enabled = false,
        category = "crafting-with-fluid",
        ingredients =
        {
          {"refined-concrete", 20},          
          {"steel-plate", 8},
          {"uranium-235", 1},
          {type="fluid", name="sulfuric-acid", amount=100}
        },
        result= "uranium-refined-concrete",
        result_count = 10
    }, -- recipe
    {
      type = "tile",
      name = "uranium-refined-concrete",
      order = "a-c-d",
      needs_correction = false,
      minable = (not data.is_demo) and {mining_time = 0.1, result = "uranium-refined-concrete"} or nil,
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg",volume = 0.8},
      collision_mask = {"ground-tile"},
      walking_speed_modifier = leighzermods.leighzeruraniuminnovations.refinedConcrete.walkingSpeedModifier, -- 1.5,
      layer = 64,
      transition_overlay_layer_offset = 2, -- need to render border overlay on top of hazard-concrete
      decorative_removal_probability = 0.25,
      variants =
      {
        main =
        {
          {
            picture = "__base__/graphics/terrain/concrete/concrete-dummy.png",
            count = 1,
            size = 1
          },
          {
            picture = "__base__/graphics/terrain/concrete/concrete-dummy.png",
            count = 1,
            size = 2,
            probability = 0.39
          },
          {
            picture = "__base__/graphics/terrain/concrete/concrete-dummy.png",
            count = 1,
            size = 4,
            probability = 1
          }
        },
        inner_corner =
        {
          picture = "__leighzeruraniuminnovations__/graphics/terrain/concrete/concrete-inner-corner.png",
          count = 16,
          hr_version =
          {
            picture = "__leighzeruraniuminnovations__/graphics/terrain/concrete/hr-concrete-inner-corner.png",
            count = 16,
            scale = 0.5
          }
        },
        inner_corner_mask =
        {
          picture = "__base__/graphics/terrain/concrete/concrete-inner-corner-mask.png",
          count = 16,
          hr_version =
          {
            picture = "__base__/graphics/terrain/concrete/hr-concrete-inner-corner-mask.png",
            count = 16,
            scale = 0.5
          }
        },
  
        outer_corner =
        {
          picture = "__leighzeruraniuminnovations__/graphics/terrain/concrete/concrete-outer-corner.png",
          count = 8,
          hr_version =
          {
            picture = "__leighzeruraniuminnovations__/graphics/terrain/concrete/hr-concrete-outer-corner.png",
            count = 8,
            scale = 0.5
          }
        },
        outer_corner_mask =
        {
          picture = "__base__/graphics/terrain/concrete/concrete-outer-corner-mask.png",
          count = 8,
          hr_version =
          {
            picture = "__base__/graphics/terrain/concrete/hr-concrete-outer-corner-mask.png",
            count = 8,
            scale = 0.5
          }
        },
  
        side =
        {
          picture = "__leighzeruraniuminnovations__/graphics/terrain/concrete/concrete-side.png",
          count = 16,
          hr_version =
          {
            picture = "__leighzeruraniuminnovations__/graphics/terrain/concrete/hr-concrete-side.png",
            count = 16,
            scale = 0.5
          }
        },
        side_mask =
        {
          picture = "__base__/graphics/terrain/concrete/concrete-side-mask.png",
          count = 16,
          hr_version =
          {
            picture = "__base__/graphics/terrain/concrete/hr-concrete-side-mask.png",
            count = 16,
            scale = 0.5
          }
        },
  
        u_transition =
        {
          picture = "__leighzeruraniuminnovations__/graphics/terrain/concrete/concrete-u.png",
          count = 8,
          hr_version =
          {
            picture = "__leighzeruraniuminnovations__/graphics/terrain/concrete/hr-concrete-u.png",
            count = 8,
            scale = 0.5
          }
        },
        u_transition_mask =
        {
          picture = "__base__/graphics/terrain/concrete/concrete-u-mask.png",
          count = 8,
          hr_version =
          {
            picture = "__base__/graphics/terrain/concrete/hr-concrete-u-mask.png",
            count = 8,
            scale = 0.5
          }
        },
  
        o_transition =
        {
          picture = "__leighzeruraniuminnovations__/graphics/terrain/concrete/concrete-o.png",
          count = 4,
          hr_version =
          {
            picture = "__leighzeruraniuminnovations__/graphics/terrain/concrete/hr-concrete-o.png",
            count = 4,
            scale = 0.5
          }
        },
        o_transition_mask =
        {
          picture = "__base__/graphics/terrain/concrete/concrete-o-mask.png",
          count = 4,
          hr_version =
          {
            picture = "__base__/graphics/terrain/concrete/hr-concrete-o-mask.png",
            count = 4,
            scale = 0.5
          }
        },
  
        material_background =
        {
          picture = "__leighzeruraniuminnovations__/graphics/terrain/concrete/refined-concrete.png",
          count = 8,
          hr_version =
          {
            picture = "__leighzeruraniuminnovations__/graphics/terrain/concrete/hr-refined-concrete.png",
            count = 8,
            scale = 0.5
          }
        }
      },
  
      transitions = concrete_transitions,
      transitions_between_transitions = concrete_transitions_between_transitions,
  
      walking_sound = refined_concrete_sounds,
      build_sound = concrete_tile_build_sounds,
  
      map_color= leighzermods.leighzeruraniuminnovations.refinedConcrete.mapColor, -- {r=49, g=48, b=45},
      scorch_mark_color = {r = 0.373, g = 0.307, b = 0.243, a = 1.000},
      pollution_absorption_per_second = 0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier,
  
      trigger_effect = tile_trigger_effects.concrete_trigger_effect()
    }, -- entity
})