
local RR = 0

Cdref("JustTookoff",             "FJS/727/autopilot/JustTookoff")
local tookOffTimer = 0

dref_i("autothrottleOn",         "sim/cockpit2/autopilot/autothrottle_enabled")
dref_f("altDialFeet",            "sim/cockpit2/autopilot/altitude_dial_ft")
Cdref("altDialHunThouSwitch",    "FJS/727/autopilot/altDialHunThouSwitch")
Cdref("AltDialKnob",             "FJS/727/autopilot/AltDialKnob")

Cdref("AltDialRollA",            "FJS/727/autopilot/AltDialRollA")
Cdref("AltDialRollB",            "FJS/727/autopilot/AltDialRollB")
Cdref("AltDialRollC",            "FJS/727/autopilot/AltDialRollC")

Cdref("PitchSelectKnob",         "FJS/727/autopilot/PitchSelectKnob")
Cdref("NavSelectKnob",           "FJS/727/autopilot/NavSelectKnob")
Cdref("FDModeSelector",          "FJS/727/autopilot/FDModeSelector")
dref_i("vertMode",               "sim/cockpit2/autopilot/altitude_mode")
dref_i("IASorMach",              "sim/cockpit2/autopilot/airspeed_is_mach")
dref_i("rollStatus",             "sim/cockpit2/autopilot/roll_status")
dref_i("navStatus",              "sim/cockpit2/autopilot/nav_status")
dref_i("appStatus",              "sim/cockpit2/autopilot/approach_status")
dref_i("hdgStatus",              "sim/cockpit2/autopilot/heading_status")
dref_i("GAStatus",               "sim/cockpit2/autopilot/TOGA_status")
dref_i("AltStatus",              "sim/cockpit2/autopilot/altitude_hold_status")
dref_i("GSStatus",               "sim/cockpit2/autopilot/glideslope_status")
dref_i("NavSource",              "sim/cockpit2/radios/actuators/HSI_source_select_pilot")
dref_i("NavSourceCo",              "sim/cockpit2/radios/actuators/HSI_source_select_copilot")
set(NavSource, 0)
set(NavSourceCo, 1)
dref_f("AirspeedSelect",         "sim/cockpit2/autopilot/airspeed_dial_kts_mach")
dref_i("bankAngleLimit",         "sim/cockpit2/autopilot/bank_angle_mode")
set(IASorMach, 0)
set(AirspeedSelect, 250) -- set airspeed but to 250 kts at startup.

Cdref("AnunGoAround",            "FJS/727/autopilot/AnunGoAround")
Cdref("AnunAltSelect",           "FJS/727/autopilot/AnunAltSelect")
Cdref("AnunAlt",                 "FJS/727/autopilot/AnunAlt")
Cdref("AnunHDG",                 "FJS/727/autopilot/AnunHDG")
Cdref("AnunVORLOC",              "FJS/727/autopilot/AnunVORLOC")
Cdref("AnunGlideSlope",          "FJS/727/autopilot/AnunGlideSlope")
Cdref("AnunGPS",                 "FJS/727/autopilot/AnunGPS")
Cdref("AnunFlare",               "FJS/727/autopilot/AnunFlare")
Cdref("DumbOne",                 "FJS/727/autopilot/DumbOne")
Cdref("FLARESTatus",             "FJS/727/autopilot/FLAREStatus")

Cdref("FlightDirPitch",          "FJS/727/autopilot/FlightDirPitch")
Cdref("FlightDirRoll",           "FJS/727/autopilot/FlightDirPitchRoll")
Cdref("FlightDirPitchCo",        "FJS/727/autopilot/FlightDirPitchCo")
Cdref("FlightDirRollCo",         "FJS/727/autopilot/FlightDirPitchRollCo")
dref_f("SimFDPitch",             "sim/cockpit2/autopilot/flight_director_pitch_deg")
dref_f("SimFDRoll",              "sim/cockpit2/autopilot/flight_director_roll_deg")
dref_f("PitchDegPilot",          "sim/cockpit2/gauges/indicators/pitch_electric_deg_pilot")
dref_f("PitchDegCoPilot",          "sim/cockpit2/gauges/indicators/pitch_electric_deg_copilot")
dref_i("flightDirectorOn",       "sim/cockpit2/autopilot/flight_director_mode")


createCommand("FJS/727/autopilot/AltDialDown",        "Dial altitude Feet Down")
createCommand("FJS/727/autopilot/AltDialUp",          "Dial altitude Feet Up")
createCommand("FJS/727/autopilot/PitchSelectLeft",    "Turns Pitch Selector Left")
createCommand("FJS/727/autopilot/PitchSelectRight",   "Turns Pitch Selector Left")
createCommand("FJS/727/autopilot/NavSelectLeft",      "Turns Nav Selector Left")
createCommand("FJS/727/autopilot/NavSelectRight",     "Turns Nav Selector Left")

