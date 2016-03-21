
local RR = 0

dref_f("light_atin",               "sim/graphics/misc/light_attenuation")
local LightAdjust = 0


dref_f("InsBrightness2",           "sim/cockpit2/electrical/instrument_brightness_ratio_manual[2]")
dref_f("InsBrightness3",           "sim/cockpit2/electrical/instrument_brightness_ratio_manual[3]")
dref_f("InsBrightness4",           "sim/cockpit2/electrical/instrument_brightness_ratio_manual[4]")
dref_f("InsBrightness5",           "sim/cockpit2/electrical/instrument_brightness_ratio_manual[5]")
dref_f("InsBrightness6",           "sim/cockpit2/electrical/instrument_brightness_ratio_manual[6]")
dref_f("InsBrightness7",           "sim/cockpit2/electrical/instrument_brightness_ratio_manual[7]")
dref_f("InsBrightness8",           "sim/cockpit2/electrical/instrument_brightness_ratio_manual[8]")
dref_f("InsBrightness9",           "sim/cockpit2/electrical/instrument_brightness_ratio_manual[9]")
dref_f("InsBrightness10",          "sim/cockpit2/electrical/instrument_brightness_ratio_manual[10]")
dref_f("InsBrightness11",          "sim/cockpit2/electrical/instrument_brightness_ratio_manual[11]")
dref_f("InsBrightness12",          "sim/cockpit2/electrical/instrument_brightness_ratio_manual[12]")
dref_f("InsBrightness13",          "sim/cockpit2/electrical/instrument_brightness_ratio_manual[13]")
dref_f("InsBrightness14",          "sim/cockpit2/electrical/instrument_brightness_ratio_manual[14]")
dref_f("InsBrightness15",          "sim/cockpit2/electrical/instrument_brightness_ratio_manual[15]")

dref_f("DomeLiteWhite",            "sim/cockpit2/switches/instrument_brightness_ratio[13]")
dref_f("DomeLiteRed",              "sim/cockpit2/switches/instrument_brightness_ratio[9]")


Cdref("FwdCenter",                 "FJS/727/lights/FwdCenter")
Cdref("overhead",                  "FJS/727/lights/overhead")
Cdref("Storm",                     "FJS/727/lights/Storm")
Cdref("FwdBackground",             "FJS/727/lights/FwdBackground")
Cdref("FwdLeft",                   "FJS/727/lights/FwdLeft")
Cdref("FwdRight",                  "FJS/727/lights/FwdRight")
Cdref("Compass",                   "FJS/727/lights/Compass")
Cdref("MapLite",                   "FJS/727/lights/MapLite")
Cdref("RedStand",                  "FJS/727/lights/RedStand")
Cdref("RadioPanel",                "FJS/727/lights/RadioPanel")
Cdref("FEPanel",                   "FJS/727/lights/FEPanel")
Cdref("DomeWhite",                 "FJS/727/lights/DomeWhite")


Cdref("noLite",                    "FJS/727/lights/NoLite")

Cdref("LightOverride",             "FJS/727/lights/LightOverride")
Cdref("WhiteBright",               "FJS/727/lights/WhiteBright")

Cdref("TestLightsSwitch",          "FJS/727/lights/TestLightsSwitch")


Cdref("FECurcuitBrakeKnob",        "FJS/727/lights/FECurcuitBrakeKnob")
Cdref("FEPanelBackgroundKnob",     "FJS/727/lights/FEPanelBackgroundKnob")
Cdref("FETableKnob",               "FJS/727/lights/FETableKnob")
Cdref("FEFlourSwitch",             "FJS/727/lights/FEFlourSwitch")

Cdref("EmerLightSwitch",           "FJS/727/lights/EmerLightSwitch")
Cdref("EmerLite",                  "FJS/727/lights/EmerLite")

