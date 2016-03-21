--This final containes all functions for the hydraulic systems includeing flight controls.

local RR = 0
local pump = 5
local pumpStop = 0

function surfMove(Ratio, High, Low, clamp)
    local ratio2
    if clamp == 1 then
        if Ratio > 0.33 then
            Ratio2 = 0.33
        elseif Ratio < -0.33 then
            Ratio2 = -0.33
        else
            Ratio2 = Ratio
        end
    else
        Ratio2 = Ratio
    end
    return myLerp(-1,Low,1,High,Ratio2)
end

-- Sim datarefs
dref_f("simhydQuanity1",            "sim/cockpit/misc/hydraulic_quantity")
dref_i("simElecHydPumpOn",          "sim/cockpit2/switches/electric_hydraulic_pump_on")
dref_f("simHydPressure1",           "sim/cockpit2/hydraulics/indicators/hydraulic_pressure_1")
dref_f("simHydPressure2",           "sim/cockpit2/hydraulics/indicators/hydraulic_pressure_2")

-- Switches
Cdref("HydSysAEng1Switch",          "FJS/727/Hyd/HydSysAEng1Switch")
Cdref("HydSysAEng2Switch",          "FJS/727/Hyd/HydSysAEng2Switch")

Cdref("HydSysAEng1ShutoffSwitch",   "FJS/727/Hyd/HydSysAEng1ShutoffSwitch")
Cdref("HydSysAEng2ShutoffSwitch",   "FJS/727/Hyd/HydSysAEng2ShutoffSwitch")

Cdref("GrdInterSwitch",             "FJS/727/Hyd/GrdInterSwitch")

Cdref("HydSysBpum1Switch",          "FJS/727/Hyd/HydSysBpum1Switch")
Cdref("HydSysBpum2Switch",          "FJS/727/Hyd/HydSysBpum2Switch")

Cdref("HydBrakeInterSwitch",        "FJS/727/Hyd/HydBrakeInterSwitch")

--Hyd Power Switches
Cdref("HydPowAilSysA",              "FJS/727Hyd/HydPowAilSysA")
Cdref("HydPowAilSysB",              "FJS/727Hyd/HydPowAilSysB")
Cdref("HydPowSpoSysAINBD",          "FJS/727Hyd/HydPowSpoSysAINBD")
Cdref("HydPowSpoSysBOUTBD",         "FJS/727Hyd/HydPowSpoSysBOUTBD")
Cdref("HydPowElvSysA",              "FJS/727Hyd/HydPowElvSysA")
Cdref("HydPowElvSysB",              "FJS/727Hyd/HydPowElvSysB")
Cdref("HydPowRudSysA",              "FJS/727Hyd/HydPowRudSysA")
Cdref("HydPowRudSysA2",             "FJS/727Hyd/HydPowRudSysA2")
Cdref("HydPowRudSysB",              "FJS/727Hyd/HydPowRudSysB")

--HydPowerLites
Cdref("AnunAilSysA",                 "FJS/727/lights/AnunAilSysA")
Cdref("AnunAilSysB",                 "FJS/727/lights/AnunAilSysB")
Cdref("AnunRudSysA",                 "FJS/727/lights/AnunRudSysA")
Cdref("AnunRudSysB",                 "FJS/727/lights/AnunRudSysB")
Cdref("AnunElvSysA",                 "FJS/727/lights/AnunElvSysA")
Cdref("AnunElvSysB",                 "FJS/727/lights/AnunElvSysB")

--Needles
Cdref("HydSysAPressNeedle",         "FJS/727/Hyd/HydSysAPressNeedle")
Cdref("HydSysBPressNeedle",         "FJS/727/Hyd/HydSysBPressNeedle")
Cdref("HydSysAQuanityNeedle",       "FJS/727/Hyd/HydSysAQuanityNeedle")
Cdref("HydSysBQuanityNeedle",       "FJS/727/Hyd/HydSysBQuanityNeedle")
Cdref("HydSysstbyQuanityNeedle",    "FJS/727/Hyd/HydSysStbyQuanityNeedle")
local A_pressNeedle = 0
local B_pressNeedle = 0
local SysAQuanityNeedle = math.random(30,43)/10
local SysBQuanityNeedle = math.random(10,20)/10
local SysStbyQuanityNeedle = math.random(4,10)/10