altDialDown = findCommand("FJS/727/autopilot/AltDialDown")
altDialUp = findCommand("FJS/727/autopilot/AltDialUp")
PitchSelectL = findCommand("FJS/727/autopilot/PitchSelectLeft")
PitchSelectR = findCommand("FJS/727/autopilot/PitchSelectRight")
NavSelectL = findCommand("FJS/727/autopilot/NavSelectLeft")
NavSelectR = findCommand("FJS/727/autopilot/NavSelectRight")

HeadingModeEngage = CCom("FJS/727/autopilot/HeadingModeEngage")


function HeadingModeEngage_OnStart(phase)
    if 0 == phase then
        commandOnce(findCommand("sim/autopilot/heading"))
        if get(navStatus) > 0 and get(hdgStatus) == 2 then
            commandOnce(findCommand("sim/autopilot/NAV"))
        end
        --commandOnce(findCommand("sim/autopilot/wing_leveler"))
        if get(NavSource) == 2 and get(hdgStatus) == 2 then
            set(NavSource, 0)
        end
    end 
    return 1
end
regCom(HeadingModeEngage, HeadingModeEngage_OnStart)


function PitchSelectL_OnStart(phase)
    if 0 == phase then
        if get(PitchSelectKnob) == 1 then
            commandOnce(findCommand("sim/autopilot/pitch_sync"))
        elseif get(PitchSelectKnob) == 0 then
            commandOnce(findCommand("sim/autopilot/level_change"))
        elseif get(PitchSelectKnob) == -1 then
            set(IASorMach, 1)
            if get(dref_machno) > 0.5 then
                set(AirspeedSelect, get(dref_machno))
            else
                set(AirspeedSelect, 0.5)
            end
        end
    end 
    return 1
end
registerCommandHandler(PitchSelectL, 1, PitchSelectL_OnStart);

function PitchSelectR_OnStart(phase)
    if 0 == phase then
        if get(PitchSelectKnob) == -2 then
            set(IASorMach, 0)
            if get(dref_IAS) > 120 then
                set(AirspeedSelect, get(dref_IAS))
            else
                set(AirspeedSelect, 120)
            end
        elseif get(PitchSelectKnob) == -1 then
            commandOnce(findCommand("sim/autopilot/pitch_sync"))
        elseif get(PitchSelectKnob) == 0 then
            commandOnce(findCommand("sim/autopilot/vertical_speed"))
        end
    end 
    return 1
end
registerCommandHandler(PitchSelectR, 1, PitchSelectR_OnStart);

function NavSelectL_OnStart(phase)
    if 0 == phase then
        if get(NavSelectKnob) == 1 then
            commandOnce(findCommand("sim/autopilot/approach"))
            commandOnce(findCommand("sim/autopilot/wing_leveler"))
        elseif get(NavSelectKnob) == 0 then
            commandOnce(findCommand("sim/autopilot/NAV"))
        elseif get(NavSelectKnob) == -1 then
            set(NavSource, 2)
        end
    end 
    return 1
end
registerCommandHandler(NavSelectL, 1, NavSelectL_OnStart);

function NavSelectR_OnStart(phase)
    if 0 == phase then
        if get(NavSelectKnob) == -2 then
            set(NavSource, 0)
        elseif get(NavSelectKnob) == -1 then
            commandOnce(findCommand("sim/autopilot/NAV"))
            commandOnce(findCommand("sim/autopilot/wing_leveler"))
        elseif get(NavSelectKnob) == 0 then
            commandOnce(findCommand("sim/autopilot/approach"))
        end
    end 
    return 1
end
registerCommandHandler(NavSelectR, 1, NavSelectR_OnStart);

function altDialUp_OnStart(phase)
    if 0 == phase then
        if get(altDialHunThouSwitch) == 0 then
            if get(altDialFeet) < 39010 then
                set(altDialFeet, (math.floor(get(altDialFeet)/100)+10)*100)
            else
                set(altDialFeet, 40000)
            end
        else
            if get(altDialFeet) < 39910 then
                set(altDialFeet, (math.floor(get(altDialFeet)/100)+1)*100)
            else
                set(altDialFeet, 40000)
            end
        end
        set(AltDialKnob, get(AltDialKnob)+1)
    end 
    return 1
end
registerCommandHandler(altDialUp, 1, altDialUp_OnStart);

