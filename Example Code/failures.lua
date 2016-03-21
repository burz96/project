local RR = 0

dref_f("engineN11", "sim/cockpit2/engine/indicators/N1_percent[0]")
dref_f("engineN12", "sim/cockpit2/engine/indicators/N1_percent[1]")
dref_f("engineN13", "sim/cockpit2/engine/indicators/N1_percent[2]")

dref_i("engineFail_1", "sim/operation/failures/rel_engfai0")
dref_i("engineFail_2", "sim/operation/failures/rel_engfai1")
dref_i("engineFail_3", "sim/operation/failures/rel_engfai2")

dref_i("engineFire_1", "sim/operation/failures/rel_engfir0")
dref_i("engineFire_2", "sim/operation/failures/rel_engfir1")
dref_i("engineFire_3", "sim/operation/failures/rel_engfir2")

dref_i("engineFlux_1", "sim/operation/failures/rel_fuelfl0")
dref_i("engineFlux_2", "sim/operation/failures/rel_fuelfl1")
dref_i("engineFlux_3", "sim/operation/failures/rel_fuelfl2")

dref_f("angleAttack",  "sim/flightmodel2/misc/AoA_angle_degrees")
dref_i("fail_HstabL", "sim/operation/failures/rel_hstbL")
dref_i("fail_HstabR", "sim/operation/failures/rel_hstbR")
dref_i("fail_Vstab1", "sim/operation/failures/rel_vstb1")
dref_i("fail_Vstab2", "sim/operation/failures/rel_vstb2")
dref_i("fail_Mwing1", "sim/operation/failures/rel_mwing1")
dref_i("fail_Mwing2", "sim/operation/failures/rel_mwing2")

dref_i("Eng_FireEng1",                   "sim/cockpit2/annunciators/engine_fires[0]")
dref_i("Eng_FireEng2",                   "sim/cockpit2/annunciators/engine_fires[1]")
dref_i("Eng_FireEng3",                   "sim/cockpit2/annunciators/engine_fires[2]")
dref_i("fireExtingusher1",               "sim/cockpit2/engine/actuators/fire_extinguisher_on[0]")
dref_i("fireExtingusher2",               "sim/cockpit2/engine/actuators/fire_extinguisher_on[1]")
dref_i("fireExtingusher3",               "sim/cockpit2/engine/actuators/fire_extinguisher_on[2]")

--Switches
Cdref("FireTestSwitch",                  "FJS/727/fail/FireTestSwitch")
Cdref("Eng1FireHandle",                  "FJS/727/fail/Eng1FireHandle")
Cdref("Eng2FireHandle",                  "FJS/727/fail/Eng2FireHandle")
Cdref("Eng3FireHandle",                  "FJS/727/fail/Eng3FireHandle")
Cdref("Eng1DISCHButton",                 "FJS/727/fail/Eng1DISCHButton")
Cdref("Eng2DISCHButton",                 "FJS/727/fail/Eng2DISCHButton")
Cdref("Eng3DISCHButton",                 "FJS/727/fail/Eng3DISCHButton")
Cdref("BottleSelectSwitch",              "FJS/727/fail/BottleSelectSwitch")


--lights
Cdref("WheelWellFireLite",               "FJS/727/fail/WheelWellFireLite")
Cdref("Eng1FireLite",                    "FJS/727/fail/Eng1FireLite")
Cdref("Eng2FireLite",                    "FJS/727/fail/Eng2FireLite")
Cdref("Eng3FireLite",                    "FJS/727/fail/Eng3FireLite")
Cdref("BottleLite1",                     "FJS/727/fail/BottleLite1")
Cdref("BottleLite2",                     "FJS/727/fail/BottleLite2")

local FreonBottle1 = 10
local FreonBottle2 = 10
local fireEng1Time = 0
local fireEng2Time = 0
local fireEng3Time = 0


defineProperty("engine1Condition")
defineProperty("engine2Condition")
defineProperty("engine3Condition")

set(engine1Condition, math.random(50,100))
set(engine2Condition, math.random(50,100))
set(engine3Condition, math.random(50,100))

local highTime = 1800


local failTime1 = nil
local failTime2 = nil
local failTime3 = nil

local timer1 = nil
local timer2 = nil
local timer3 = nil

local acumTime1 = 0
local acumTime2 = 0
local acumTime3 = 0