--Lights
Cdref("HydEng1PumpLite",            "FJS/727/Hyd/HydEng1PumpLite")
Cdref("HydEng2PumpLite",            "FJS/727/Hyd/HydEng2PumpLite")
Cdref("HydSysAOverheat",            "FJS/727/Hyd/HydSysAOverheat")
Cdref("HydSysBOverheat",            "FJS/727/Hyd/HydSysBOverheat")
Cdref("HydElecPump1Lite",           "FJS/727/Hyd/HydElecPump1Lite")
Cdref("HydElecPump2Lite",           "FJS/727/Hyd/HydElecPump2Lite")
Cdref("HydStbySysOverheatLite",     "FJS/727/Hyd/HydStbySysOverheatLite")
Cdref("HydSTbySysOnLite",           "FJS/727/Hyd/HydSTbySysOnLite")
Cdref("HydBrakeInterLite",          "FJS/727/Hyd/HydBrakeInterLite")
local HE1Plite = 0
local HE2Plite = 0
local HsysAoverheatlite = 0
local HsysBoverheatlite = 0
local HElecpumplite1 = 0
local HElecpumplite2 = 0
local HstbyOverheatlite = 0
local HstbyOnlite = 0


--The following datarefs are for ocntrols surfaces.

dref_f("pitch_ratio",                "sim/flightmodel2/controls/pitch_ratio")
dref_f("roll_ratio",                 "sim/flightmodel2/controls/roll_ratio")
dref_f("heading_ratio",              "sim/flightmodel2/controls/heading_ratio")
dref_f("speedbrake_ratio",           "sim/flightmodel2/controls/speedbrake_ratio")
dref_f("flap_handle_deploy_ratio",   "sim/flightmodel2/controls/flap_handle_deploy_ratio")

dref_f("OUTBDAileronLeft",           "sim/flightmodel2/wing/aileron2_deg[4]")
Cdref("OUTBDAileronLefttab",         "FJS/727/Hyd/OUTBDAileronLefttab")
dref_f("OUTBDAileronRight",          "sim/flightmodel2/wing/aileron2_deg[5]")
Cdref("OUTBDAileronRighttab",        "FJS/727/Hyd/OUTBDAileronRighttab")

dref_f("INBDAileronLeft",            "sim/flightmodel2/wing/aileron1_deg[2]")
Cdref("INBDAileronLefttab",          "FJS/727/Hyd/INBDAileronLefttab")
dref_f("INBDAileronRight",           "sim/flightmodel2/wing/aileron1_deg[3]")
Cdref("INBDAileronRighttab",         "FJS/727/Hyd/INBDAileronRighttab")

dref_f("INBDFlapsLeft",              "sim/flightmodel2/wing/flap1_deg[0]")
dref_f("INBDFlapsRight",             "sim/flightmodel2/wing/flap1_deg[1]")
dref_f("OUTBDFlapsLeft",             "sim/flightmodel2/wing/flap2_deg[2]")
dref_f("OUTBDFlapsRight",            "sim/flightmodel2/wing/flap2_deg[3]")

dref_f("Slatset1Ratio",              "sim/flightmodel2/controls/slat1_deploy_ratio")
dref_f("Slatset2Ratio",              "sim/flightmodel2/controls/slat2_deploy_ratio")

dref_f("spoilersINBD_L",             "sim/flightmodel2/wing/spoiler1_deg[0]")
dref_f("spoilersINBD_R",             "sim/flightmodel2/wing/spoiler1_deg[1]")
dref_f("spoilersOUTBD_L",            "sim/flightmodel2/wing/spoiler1_deg[2]")
dref_f("spoilersOUTBD_R",            "sim/flightmodel2/wing/spoiler1_deg[3]")
dref_f("GndSpoiler_L",               "sim/flightmodel2/wing/spoiler2_deg[0]")
dref_f("GndSpoiler_R",               "sim/flightmodel2/wing/spoiler2_deg[1]")
local spoilersINBD_L_set = 0
local spoilersINBD_R_set = 0
local spoilersOUTBD_L_set = 0
local spoilersOUTBD_R_set = 0
local GndSpoiler_L_set = 0
local GndSpoiler_R_set = 0

dref_f("ElevLeft",                   "sim/flightmodel2/wing/elevator1_deg[8]")
dref_f("ElevRight",                  "sim/flightmodel2/wing/elevator1_deg[9]")
dref_f("slats1Ratio",                "sim/flightmodel2/controls/slat1_deploy_ratio")
dref_f("slats2Ratio",                "sim/flightmodel2/controls/slat2_deploy_ratio")
dref_f("rudderUpper",                "sim/flightmodel2/wing/rudder2_deg[11]")
dref_f("rudderLower",                "sim/flightmodel2/wing/rudder1_deg[10]")

--Brake Datsrefs
Cdref("ParkingBrakeLever",           "FJS/727/Hyd/ParkingBrakeLever")
Cdref("ParkingBrakeLite",            "FJS/727/Hyd/ParkingBrakeLite")
Cdref("PneumaticHandleMo",           "FJS/727/Hyd/PneumaticHandleMo")
Cdref("PneumaticHandleSet",          "FJS/727/Hyd/PneumaticHandleSet")