function altDialDown_OnStart(phase)
    if 0 == phase then
        if get(altDialHunThouSwitch) == 0 then
            if get(altDialFeet) > 990 then
                set(altDialFeet, (math.floor(get(altDialFeet)/100)-10)*100)
            else
                set(altDialFeet, 0)
            end
        else
            if get(altDialFeet) > 90 then
                set(altDialFeet, (math.floor(get(altDialFeet)/100)-1)*100)
            else
                set(altDialFeet, 0)
            end
        end
        set(AltDialKnob, get(AltDialKnob)-1)
    end 
    return 1
end
registerCommandHandler(altDialDown, 1, altDialDown_OnStart);

function FDModeKnob()
    if get(navStatus) == 0 and get(appStatus) == 0 and get(GAStatus) == 0 and get(hdgStatus) == 0 then
        set(FDModeSelector, 0)
    end
    if get(navStatus) == 0 and get(appStatus) == 0 and get(GAStatus) > 0 then
        set(FDModeSelector, 1)
    end
    if get(navStatus) == 0 and get(appStatus) == 0 and get(GAStatus) == 0 and get(hdgStatus) > 0 then
        set(FDModeSelector, 2)
    end
    if get(navStatus) > 0 and get(appStatus) == 0 and get(GAStatus) == 0  then
        set(FDModeSelector, 3)
    end
    if get(appStatus) > 0 and get(GAStatus) == 0  then
        set(FDModeSelector, 4)
    end
end

function NavKnob()
    if (get(rollStatus) > 0 or get(hdgStatus) == 2) and get(navStatus) == 0 and get(appStatus) == 0 and get(NavSource) == 0 then
        set(NavSelectKnob, 0)
    end
    if get(navStatus) > 0 and get(appStatus) == 0 and get(NavSource) == 0 then
        set(NavSelectKnob, -1)
    end
    if get(navStatus) > 0 and get(appStatus) == 0 and get(NavSource) == 2 then
        set(NavSelectKnob, -2)
    end
    if get(appStatus) > 0 then
        set(NavSelectKnob, 1)
    end
    --if get(hdgStatus) > 0 and get(appStatus) == 0 then
    --    set(NavSelectKnob, 0)
    --end
    
    if (get(hdgStatus) == 2 or get(appStatus) > 0) and get(navStatus) == 0 then
        set(NavSource, 0)
    end
    

end

function PitchKnob()

    if get(vertMode) == 3 then
        set(PitchSelectKnob, 0)
        set(IASorMach, 0)
        if get(AirspeedSelect) == 120 then
            set(AirspeedSelect, get(dref_IAS))
        end
    end
    if get(vertMode) == 6 then
        set(PitchSelectKnob, 0)
        set(IASorMach, 0)
        if get(AirspeedSelect) == 120 then
            set(AirspeedSelect, get(dref_IAS))
        end
    end
    if get(vertMode) == 4 then
        set(PitchSelectKnob, 1)
    end
    if get(vertMode) == 5 and get(IASorMach) == 0 then
        set(PitchSelectKnob, -1)
    end
    if get(vertMode) == 5 and get(IASorMach) == 1 then
        set(PitchSelectKnob, -2)
    end
    
end