Cdref("OutBoundLLightSwitch1",       "FJS/727/num/OutBoundLLightSwitch1")
Cdref("OutBoundLLightSwitch2",       "FJS/727/num/OutBoundLLightSwitch2")
dref_i("SimLndLitSwitch1",           "sim/cockpit2/switches/landing_lights_switch[0]")
dref_i("SimLndLitSwitch2",           "sim/cockpit2/switches/landing_lights_switch[1]")
dref_i("SimLndLitSwitch3",           "sim/cockpit2/switches/landing_lights_switch[2]")
dref_i("SimLndLitSwitch4",           "sim/cockpit2/switches/landing_lights_switch[3]")
dref_i("SimLndLitSwitch5",           "sim/cockpit2/switches/landing_lights_switch[4]")
dref_i("SimLndLitSwitch6",           "sim/cockpit2/switches/landing_lights_switch[5]")
dref_i("SimLndLitSwitch7",           "sim/cockpit2/switches/landing_lights_switch[6]")
dref_i("SimLndLitSwitch8",           "sim/cockpit2/switches/landing_lights_switch[7]")
dref_f("SlatRatio",                  "sim/flightmodel2/controls/slat1_deploy_ratio")
local EmerLiteSet = 0

--annunciators
Cdref("LeadingEdge11green",          "FJS/727/lights/LeadingEdge11green")
Cdref("LeadingEdge12green",          "FJS/727/lights/LeadingEdge12green")
Cdref("LeadingEdge21green",          "FJS/727/lights/LeadingEdge21green")
Cdref("LeadingEdge22green",          "FJS/727/lights/LeadingEdge22green")
Cdref("LeadingEdge11Amber",          "FJS/727/lights/LeadingEdge11Amber")
Cdref("LeadingEdge12Amber",          "FJS/727/lights/LeadingEdge12Amber")
Cdref("LeadingEdge21Amber",          "FJS/727/lights/LeadingEdge21Amber")
Cdref("LeadingEdge22Amber",          "FJS/727/lights/LeadingEdge22Amber")

Cdref("AnAPUBleed",                  "FJS/727/lights/AnAPUBleed")
Cdref("AnAPUCrank",                  "FJS/727/lights/AnAPUCrank")
Cdref("AnPhaseUnbal",                "FJS/727/lights/AnPhaseUnbal")

Cdref("AnNoseGrDoor",                "FJS/727/lights/AnNoseGrDoor")
Cdref("AnLeftGrDoor",                "FJS/727/lights/LeftGrDoor")
Cdref("AnRightGrDoor",               "FJS/727/lights/RightGrDoor")

Cdref("AnTailSkid",                  "FJS/727/lights/AnTailSkid")
Cdref("AnAPU",                       "FJS/727/lights/AnAPU")



Cdref("AnunLEFlapAmber",             "FJS/727/lights/AnunLEFlapAmber")
Cdref("AnunLEFlapgreen",             "FJS/727/lights/AnunLEFlapgreen")