dref_f("parkBrakeRatio",             "sim/cockpit2/controls/parking_brake_ratio")
dref_f("BrakeRatio_Left",            "sim/cockpit2/controls/left_brake_ratio")
dref_f("BrakeRatio_Right",           "sim/cockpit2/controls/right_brake_ratio")
dref_f("BrakeCoef",                  "sim/aircraft/overflow/acf_brake_co")
dref_f("NoseSteerDegSet",            "sim/aircraft/gear/acf_nw_steerdeg1")
Cdref("PneumaticHandle",             "FJS/727/Hyd/PneumaticHandle")
local PneumReset = 0

Cdref("PneumaticPressureNeedle",     "FJS/727/Hyd/PneumaticPressureNeedle")
Cdref("HydBrakePressureNeedle",      "FJS/727/Hyd/HydBrakePressureNeedle")
local HydBrakePress = 1000
local PneumaticBrakePress = 1250
dref_f("groundspeed",                "sim/flightmodel/position/groundspeed")

Cdref("GearHandlePosition",          "FJS/727/Hyd/GearHandlePosition")
Cdref("GearHandleMo",                "FJS/727/Hyd/GearHandleMo")

Cdref("AnunGearLeftRed",             "FJS/727/Hyd/AnunGearLeftRed")
Cdref("AnunGearLeftGrn",             "FJS/727/Hyd/AnunGearLeftGrn")
Cdref("AnunGearRightRed",            "FJS/727/Hyd/AnunGearRightRed")
Cdref("AnunGearRightGrn",            "FJS/727/Hyd/AnunGearRightGrn")
Cdref("AnunGearNoseRed",             "FJS/727/Hyd/AnunGearNoseRed")
Cdref("AnunGearNoseGrn",             "FJS/727/Hyd/AnunGearNoseGrn")
Cdref("AnunGearDOORS",               "FJS/727/Hyd/AnunGearDOORS")
dref_f("GearDeployRatio1",           "sim/flightmodel2/gear/deploy_ratio[0]")
dref_f("GearDeployRatio2",           "sim/flightmodel2/gear/deploy_ratio[1]")
dref_f("GearDeployRatio3",           "sim/flightmodel2/gear/deploy_ratio[2]")
dref_f("GearDeployRatio4",           "sim/flightmodel2/gear/deploy_ratio[3]")
dref_i("gearHandleDown",             "sim/cockpit2/controls/gear_handle_down")
dref_f("skidvertForce",              "sim/flightmodel2/gear/tire_vertical_deflection_mtr[3]")
dref_i("skidRetractFail",            "sim/operation/failures/rel_lagear4")

--yaw
Cdref("UpperYawSwitch",              "FJS/727/Hyd/UpperYawSwitch")
Cdref("LowerYawSwitch",              "FJS/727/Hyd/LowerYawSwitch")
dref_i("yaw_damper_on",              "sim/cockpit2/switches/yaw_damper_on")
Cdref("YawDamUppFlag",               "FJS/727/Hyd/YawDamUppFlag")
Cdref("YawDamDnnFlag",               "FJS/727/Hyd/YawDamDnnFlag")

GearHandleTuggle = CCom("FJS/727/Hyd/Com/GearHandleTuggle")

function GearHandleTuggle_OnStart(phase)
    if 0 == phase then
        if get(GearHandlePosition) == 0 then
            commandOnce(findCommand("sim/flight_controls/landing_gear_toggle"))
        elseif get(GearHandlePosition) == 2 then
            set(GearHandlePosition, 1)
        else
            commandOnce(findCommand("sim/flight_controls/landing_gear_toggle"))
        end
    end 
    return 1
end
regCom(GearHandleTuggle, GearHandleTuggle_OnStart)

function YawDamper()
    if get(UpperYawSwitch) == 1 or get(LowerYawSwitch) == 1 then
        set(yaw_damper_on, 1)
    else
        set(yaw_damper_on, 0)
    end
    
    set(YawDamUppFlag, get(pow)*get(UpperYawSwitch))
    set(YawDamDnnFlag, get(pow)*get(LowerYawSwitch))
end

function GearHandleSystem()
    if get(gearHandleDown) == 1 and get(GearHandlePosition) > 0 then
        set(GearHandlePosition, 0)
    end
    if get(gearHandleDown) == 0 and get(GearHandlePosition) == 0 then
        set(GearHandlePosition, 2)
    end
    set(GearHandleMo, get(GearHandleMo)+((get(GearHandlePosition) - get(GearHandleMo))*RR*5))