function APAnunPanel()

    
    --if get(dref_RadAlt) < 50 then
    --        set(FLARESTatus, 2)
    --elseif get(dref_RadAlt) > 50 and get(dref_RadAlt) < 1500 then
    --        set(FLARESTatus, 1)
    --elseif get(dref_RadAlt) > 1500 then
    --    set(FLARESTatus, 0)
    --end
    
    --if get(GSStatus) == 2 and get(appStatus) == 2 then
    --    if get(dref_RadAlt) < 50 then
    --        set(FLARESTatus, 2)
    --    end
    --    if get(dref_RadAlt) > 50 and get(dref_RadAlt) < 1500 then
    --        set(FLARESTatus, 1)
    --    end
    --else
    --    set(FLARESTatus, 0)
    --end
    
    if get(dref_tireDef2) > 0 and get(flightDirectorOn) == 2 then
        set(flightDirectorOn, 1)
    end
    
    
    if get(dref_RadAlt) < 50 and get(flightDirectorOn) == 2 then
        set(FLARESTatus, 2)
    elseif get(appStatus) > 0 and get(GSStatus) == 2 and get(dref_RadAlt) < 1500 then
        set(FLARESTatus, 1)
    else
        set(FLARESTatus, 0)
    end
    if get(FLARESTatus) > 0 then
        set(AnunFlare, get(AnunFlare)+((1*get(pow) - get(AnunFlare))*RR*18))
    else
        set(AnunFlare, get(AnunFlare)+((0*get(pow) - get(AnunFlare))*RR*18))
    end
    
    if get(GAStatus) > 0 then
        set(AnunGoAround, get(AnunGoAround)+((1*get(pow) - get(AnunGoAround))*RR*18))
    else
        set(AnunGoAround, get(AnunGoAround)+((0*get(pow) - get(AnunGoAround))*RR*18))
    end
    if get(AltStatus) > 0 then
        set(AnunAltSelect, get(AnunAltSelect)+((1*get(pow) - get(AnunAltSelect))*RR*18))
    else
        set(AnunAltSelect, get(AnunAltSelect)+((0*get(pow) - get(AnunAltSelect))*RR*18))
    end
    if get(AltStatus) == 2 then
        set(AnunAlt, get(AnunAlt)+((1*get(pow) - get(AnunAlt))*RR*18))
    else
        set(AnunAlt, get(AnunAlt)+((0*get(pow) - get(AnunAlt))*RR*18))
    end
    if get(hdgStatus) > 0 then
        set(AnunHDG, get(AnunHDG)+((1*get(pow) - get(AnunHDG))*RR*18))
    else
        set(AnunHDG, get(AnunHDG)+((0*get(pow) - get(AnunHDG))*RR*18))
    end
    if get(navStatus) > 0 then
        set(AnunVORLOC, get(AnunVORLOC)+((1*get(pow) - get(AnunVORLOC))*RR*18))
    else
        set(AnunVORLOC, get(AnunVORLOC)+((0*get(pow) - get(AnunVORLOC))*RR*18))
    end
    if get(GSStatus) > 0 then
        set(AnunGlideSlope, get(AnunGlideSlope)+((1*get(pow) - get(AnunGlideSlope))*RR*18))
    else
        set(AnunGlideSlope, get(AnunGlideSlope)+((0*get(pow) - get(AnunGlideSlope))*RR*18))
    end
    if get(NavSource) == 2 then
        set(AnunGPS, get(AnunGPS)+((1*get(pow) - get(AnunGPS))*RR*18))
    else
        set(AnunGPS, get(AnunGPS)+((0*get(pow) - get(AnunGPS))*RR*18))
    end
    
end

function FlightDirector()

    if get(flightDirectorOn) == 0 then
        set(FlightDirPitch, get(FlightDirPitch)+((-60 - get(FlightDirPitch))*RR*18))
        set(FlightDirRoll, get(FlightDirRoll)+((0 - get(FlightDirRoll))*RR*18))
    elseif get(flightDirectorOn) > 0 then
        set(FlightDirPitch, get(FlightDirPitch)+((get(SimFDPitch)-get(PitchDegPilot) - get(FlightDirPitch))*RR*18))
        set(FlightDirRoll, get(FlightDirRoll)+((get(SimFDRoll)/5 - get(FlightDirRoll))*RR*18))
    end
    if get(flightDirectorOn) == 0 then
        set(FlightDirPitchCo, get(FlightDirPitchCo)+((-60 - get(FlightDirPitchCo))*RR*18))
        set(FlightDirRollCo, get(FlightDirRollCo)+((0 - get(FlightDirRollCo))*RR*18))
    elseif get(flightDirectorOn) > 0 then
        set(FlightDirPitchCo, get(FlightDirPitchCo)+((get(SimFDPitch)-get(PitchDegCoPilot) - get(FlightDirPitchCo))*RR*18))
        set(FlightDirRollCo, get(FlightDirRollCo)+((get(SimFDRoll)/5 - get(FlightDirRollCo))*RR*18))
    end
end


function update()

    RR = get(frameRate)
    PitchKnob()
    NavKnob()
    FDModeKnob()
    APAnunPanel()
    FlightDirector()
    
    -- This makes sure you cannot turn on autothrottle no mater what,
    -- the 727 dosnt have one.
    if get(autothrottleOn) == 1 then
        set(autothrottleOn, 0)
    end

    set(AltDialRollA, get(AltDialRollA)+((math.floor((get(altDialFeet)/10000)) - get(AltDialRollA))*RR*20))
    set(AltDialRollB, get(AltDialRollB)+((math.floor((get(altDialFeet)/1000)) - get(AltDialRollB))*RR*20))
    set(AltDialRollC, math.floor(get(altDialFeet)/100))
    
    if get(bankAngleLimit) ~= 5 then
        set(bankAngleLimit, 5)
    end
    
    -- this function sets JustTookoff to 1 when we just took off, else set to 0
    if get(dref_tireDef2) == 0 and tookOffTimer < 190 then
        tookOffTimer = tookOffTimer + 1/(1/RR)
        set(JustTookoff, 1)
    else
        set(JustTookoff, 0)
        tookOffTimer = 0
    end


end