function LEFlapSlatAnunSys()

    if (get(slats1Ratio) ~= 0 and get(slats1Ratio) < 0.99) or (get(slats2Ratio) ~= 0 and get(slats2Ratio) < 0.99) then
        set(AnunLEFlapAmber, get(AnunLEFlapAmber)+((1*get(pow) - get(AnunLEFlapAmber))*RR*20))
        set(AnunLEFlapgreen, get(AnunLEFlapgreen)+((0*get(pow) - get(AnunLEFlapgreen))*RR*20))
    elseif get(slats1Ratio) > 0.99 or get(slats2Ratio) > 0.99 then
        set(AnunLEFlapgreen, get(AnunLEFlapgreen)+((1*get(pow) - get(AnunLEFlapgreen))*RR*20))
        set(AnunLEFlapAmber, get(AnunLEFlapAmber)+((0*get(pow) - get(AnunLEFlapAmber))*RR*20))
    else
        set(AnunLEFlapgreen, get(AnunLEFlapgreen)+((0*get(pow) - get(AnunLEFlapgreen))*RR*20))
        set(AnunLEFlapAmber, get(AnunLEFlapAmber)+((0*get(pow) - get(AnunLEFlapAmber))*RR*20))
    end
    
    if get(slats2Ratio) ~= 0 and get(slats2Ratio) < 0.99 then
        set(LeadingEdge12Amber, get(LeadingEdge12Amber)+((1*get(pow) - get(LeadingEdge12Amber))*RR*20))
        set(LeadingEdge22Amber, get(LeadingEdge22Amber)+((1*get(pow) - get(LeadingEdge22Amber))*RR*20))
        set(LeadingEdge12green, get(LeadingEdge12green)+((0*get(pow) - get(LeadingEdge12green))*RR*20))
        set(LeadingEdge22green, get(LeadingEdge22green)+((0*get(pow) - get(LeadingEdge22green))*RR*20))
    elseif get(slats2Ratio) > 0.99 then
        set(LeadingEdge12Amber, get(LeadingEdge12Amber)+((0*get(pow) - get(LeadingEdge12Amber))*RR*20))
        set(LeadingEdge22Amber, get(LeadingEdge22Amber)+((0*get(pow) - get(LeadingEdge22Amber))*RR*20))
        set(LeadingEdge12green, get(LeadingEdge12green)+((1*get(pow) - get(LeadingEdge12green))*RR*20))
        set(LeadingEdge22green, get(LeadingEdge22green)+((1*get(pow) - get(LeadingEdge22green))*RR*20))
    else
        set(LeadingEdge12Amber, get(LeadingEdge12Amber)+((0*get(pow) - get(LeadingEdge12Amber))*RR*20))
        set(LeadingEdge22Amber, get(LeadingEdge22Amber)+((0*get(pow) - get(LeadingEdge22Amber))*RR*20))
        set(LeadingEdge12green, get(LeadingEdge12green)+((0*get(pow) - get(LeadingEdge12green))*RR*20))
        set(LeadingEdge22green, get(LeadingEdge22green)+((0*get(pow) - get(LeadingEdge22green))*RR*20))
    end
    
    if get(slats1Ratio) ~= 0 and get(slats1Ratio) < 0.99 then
        set(LeadingEdge11Amber, get(LeadingEdge11Amber)+((1*get(pow) - get(LeadingEdge11Amber))*RR*20))
        set(LeadingEdge21Amber, get(LeadingEdge21Amber)+((1*get(pow) - get(LeadingEdge21Amber))*RR*20))
        set(LeadingEdge11green, get(LeadingEdge11green)+((0*get(pow) - get(LeadingEdge11green))*RR*20))
        set(LeadingEdge21green, get(LeadingEdge21green)+((0*get(pow) - get(LeadingEdge21green))*RR*20))
    elseif get(slats1Ratio) > 0.99 then
        set(LeadingEdge11Amber, get(LeadingEdge11Amber)+((0*get(pow) - get(LeadingEdge11Amber))*RR*20))
        set(LeadingEdge21Amber, get(LeadingEdge21Amber)+((0*get(pow) - get(LeadingEdge21Amber))*RR*20))
        set(LeadingEdge11green, get(LeadingEdge11green)+((1*get(pow) - get(LeadingEdge11green))*RR*20))
        set(LeadingEdge21green, get(LeadingEdge21green)+((1*get(pow) - get(LeadingEdge21green))*RR*20))
    else
        set(LeadingEdge11Amber, get(LeadingEdge11Amber)+((0*get(pow) - get(LeadingEdge11Amber))*RR*20))
        set(LeadingEdge21Amber, get(LeadingEdge21Amber)+((0*get(pow) - get(LeadingEdge21Amber))*RR*20))
        set(LeadingEdge11green, get(LeadingEdge11green)+((0*get(pow) - get(LeadingEdge11green))*RR*20))
        set(LeadingEdge21green, get(LeadingEdge21green)+((0*get(pow) - get(LeadingEdge21green))*RR*20))
    end
end