end

function HydraulicPumps()

    -- Controls the hydraulic pump switches and how they turn on or off the hydraulic system.
    if get(HydSysAEng1Switch) == 1 or get(HydSysAEng2Switch) == 1 then
        if get(HydSysAEng1ShutoffSwitch) == 0 or get(HydSysAEng2ShutoffSwitch) == 0 then
            set(simhydQuanity1, 0.85)
        else
            set(simhydQuanity1, 0) 
        end
    else
        set(simhydQuanity1, 0)
    end
    if get(HydSysBpum1Switch) == 1  or get(HydSysBpum2Switch) == 1 then
        set(simElecHydPumpOn, 1)
    else
        set(simElecHydPumpOn, 0)
    end
    
    --now to set our lights
    if get(HydSysAEng1Switch) == 1 and get(dref_N21) > 40  and get(HydSysAEng1ShutoffSwitch) == 0 then
        if get(simHydPressure1) > 2000 then
            HE1Plite = 0
        end
    else
        HE1Plite = 1
    end
    if get(HydSysAEng2Switch) == 1 and get(dref_N22) > 40 and get(HydSysAEng2ShutoffSwitch) == 0 then
        if get(simHydPressure1) > 2000 then
            HE2Plite = 0
        end
    else
        HE2Plite = 1
    end
    
    if get(HydSysBpum1Switch) == 1 then
        if get(simHydPressure2) > 2000 then
            HElecpumplite1 = 0
        end
    else
        HElecpumplite1 = 1
    end
    if get(HydSysBpum2Switch) == 1 then
        if get(simHydPressure2) > 2000 then
            HElecpumplite2 = 0
        end
    else
        HElecpumplite2 = 1
    end
    
    
end

function HydraulicNeedles()
    
    if get(GrdInterSwitch) == 1 and get(simHydPressure1) < get(simHydPressure2) and get(APUrunning) == 1 then
        A_pressNeedle = get(simHydPressure2)
    else
        A_pressNeedle = get(simHydPressure1)
    end
    
    
    B_pressNeedle = get(simHydPressure2)
    

end

local AileronUp = 0
local slatsDeploy1 = 0
local slatsDeploy2 = 0


