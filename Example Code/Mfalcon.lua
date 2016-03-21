
startme1 = 0
startme2 = 0
startme3 = 0
wiperTimeNow87 = 0


createCommand("FJS/727/EngineStart1", "Press to start engine number 1")
createCommand("FJS/727/EngineStart2", "Press to start engine number 2")
createCommand("FJS/727/EngineStart3", "Press to start engine number 3")

Estart1 = findCommand("FJS/727/EngineStart1")
Estart2 = findCommand("FJS/727/EngineStart2")
Estart3 = findCommand("FJS/727/EngineStart3")

simEstart1 = findCommand("sim/starters/engage_starter_1")
simEstart2 = findCommand("sim/starters/engage_starter_2")
simEstart3 = findCommand("sim/starters/engage_starter_3")

Cdref("myigniKey1",           "FJS/727/igniKey1")
Cdref("myigniKey2",           "FJS/727/igniKey2")
Cdref("myigniKey3",           "FJS/727/igniKey3")

dref_i("ignitionKey1",        "sim/cockpit2/engine/actuators/ignition_key[0]")
dref_i("ignitionKey2",        "sim/cockpit2/engine/actuators/ignition_key[1]")
dref_i("ignitionKey3",        "sim/cockpit2/engine/actuators/ignition_key[2]")





function Estart1_OnStart(phase)
    if 0 == phase then
        if get(dref_N21) < 50 and get(dref_hasBleedAir) == 1 and get(PACK_L_PSINeedle) > 20 then
            startme1 = 1
        end
    end 
    return 1
end
registerCommandHandler(Estart1, 1, Estart1_OnStart);

function Estart2_OnStart(phase)
    if 0 == phase then
        if get(dref_N22) < 50 and get(dref_hasBleedAir) == 1 and (get(PACK_L_PSINeedle) > 20 or get(PACK_R_PSINeedle) > 20) then
            startme2 = 1
        end
    end 
    return 1
end
registerCommandHandler(Estart2, 1, Estart2_OnStart);

function Estart3_OnStart(phase)
    if 0 == phase then
        if get(dref_N23) < 50 and get(dref_hasBleedAir) == 1 and get(PACK_R_PSINeedle) > 20 then
            startme3 = 1
        end
    end 
    return 1
end
registerCommandHandler(Estart3, 1, Estart3_OnStart);


function flightControls() -- everything in here will be for flight controls


-- this is the start of aeleron deflection with flap controls
    --local maxDef = 22 
    --local flapDef = get(dref_flapDeflection)
    --local aleRatio1 = myLerp(0,0,0.333333,0.8,flapDef) --low flap deflection
    --local aleRatio2 = myLerp(0.333333,0.8,1.0,1.0,flapDef) --hi flap deflection
    --
    --if flapDef == 0 then
    --    set(dref_ail2Up, 0)
    --    set(dref_ail2Dn, 0)
    --end
    --
    --if (flapDef > 0) and (flapDef < 0.333333)  then
    --    set(dref_ail2Up, (maxDef * aleRatio1))
    --    set(dref_ail2Dn, (maxDef * aleRatio1))
    --end
    --
    --if flapDef >= 0.333333  then
    --    set(dref_ail2Up, (maxDef * aleRatio2))
    --    set(dref_ail2Dn, (maxDef * aleRatio2))
    --end
    
    
    



-- This is the end of aleron deflection with flap controls
end


function wipers()
    
    set(Cdref_wiperRatio,get(dref_wiperAngle)/100)
    --local whiperNewTime
    --local y = math.sin(get(totalTime)*(get(dref_whiperSwitch)*2))
    --    set(dummy1, y)
    --
    --if y == 0 then
    --    set(Cdref_wiperRatio, 0)
    --    --wiperTimeNow87 = 0
    --else
    --    --wiperTimeNow87 = get(totalTime)
    --    
    --    set(Cdref_wiperRatio, (y+1)/2 )
    --end
end

function FuselageCD()
    local weightLB = ((get(dref_emptyWeight) + get(dref_payloadWeight) + get(dref_TotalFuel))*2.20462262)
    if weightLB < 150000 then
        set(dref_FuseCD, 0.032)
    end
    if weightLB > 150000 and weightLB < 190000 then
        set(dref_FuseCD, myLerp(150000,0.032,190000,0.010,weightLB))
    end
    if weightLB > 190000 then
        set(dref_FuseCD, 0.00)
    end


end



function update()

    FuselageCD()
    wipers()

    --flightControls()
    
    set(Cdref_thrustLB, (get(dref_thrust_n) * 0.224808943871))
    
    if startme1 == 1 then
        commandBegin(simEstart1)
    end
    if startme2 == 1 then
        commandBegin(simEstart2)
    end
    if startme3 == 1 then
        commandBegin(simEstart3)
    end
    
    if get(dref_N21) > 37.5 then
        commandEnd(simEstart1)
        startme1 = 0
    end
    if get(dref_N22) > 37.5 then
        commandEnd(simEstart2)
        startme2 = 0
    end
    if get(dref_N23) > 37.5 then
        commandEnd(simEstart3)
        startme3 = 0
    end
    
    --This code was writen to bypass a bug in the blender exporter scripts.
    set(Cdref_EngHide1, get(dref_engRadSec1))
    set(Cdref_EngHide2, get(dref_engRadSec2))
    set(Cdref_EngHide3, get(dref_engRadSec3))
    
    set(Cdref_wingDef, get(dref_wingDef))
    
    set(Cdref_airStairRatio, get(dref_CustSlid1))
    
    set(myigniKey1, get(ignitionKey1))
    set(myigniKey2, get(ignitionKey2))
    set(myigniKey3, get(ignitionKey3))
    
    

end