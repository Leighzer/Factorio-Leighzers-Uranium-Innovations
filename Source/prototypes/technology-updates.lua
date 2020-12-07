--updates to the tech tree

-- make atom bomb prereq the science pack - remove kovarex prereq - add science pack as unit to atom bomb
local atomTech = data.raw.technology["atomic-bomb"]
if atomTech and atomTech.unit and atomTech.unit.ingredients and atomTech.prerequisites then
    leighzermods.utils.removePrerequisite("atomic-bomb","kovarex-enrichment-process")
    table.insert(atomTech.unit.ingredients,{leighzermods.leighzeruraniuminnovations.nuclearSciencePack.name,1})
    table.insert(atomTech.prerequisites,leighzermods.leighzeruraniuminnovations.nuclearSciencePack.name)
end

-- add tech as prereq to uranium ammo - add science pack as unit to uranium ammo
local uraniumAmmoTech = data.raw.technology["uranium-ammo"]
if uraniumAmmoTech and uraniumAmmoTech.unit and uraniumAmmoTech.unit.ingredients and uraniumAmmoTech.prerequisites then
    table.insert(uraniumAmmoTech.unit.ingredients,{leighzermods.leighzeruraniuminnovations.nuclearSciencePack.name,1})
    table.insert(uraniumAmmoTech.prerequisites,leighzermods.leighzeruraniuminnovations.nuclearSciencePack.name)
    -- remove uranium processing prereq, covered by the fact that nuclear science pack requires kovarex
    for k,v in ipairs(data.raw.technology["uranium-ammo"].prerequisites) do
        if v == "uranium-processing" then
            table.remove(data.raw.technology["uranium-ammo"].prerequisites, k)
        end
    end
end

-- add tech as prereq to rocket - add science pack as unit to rocket tech
local rocketSiloTech = data.raw.technology["rocket-silo"]
if rocketSiloTech and rocketSiloTech.unit and rocketSiloTech.unit.ingredients and rocketSiloTech.prerequisites then
    table.insert(rocketSiloTech.unit.ingredients,{leighzermods.leighzeruraniuminnovations.nuclearSciencePack.name,1})
    table.insert(rocketSiloTech.prerequisites,leighzermods.leighzeruraniuminnovations.nuclearSciencePack.name)
end

-- add science pack to space science pack unit
local spaceSciencePackTech = data.raw.technology["space-science-pack"]
if spaceSciencePackTech and spaceSciencePackTech.unit and spaceSciencePackTech.unit.ingredients then
    table.insert(spaceSciencePackTech.unit.ingredients,{leighzermods.leighzeruraniuminnovations.nuclearSciencePack.name,1})
end

-- add uranium science pack to all techs that have space science as part of their research
for k,v in pairs(data.raw.technology) do
    if v and v.unit and v.unit.ingredients then

        for i,vv in ipairs(v.unit.ingredients) do            

            if vv[1] and vv[1] == "space-science-pack" then
                local hasNuclearSciencePack = false
                for j,vvv in ipairs(v.unit.ingredients) do
                    if vvv[1] and vvv[1] == "nuclear-science-pack" then
                        hasNuclearSciencePack = true
                        break
                    end
                end

                if not hasNuclearSciencePack then
                    table.insert(v.unit.ingredients,{leighzermods.leighzeruraniuminnovations.nuclearSciencePack.name,1})
                    break
                end 
            end
        end
    end
end