function SurfaceMovements()

    -- set the clamp for ailerons if hyd is disconneced form the overhead.
    local ailerClamp
    if get(HydPowAilSysA) == 1 and get(simHydPressure2) < 1000 then
        ailerClamp = 1
    elseif get(HydPowAilSysB) == 1 and A_pressNeedle < 1000 then
        ailerClamp = 1
    elseif get(HydPowAilSysB) == 1 and get(HydPowAilSysA) == 1 then
        ailerClamp = 1
    else
        ailerClamp = 0
    end
    local ElevClamp
    if get(HydPowElvSysA) == 1 and get(simHydPressure2) < 1000 then
        ElevClamp = 1
    elseif get(HydPowElvSysB) == 1 and A_pressNeedle < 1000 then
        ElevClamp = 1
    elseif get(HydPowElvSysB) == 1 and get(HydPowElvSysA) == 1 then
        ElevClamp = 1
    else
        ElevClamp = 0
    end
    
    
    --this bit of code is for the outer ailerons, as they change mas def based on flap position
    local maxDef = 22 
    local flapDef = get(flap_handle_deploy_ratio)
    local aleRatio1 = myLerp(0,0,0.333333,0.8,flapDef) --low flap deflection
    local aleRatio2 = myLerp(0.333333,0.8,1.0,1.0,flapDef) --hi flap deflection
    if flapDef == 0 then
        AileronUp = 0
    elseif flapDef > 0 and flapDef < 0.333333  then
        AileronUp = (maxDef * aleRatio1)      
    elseif flapDef >= 0.333333  then
        AileronUp = (maxDef * aleRatio2)  
    end
    
    
    
    

    set(INBDAileronLeft, surfMove(get(roll_ratio),22,-22, ailerClamp))
    set(INBDAileronRight, surfMove(get(roll_ratio),-22,22, ailerClamp))
    set(OUTBDAileronLeft, surfMove(get(roll_ratio), AileronUp,-AileronUp, ailerClamp))
    set(OUTBDAileronRight, surfMove(get(roll_ratio), -AileronUp,AileronUp, ailerClamp))
    set(ElevLeft, surfMove(get(pitch_ratio), -25,25, ElevClamp))
    set(ElevRight, surfMove(get(pitch_ratio), -25,25, ElevClamp))
    
    if get(HydPowRudSysB) == 1 then
        set(rudderUpper, myLerp( -1,0,1,0,get(heading_ratio))*(get(simHydPressure2)/3000 ) )
    else
        set(rudderUpper, myLerp( -1,-33,1,33,get(heading_ratio))*(get(simHydPressure2)/3000 ) )
    end
    if get(HydPowRudSysA) == 1 then
        set(rudderLower, myLerp( -1,0,1,0,get(heading_ratio))*(A_pressNeedle/3000 ) )
    else
        set(rudderLower, myLerp( -1,-33,1,33,get(heading_ratio))*(A_pressNeedle/3000 ) )
    end
    
    
    local flapRatio = get(flap_handle_deploy_ratio)
    local flapDegree
    --flap ratio to degree changer
    if flapRatio == 0 then
        flapDegree = 0
        slatsDeploy1 = 0
        slatsDeploy2 = 0
    elseif flapRatio > 0 and flapRatio <= 0.143 then
        flapDegree = myLerp(0,0,0.142,2,flapRatio)
        slatsDeploy1 = 0
        slatsDeploy2 = myLerp(0,0,0.142,1,flapRatio)
    elseif flapRatio > 0.142 and flapRatio <= 0.286 then
        flapDegree = myLerp(0.142, 2, 0.286, 5, flapRatio)
        slatsDeploy1 = myLerp(0.142,0.0,0.286,1,flapRatio)
        slatsDeploy2 = 1
    elseif flapRatio > 0.286 and flapRatio <= 0.429 then
        flapDegree = myLerp(0.286, 5, 0.429, 15, flapRatio)
        slatsDeploy1 = 1
        slatsDeploy2 = 1
    elseif flapRatio > 0.429 and flapRatio <= 0.571 then
        flapDegree = myLerp(0.429, 15, 0.571, 20, flapRatio)
        slatsDeploy1 = 1
        slatsDeploy2 = 1
    elseif flapRatio > 0.571 and flapRatio <= 0.714 then
        flapDegree = myLerp(0.571, 20, 0.714, 25, flapRatio)
        slatsDeploy1 = 1
        slatsDeploy2 = 1
    elseif flapRatio > 0.714 and flapRatio <= 0.857 then
        flapDegree = myLerp(0.714, 25, 0.857, 30, flapRatio)
        slatsDeploy1 = 1
        slatsDeploy2 = 1
    elseif flapRatio > 0.857 and flapRatio <= 1 then
        flapDegree = myLerp(0.857, 30, 1, 40, flapRatio)
        slatsDeploy1 = 1
        slatsDeploy2 = 1
    end
    
    local SpBrkRatioActual = get(speedbrake_ratio)
    if SpBrkRatioActual > 1 then
        SpBrkRatioActual = 1
    end
    
    spoilersINBD_L_set = SpBrkRatioActual-(get(roll_ratio)/2)
    spoilersINBD_R_set = SpBrkRatioActual+(get(roll_ratio)/2)
    spoilersOUTBD_L_set = SpBrkRatioActual-(get(roll_ratio)/2)
    spoilersOUTBD_R_set = SpBrkRatioActual+(get(roll_ratio)/2)
    
    if get(dref_tireDef2) ~= 0 or get(dref_tireDef3) ~= 0 then
        GndSpoiler_L_set = SpBrkRatioActual
        GndSpoiler_R_set = SpBrkRatioActual
    else
        GndSpoiler_L_set = 0
        GndSpoiler_R_set = 0
    end
    
    if spoilersINBD_L_set > 1 then
        spoilersINBD_L_set = 1
    end
    if spoilersINBD_R_set > 1 then
        spoilersINBD_R_set = 1
    end
    if spoilersOUTBD_L_set > 1 then
        spoilersOUTBD_L_set = 1
    end
    if spoilersOUTBD_R_set > 1 then
        spoilersOUTBD_R_set = 1
    end
    if spoilersINBD_L_set < 0 then
        spoilersINBD_L_set = 0
    end
    if spoilersINBD_R_set < 0 then
        spoilersINBD_R_set = 0
    end
    if spoilersOUTBD_L_set < 0 then
        spoilersOUTBD_L_set = 0
    end
    if spoilersOUTBD_R_set < 0 then
        spoilersOUTBD_R_set = 0
    end
    
    local MaxDeflection = myLerp(250,45,300,30,get(dref_IAS))
    if MaxDeflection < 30 then
        MaxDeflection = 30
    end
    if MaxDeflection > 45 then
        MaxDeflection = 45
    end
    
    set(INBDFlapsLeft, flapDegree)
    set(INBDFlapsRight, flapDegree)
    set(OUTBDFlapsLeft, flapDegree)
    set(OUTBDFlapsRight, flapDegree)
    
    
    set(slats1Ratio, slatsDeploy1)
    set(slats2Ratio, slatsDeploy2)
    
    if get(HydPowSpoSysAINBD) == 1 then
        set(spoilersINBD_L, myLerp(0,0,1,0,spoilersINBD_L_set)*(get(simHydPressure2)/3000))
        set(spoilersINBD_R, myLerp(0,0,1,0,spoilersINBD_R_set)*(get(simHydPressure2)/3000)) 
        set(GndSpoiler_L, myLerp(0,0,1,0,GndSpoiler_L_set)*(get(simHydPressure2)/3000))
        set(GndSpoiler_R, myLerp(0,0,1,0,GndSpoiler_R_set)*(get(simHydPressure2)/3000))
    else
        set(spoilersINBD_L, myLerp(0,0,1,MaxDeflection,spoilersINBD_L_set)*(get(simHydPressure2)/3000))
        set(spoilersINBD_R, myLerp(0,0,1,MaxDeflection,spoilersINBD_R_set)*(get(simHydPressure2)/3000)) 
        set(GndSpoiler_L, myLerp(0,0,1,MaxDeflection,GndSpoiler_L_set)*(get(simHydPressure2)/3000))
        set(GndSpoiler_R, myLerp(0,0,1,MaxDeflection,GndSpoiler_R_set)*(get(simHydPressure2)/3000))
    end
    if get(HydPowSpoSysBOUTBD) == 1 then
        set(spoilersOUTBD_L, myLerp(0,0,1,0,spoilersOUTBD_L_set)*(A_pressNeedle/3000))
        set(spoilersOUTBD_R, myLerp(0,0,1,0,spoilersOUTBD_R_set)*(A_pressNeedle/3000))
    else
        set(spoilersOUTBD_L, myLerp(0,0,1,MaxDeflection,spoilersOUTBD_L_set)*(A_pressNeedle/3000))
        set(spoilersOUTBD_R, myLerp(0,0,1,MaxDeflection,spoilersOUTBD_R_set)*(A_pressNeedle/3000))
    end
    
    --now for the annunlites
    if A_pressNeedle > 500 then
        set(AnunAilSysA, get(AnunAilSysA)+((get(HydPowAilSysA)*get(pow) - get(AnunAilSysA))*RR*20))
        set(AnunRudSysA, get(AnunRudSysA)+((get(HydPowRudSysA)*get(pow) - get(AnunRudSysA))*RR*20))
        set(AnunElvSysA, get(AnunElvSysA)+((get(HydPowElvSysA)*get(pow) - get(AnunElvSysA))*RR*20))
    else
        set(AnunAilSysA, get(AnunAilSysA)+((1*get(pow) - get(AnunAilSysA))*RR*20))
        set(AnunRudSysA, get(AnunRudSysA)+((1*get(pow) - get(AnunRudSysA))*RR*20))
        set(AnunElvSysA, get(AnunElvSysA)+((1*get(pow) - get(AnunElvSysA))*RR*20))
    end
    if B_pressNeedle > 500 then
        set(AnunAilSysB, get(AnunAilSysB)+((get(HydPowAilSysB)*get(pow) - get(AnunAilSysB))*RR*20))
        set(AnunRudSysB, get(AnunRudSysB)+((get(HydPowRudSysB)*get(pow) - get(AnunRudSysB))*RR*20))
        set(AnunElvSysB, get(AnunElvSysB)+((get(HydPowElvSysB)*get(pow) - get(AnunElvSysB))*RR*20))
    else
        set(AnunAilSysB, get(AnunAilSysB)+((1*get(pow) - get(AnunAilSysB))*RR*20))
        set(AnunRudSysB, get(AnunRudSysB)+((1*get(pow) - get(AnunRudSysB))*RR*20))
        set(AnunElvSysB, get(AnunElvSysB)+((1*get(pow) - get(AnunElvSysB))*RR*20))
    end
    
    