function EngFireSystem()
    set(Eng1FireLite, get(Eng1FireLite)+((get(Eng_FireEng1)*get(pow) - get(Eng1FireLite))*RR*18))
    set(Eng2FireLite, get(Eng2FireLite)+((get(Eng_FireEng2)*get(pow) - get(Eng2FireLite))*RR*18))
    set(Eng3FireLite, get(Eng3FireLite)+((get(Eng_FireEng3)*get(pow) - get(Eng3FireLite))*RR*18))
    set(fireExtingusher1, 0)
    set(fireExtingusher2, 0)
    set(fireExtingusher3, 0)
    
    if get(Eng1FireHandle) == 1 and get(Eng1DISCHButton) == 1 and get(engineFire_1) == 6 then
        fireEng1Time = fireEng1Time + 1/(1/RR)
        if get(BottleSelectSwitch) == 1 then
            FreonBottle2 = FreonBottle2 - 1/(1/RR)
            if FreonBottle2 > 0 and fireEng1Time > 6 then
                set(fireExtingusher1, 1)
                set(engineFire_1, 0)
            end
        else
            FreonBottle1 = FreonBottle1 - (1)/(1/RR)
            if FreonBottle1 > 0 and fireEng1Time > 6 then
                set(fireExtingusher1, 1)
                set(engineFire_1, 0)
            end
        end
        
    end
    
    if get(Eng1FireHandle) == 1 then
        set(engineFail_1, 6)
    end
    if get(Eng2FireHandle) == 1 then
        set(engineFail_2, 6)
    end
    if get(Eng3FireHandle) == 1 then
        set(engineFail_3, 6)
    end
    
    if get(Eng2FireHandle) == 1 and get(Eng2DISCHButton) == 1 and get(engineFire_2) == 6 then
        fireEng2Time = fireEng2Time + 1/(1/RR)
        if get(BottleSelectSwitch) == 1 then
            FreonBottle2 = FreonBottle2 - 1/(1/RR)
            if FreonBottle2 > 0 and fireEng2Time > 6 then
                set(fireExtingusher2, 1)
                set(engineFire_2, 0)
            end
        else
            FreonBottle1 = FreonBottle1 - 1/(1/RR)
            if FreonBottle1 > 0 and fireEng2Time > 6 then
                set(fireExtingusher2, 1)
                set(engineFire_2, 0)
            end
        end
    end
    if get(Eng3FireHandle) == 1 and get(Eng3DISCHButton) == 1 and get(engineFire_3) == 6 then
        fireEng3Time = fireEng3Time + 1/(1/RR)
        if get(BottleSelectSwitch) == 1 then
            FreonBottle2 = FreonBottle2 - 1/(1/RR)
            if FreonBottle2 > 0 and fireEng3Time > 6 then
                set(fireExtingusher3, 1)
                set(engineFire_3, 0)
            end
        else
            FreonBottle1 = FreonBottle1 - 1/(1/RR)
            if FreonBottle1 > 0 and fireEng3Time > 6 then
                set(fireExtingusher3, 1)
                set(engineFire_3, 0)
            end
        end
    end
    
    if FreonBottle1 < 1 then
        set(BottleLite1, get(BottleLite1)+((1*get(pow) - get(BottleLite1))*RR*18))
    else
        set(BottleLite1, get(BottleLite1)+((0*get(pow) - get(BottleLite1))*RR*18))
    end
    if FreonBottle2 < 1 then
        set(BottleLite2, get(BottleLite2)+((1*get(pow) - get(BottleLite2))*RR*18))
    else
        set(BottleLite2, get(BottleLite2)+((0*get(pow) - get(BottleLite2))*RR*18))
    end

end

function deepStall()

    if get(dref_airspeedIAS) > 50 then
        if get(angleAttack) > 13 and get(angleAttack) < 40 then
            set(fail_HstabL, 6)
            set(fail_HstabR, 6)
        else
            set(fail_HstabL, 0)
            set(fail_HstabR, 0)
        end
    end

end

function vertStabGone()
    if get(dref_airspeedIAS) < 60 then
        --set(fail_Vstab1, 6)
        --set(fail_Vstab2, 6)
        set(fail_Mwing1, 6)
        set(fail_Mwing2, 6)
    else
        set(fail_Vstab1, 0)
        set(fail_Vstab2, 0)
        set(fail_Mwing1, 0)
        set(fail_Mwing2, 0)
    end


end


function engine1FT()

    --engine N1 over 95% may fail the engine based on how much over it is of 95%
    --and for how long it has been here.

    -- grab the ratio to use for falues based on N1% at this time.
    local baseFailureRatio = myLerp(95,1,102,9,get(engineN11))
    
    --this acumulates the time n1 has been over 95%
    acumTime1 = acumTime1 + (baseFailureRatio/(get(engine1Condition)/100))/(1/RR)
    if acumTime1 > 2700 then
        set(engineFire_1, 6)
    end
end

function engine2FT()

    --engine N1 over 95% may fail the engine based on how much over it is of 95%
    --and for how long it has been here.
    
    -- grab the ratio to use for falues based on N1% at this time.
    local baseFailureRatio = myLerp(95,1,102,9,get(engineN12))
    
    --this acumulates the time n1 has been over 95%
    acumTime2 = acumTime2 + (baseFailureRatio/(get(engine2Condition)/100))/(1/RR)
    if acumTime2 > 2700 then
        set(engineFire_2, 6)
    end
end

function engine3FT()

    --engine N1 over 95% may fail the engine based on how much over it is of 95%
    --and for how long it has been here.
   
    -- grab the ratio to use for falues based on N1% at this time.
    local baseFailureRatio = myLerp(95,1,102,9,get(engineN13))
    
    --this acumulates the time n1 has been over 95%
    acumTime3 = acumTime3 + (baseFailureRatio/(get(engine3Condition)/100))/(1/RR)
    if acumTime3 > 2700 then
        set(engineFire_3, 6)
    end
end



function update()

    RR = get(frameRate)
    if get(engineN11) > 95 then
        engine1FT()
    elseif acumTime1 > 0 then
            acumTime1 = acumTime1 - 1/(1/RR)
    end
    if get(engineN11) < 20 then
        acumTime1 = 0
    end
    
    if get(engineN12) > 95 then
        engine2FT()
    elseif acumTime2 > 0 then
            acumTime2 = acumTime2 - 1/(1/RR)
    end
    if get(engineN12) < 20 then
        acumTime2 = 0
    end
    
    if get(engineN13) > 95 then
        engine3FT()
    elseif acumTime3 > 0 then
            acumTime3 = acumTime3 - 1/(1/RR)
    end
    if get(engineN13) < 20 then
        acumTime3 = 0
    end
    EngFireSystem()
    deepStall()
    
    --vertStabGone()


end