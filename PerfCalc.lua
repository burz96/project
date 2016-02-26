



local tempVref
local tempV1

function update()
    set(GrossWeightLBS, (get(dref_emptyWeight) + get(dref_payloadWeight) + get(dref_TotalFuel))*2.20462262)
    set(FuelTotalLBS,   get(dref_TotalFuel)*2.20462262)
    set(ZFWLBS, get(GrossWeightLBS) - get(FuelTotalLBS))
    set(emptyWeightLBS, get(dref_emptyWeight)*2.20462262)

--following are estimations for Vrefs

    if get(landingFlaps) == 0 then
        set(landingAddition, 107)
    end
    if get(landingFlaps) == 1 then
        set(landingAddition, 122)
    end
    if get(landingFlaps) == 2 then
        set(landingAddition, 137)
    end
    if get(landingFlaps) == 3 then
        set(landingAddition, 167)
    end
    
    if get(takeoffFlaps) == 0 then
        set(takeoffAddition, 112)
    end
    if get(takeoffFlaps) == 1 then
        set(takeoffAddition, 104)
    end
    if get(takeoffFlaps) == 2 then
        set(takeoffAddition, 96)
    end
    
    tempVref = math.ceil(((get(GrossWeightLBS) - 100000)/1000)/2 + get(landingAddition))
    set(Vref, tempVref)
    
    tempV1 = math.ceil(((get(GrossWeightLBS) - 100000)/1000)/2 + get(takeoffAddition))
    set(V1, tempV1)
    set(VR, tempV1)
    set(V2, tempV1 + 12)

    

end