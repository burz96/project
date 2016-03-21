
S_eighty  = loadSample('sounds/Internal/Cojo/EightyKnots.wav')
setSampleEnv(S_eighty, SOUND_INTERNAL)
S_veeTate  = loadSample('sounds/Internal/Cojo/VeeTate.wav')
setSampleEnv(S_veeTate, SOUND_INTERNAL)
--S_GearUp   = loadSample('sounds/Internal/Cojo/GearUpSel.wav')
--setSampleEnv(S_GearUp, SOUND_INTERNAL)
--S_nolits   = loadSample('sounds/Internal/Cojo/GearUpNoLt.wav')
--setSampleEnv(S_nolits, SOUND_INTERNAL)
--S_thrGrn   = loadSample('sounds/Internal/Cojo/GrDnThrGr.wav')
--setSampleEnv(S_thrGrn, SOUND_INTERNAL)


setSampleGain(S_eighty, 300)
local gearUpStop = 0
local gearDnStop = 0

function update()

if get(dref_tireDef2) > 0 and get(dref_acceleration) > 0 then
    if get(dref_IAS) > 79 and get(dref_IAS) < 81 then
        if isSamplePlaying(S_eighty) == false then
        playSample(S_eighty, 0)
        end
    end
end

if get(dref_tireDef2) > 0 and get(dref_acceleration) > 0 then
    if get(dref_IAS) > (get(V1)-5) and get(dref_IAS) < (get(V1)-3) then
        if isSamplePlaying(S_veeTate) == false then
        playSample(S_veeTate, 0)
        end
    end
end
--if get(dref_RadAlt) < 500 and get(dref_GearHandle) == 0 and get(dref_landingGearRatio1) > 0.9 then
--    if isSamplePlaying(S_GearUp) == false then
--        playSample(S_GearUp, 0)
--    end
--end
--
--if get(dref_RadAlt) < 1000 and get(dref_GearHandle) == 0 and get(dref_landingGearRatio1) == 0 and get(dref_landingGearRatio2) == 0 and get(dref_landingGearRatio3) == 0 then
--    if gearUpStop == 0 then
--        if isSamplePlaying(S_nolits) == false then
--            playSample(S_nolits, 0)
--            gearUpStop = 1
--        end
--    end
--end
--if get(dref_tireDef2) > 0 then
--    gearUpStop = 0
--end
--
--if get(dref_GearHandle) == 1 and get(dref_landingGearRatio1) == 1 and get(dref_landingGearRatio2) == 1 and get(dref_landingGearRatio3) == 1 and get(dref_RadAlt) > 50 then
--    if gearDnStop == 0 then
--        if isSamplePlaying(S_thrGrn) == false then
--            playSample(S_thrGrn, 0)
--            gearDnStop = 1
--        end
--    end
--end
--if get(dref_landingGearRatio1) == 0 then
--    gearDnStop = 0
--end


end