function MiscAnnunciatorsSys()
    if get(APUSrunning) == 1 then
        set(AnAPU, get(AnAPU)+((1*get(pow) - get(AnAPU))*RR*20))
    else
        set(AnAPU, get(AnAPU)+((0*get(pow) - get(AnAPU))*RR*20))
    end
    if get(GearDeployRatio3) > 0 and get(GearDeployRatio3) < 1 then
        set(AnRightGrDoor, get(AnRightGrDoor)+((1*get(pow) - get(AnRightGrDoor))*RR*20))
    else
        set(AnRightGrDoor, get(AnRightGrDoor)+((0*get(pow) - get(AnRightGrDoor))*RR*20))
    end
    if get(GearDeployRatio2) > 0 and get(GearDeployRatio2) < 1 then
        set(AnLeftGrDoor, get(AnLeftGrDoor)+((1*get(pow) - get(AnLeftGrDoor))*RR*20))
    else
        set(AnLeftGrDoor, get(AnLeftGrDoor)+((0*get(pow) - get(AnLeftGrDoor))*RR*20))
    end
    if get(GearDeployRatio1) > 0 and get(GearDeployRatio1) < 1 then
        set(AnNoseGrDoor, get(AnNoseGrDoor)+((1*get(pow) - get(AnNoseGrDoor))*RR*20))
    else
        set(AnNoseGrDoor, get(AnNoseGrDoor)+((0*get(pow) - get(AnNoseGrDoor))*RR*20))
    end
    if get(GearDeployRatio4) > 0 and get(GearDeployRatio4) < 1 then
        set(AnTailSkid, get(AnTailSkid)+((1*get(pow) - get(AnTailSkid))*RR*20))
    else
        set(AnTailSkid, get(AnTailSkid)+((0*get(pow) - get(AnTailSkid))*RR*20))
    end
    if get(APU_StarSwitch) == 2 then
        set(AnAPUCrank, get(AnAPUCrank)+((1*get(pow) - get(AnAPUCrank))*RR*20))
    else
        set(AnAPUCrank, get(AnAPUCrank)+((0*get(pow) - get(AnAPUCrank))*RR*20))
    end
    if get(APU_EGTNeelde) > 250 and ( get(Eng2BleedSwitchL) == 1 or get(Eng2BleedSwitchR) == 1 ) then
        set(AnAPUBleed, get(AnAPUBleed)+((1*get(pow) - get(AnAPUBleed))*RR*20))
    else
        set(AnAPUBleed, get(AnAPUBleed)+((0*get(pow) - get(AnAPUBleed))*RR*20))
    end
end

function update()

    RR = get(frameRate)
    LightAdjust = myLerp(0.0315445,0.5,0.947280,1.4,get(light_atin))
    MiscAnnunciatorsSys()
    LEFlapSlatAnunSys()
    
    --initialize
    if get(BatterOn) == 1 and get(flighttime) < 5 then
        set(OutBoundLLightSwitch1, 1)
        set(OutBoundLLightSwitch2, 1)
        set(SimLndLitSwitch3, 1)
        set(SimLndLitSwitch4, 1)
        set(SimLndLitSwitch5, 0)
        set(SimLndLitSwitch6, 0)
        set(SimLndLitSwitch7, 0)
        set(SimLndLitSwitch8, 0)
        set(DomeLiteWhite, 0.5)
        set(DomeLiteRed, 0)
    end
    if get(BatterOn) == 0 and get(flighttime) < 5 then
        set(OutBoundLLightSwitch1, 0)
        set(OutBoundLLightSwitch2, 0)
        set(SimLndLitSwitch3, 0)
        set(SimLndLitSwitch4, 0)
        set(SimLndLitSwitch5, 0)
        set(SimLndLitSwitch6, 0)
        set(SimLndLitSwitch7, 0)
        set(SimLndLitSwitch8, 0)
        set(DomeLiteWhite, 0.5)
        set(DomeLiteRed, 0)
    end
    
    if get(EmerLightSwitch) ~= 0 and get(BatterOn) == 1 then
        EmerLiteSet = 1
    elseif get(EmerLightSwitch) == 0 and get(BatterOn) == 0 then
        EmerLiteSet = 1
    else
        EmerLiteSet = 0
    end
    set(EmerLite, get(EmerLite)+((EmerLiteSet - get(EmerLite))*RR*25))

    set(FwdCenter, get(InsBrightness5)*LightAdjust)
    set(overhead, get(InsBrightness2)*LightAdjust)
    set(Storm, get(InsBrightness3)*LightAdjust)
    set(FwdBackground, get(InsBrightness4)*LightAdjust)
    set(FwdLeft, get(InsBrightness6)*LightAdjust)
    set(FwdRight, get(InsBrightness11)*LightAdjust)
    set(Compass, get(InsBrightness8)*LightAdjust)
    set(MapLite, get(InsBrightness7)*LightAdjust)
    set(RedStand, get(InsBrightness9)*LightAdjust)
    set(RadioPanel, get(InsBrightness12)*LightAdjust)
    set(DomeWhite, get(InsBrightness13)*LightAdjust)
    set(FEPanel, get(InsBrightness14)*LightAdjust)
    
    if get(SlatRatio) > 0.99 and get(OutBoundLLightSwitch1) == 1 then
        set(SimLndLitSwitch1, 1)
    else
        set(SimLndLitSwitch1, 0)
    end
    if get(SlatRatio) > 0.99 and get(OutBoundLLightSwitch2) == 1 then
        set(SimLndLitSwitch2, 1)
    else
        set(SimLndLitSwitch2, 0)
    end


end