end


function BrakingSystem()
    local brakesystemPress = nil
    
    
    if get(HydBrakeInterSwitch) == 0 then
        brakesystemPress = B_pressNeedle
        if brakesystemPress > 1 then
            HydBrakePress = myLerp(0,1000,3000,3000,brakesystemPress)
            pump = 5
        else
            HydBrakePress = pump*200
        end
    else
        if B_pressNeedle > A_pressNeedle then
            brakesystemPress = B_pressNeedle
        else
            brakesystemPress = A_pressNeedle
        end
        if brakesystemPress > 1 then
            HydBrakePress = myLerp(0,1000,3000,3000,brakesystemPress)
            pump = 5
        else
            HydBrakePress = pump*200
        end
    end
    
    if get(parkBrakeRatio) > 0 and pumpStop == 0 and get(simHydPressure2) < 1 then
        pump = (pump-1)
        pumpStop = 1
    end
    if get(parkBrakeRatio) == 0 and pumpStop == 1 then
        pumpStop = 0
    end
    if pump < 0 then
        pump = 0
    end
    local myBrakeCoef = myLerp(0,0.75,3,0.26,get(groundspeed))
    if get(groundspeed) < 3 then
        if HydBrakePress > 1100 then
            set(BrakeCoef, myLerp(0,0.75,3,0.26,get(groundspeed)))
        else
            set(BrakeCoef, myLerp(0,0,1100,myBrakeCoef,HydBrakePress))
        end
    end
    if get(groundspeed) > 3 then
        if HydBrakePress > 1100 then
            set(BrakeCoef, 0.26)
        else
            set(BrakeCoef, myLerp(0,0,1100,0.26,HydBrakePress))
        end
    end
    if get(parkBrakeRatio) == 1 then
        set(ParkingBrakeLever, get(ParkingBrakeLever)+((1 - get(ParkingBrakeLever))*RR*10))
        set(ParkingBrakeLite, get(ParkingBrakeLite)+((1*get(pow) - get(ParkingBrakeLite))*RR*25))
    else
        set(ParkingBrakeLever, get(ParkingBrakeLever)+((0 - get(ParkingBrakeLever))*RR*10))
        set(ParkingBrakeLite, get(ParkingBrakeLite)+((0 - get(ParkingBrakeLite))*RR*25))
    end
    if get(PneumaticHandle) > 0 then
        PneumReset = 1
        set(BrakeRatio_Left, get(PneumaticHandle))
        set(BrakeRatio_Right, get(PneumaticHandle))
    elseif get(PneumaticHandle) == 0 and PneumReset == 1 then
        set(BrakeRatio_Left, 0)
        set(BrakeRatio_Right, 0)
        PneumReset = 0
    end
    set(ParkingBrakeLever, get(ParkingBrakeLever)+((0 - get(ParkingBrakeLever))*RR*10))
    set(HydBrakeInterLite, get(HydBrakeInterLite)+((get(HydBrakeInterSwitch)*get(pow) - get(HydBrakeInterLite))*RR*20))
end

function NoseWheelSystem()
    set(NoseSteerDegSet, myLerp(0,0,3000,78,A_pressNeedle))

end

function GearWarningLights()
    if get(skidvertForce) > 0 then
        set(skidRetractFail, 6)
    end
    if (get(GearDeployRatio1) ~= 0 and get(GearDeployRatio1) ~= 1) or (get(GearDeployRatio2) ~= 0 and get(GearDeployRatio2) ~= 1) or (get(GearDeployRatio3) ~= 0 and get(GearDeployRatio3) ~= 1) or (get(GearDeployRatio4) ~= 0 and get(GearDeployRatio4) ~= 1) then
        
        set(AnunGearDOORS, get(AnunGearDOORS)+((1*get(pow) - get(AnunGearDOORS))*RR*20))
    elseif get(skidRetractFail) == 6 then
        set(AnunGearDOORS, get(AnunGearDOORS)+((1*get(pow) - get(AnunGearDOORS))*RR*20))
    else
        set(AnunGearDOORS, get(AnunGearDOORS)+((0*get(pow) - get(AnunGearDOORS))*RR*20))
    end
    
    
    if get(GearDeployRatio1) > .01 and get(GearDeployRatio1) < .99 then
        set(AnunGearNoseRed, get(AnunGearNoseRed)+((1*get(pow) - get(AnunGearNoseRed))*RR*20))
    else
        set(AnunGearNoseRed, get(AnunGearNoseRed)+((0*get(pow) - get(AnunGearNoseRed))*RR*20))
    end
    if get(GearDeployRatio2) > .01 and get(GearDeployRatio2) < .99 then
        set(AnunGearLeftRed, get(AnunGearLeftRed)+((1*get(pow) - get(AnunGearLeftRed))*RR*20))
    else
        set(AnunGearLeftRed, get(AnunGearLeftRed)+((0*get(pow) - get(AnunGearLeftRed))*RR*20))
    end
    if get(GearDeployRatio3) > .01 and get(GearDeployRatio3) < .99 then
        set(AnunGearRightRed, get(AnunGearRightRed)+((1*get(pow) - get(AnunGearRightRed))*RR*20))
    else
        set(AnunGearRightRed, get(AnunGearRightRed)+((0*get(pow) - get(AnunGearRightRed))*RR*20))
    end
    
    if get(GearDeployRatio1) == 1 then
        set(AnunGearNoseGrn, get(AnunGearNoseGrn)+((1*get(pow) - get(AnunGearNoseGrn))*RR*20))
    else
        set(AnunGearNoseGrn, get(AnunGearNoseGrn)+((0*get(pow) - get(AnunGearNoseGrn))*RR*20))
    end
    if get(GearDeployRatio2) == 1 then
        set(AnunGearLeftGrn, get(AnunGearLeftGrn)+((1*get(pow) - get(AnunGearLeftGrn))*RR*20))
    else
        set(AnunGearLeftGrn, get(AnunGearLeftGrn)+((0*get(pow) - get(AnunGearLeftGrn))*RR*20))
    end
    if get(GearDeployRatio3) == 1 then
        set(AnunGearRightGrn, get(AnunGearRightGrn)+((1*get(pow) - get(AnunGearRightGrn))*RR*20))
    else
        set(AnunGearRightGrn, get(AnunGearRightGrn)+((0*get(pow) - get(AnunGearRightGrn))*RR*20))
    end

end

function update()
    RR = get(frameRate)
    HydraulicNeedles()
    HydraulicPumps()
    SurfaceMovements()
    BrakingSystem()
    NoseWheelSystem()
    GearWarningLights()
    GearHandleSystem()
    YawDamper()
    
    --Setup defaults based on sim condition
    if get(BatterOn) == 1 and get(flighttime) < 5 then
        set(override_control_surfaces, 1)
        set(HydSysAEng1Switch,1)
        set(HydSysAEng2Switch,1)
        set(HydSysBpum1Switch,1)
        set(HydSysBpum2Switch,1)
        set(UpperYawSwitch,1)
        set(LowerYawSwitch,1)
    end
    if get(BatterOn) == 0 and get(flighttime) < 5 then
        set(override_control_surfaces, 1)
        set(HydSysAEng1Switch,0)
        set(HydSysAEng2Switch,0)
        set(HydSysBpum1Switch,0)
        set(HydSysBpum2Switch,0)
        set(UpperYawSwitch,1)
        set(LowerYawSwitch,1)
    end
    

    --send values to in sim needles
    set(HydSysAPressNeedle, get(HydSysAPressNeedle)+((A_pressNeedle*get(pow) - get(HydSysAPressNeedle))*RR*0.5))
    set(HydSysBPressNeedle, get(HydSysBPressNeedle)+((B_pressNeedle*get(pow) - get(HydSysBPressNeedle))*RR*0.5))
    set(HydSysAQuanityNeedle, get(HydSysAQuanityNeedle)+((SysAQuanityNeedle*get(pow) - get(HydSysAQuanityNeedle))*RR*6))
    set(HydSysBQuanityNeedle, get(HydSysBQuanityNeedle)+((SysBQuanityNeedle*get(pow) - get(HydSysBQuanityNeedle))*RR*6))
    set(HydSysstbyQuanityNeedle, get(HydSysstbyQuanityNeedle)+((SysStbyQuanityNeedle*get(pow) - get(HydSysstbyQuanityNeedle))*RR*6))
    set(HydBrakePressureNeedle, get(HydBrakePressureNeedle)+((HydBrakePress*get(pow) - get(HydBrakePressureNeedle))*RR*3))
    set(PneumaticPressureNeedle, get(PneumaticPressureNeedle)+((PneumaticBrakePress*get(pow) - get(PneumaticPressureNeedle))*RR*6))
    
    --set values for lights
    --set(HydEng1PumpLite, fade(get(HydEng1PumpLite),HE1Plite,1,25))
    set(HydEng1PumpLite, get(HydEng1PumpLite)+((HE1Plite*get(pow) - get(HydEng1PumpLite))*RR*25))
    set(HydEng2PumpLite, get(HydEng2PumpLite)+((HE2Plite*get(pow) - get(HydEng2PumpLite))*RR*25))
    set(HydSysAOverheat, get(HydSysAOverheat)+((HsysAoverheatlite*get(pow) - get(HydSysAOverheat))*RR*25))
    set(HydSysBOverheat, get(HydSysBOverheat)+((HsysBoverheatlite*get(pow) - get(HydSysBOverheat))*RR*25))
    set(HydElecPump1Lite, get(HydElecPump1Lite)+((HElecpumplite1*get(pow) - get(HydElecPump1Lite))*RR*25))
    set(HydElecPump2Lite, get(HydElecPump2Lite)+((HElecpumplite2*get(pow) - get(HydElecPump2Lite))*RR*25))
    set(HydStbySysOverheatLite, get(HydStbySysOverheatLite)+((HstbyOverheatlite*get(pow) - get(HydStbySysOverheatLite))*RR*25))
    set(HydSTbySysOnLite, get(HydSTbySysOnLite)+((HstbyOnlite*get(pow) - get(HydSTbySysOnLite))*RR*25))


end