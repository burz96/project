-- This file contains all the functions for the bleed air system


local RR = 0
--sim drefs
dref_i("BleedAirMode",                   "sim/cockpit2/pressurization/actuators/bleed_air_mode")
dref_f("CabinAltFeet",                   "sim/cockpit2/pressurization/indicators/cabin_altitude_ft")
dref_i("DumpAllOn",                      "sim/cockpit2/pressurization/actuators/dump_all_on")
dref_i("DumpToAlt",                      "sim/cockpit2/pressurization/actuators/dump_to_altitude_on")
dref_f("CabinAltfetSet",                 "sim/cockpit2/pressurization/actuators/cabin_altitude_ft")
dref_f("CabinAltfetAct",                 "sim/cockpit2/pressurization/indicators/cabin_altitude_ft")
dref_f("CabinVVI",                       "sim/cockpit2/pressurization/actuators/cabin_vvi_fpm")
dref_f("AircraftVVI",                    "sim/cockpit2/gauges/indicators/vvi_fpm_pilot")
dref_f("AircraftAlt",                    "sim/cockpit2/gauges/indicators/altitude_ft_pilot")

dref_i("InletAntiIce",                   "sim/cockpit2/ice/ice_inlet_heat_on")
dref_i("Inletheat1",                     "sim/cockpit2/ice/ice_inlet_heat_on_per_engine[0]")
dref_i("Inletheat2",                     "sim/cockpit2/ice/ice_inlet_heat_on_per_engine[1]")
dref_i("Inletheat3",                     "sim/cockpit2/ice/ice_inlet_heat_on_per_engine[2]")
dref_i("WindowAntiIce",                  "sim/cockpit2/ice/ice_window_heat_on")
dref_i("PitotHeatPilot",                 "sim/cockpit2/ice/ice_pitot_heat_on_pilot")
dref_i("PitotHeatCoPilot",               "sim/cockpit2/ice/ice_pitot_heat_on_copilot")
dref_i("WingLeftAntiIce",                "sim/cockpit2/ice/ice_surfce_heat_left_on")
dref_i("WingRightAntiIce",               "sim/cockpit2/ice/ice_surfce_heat_right_on")
dref_i("AOApilot",                       "sim/cockpit2/ice/ice_AOA_heat_on")
dref_i("AOAcopilot",                     "sim/cockpit2/ice/ice_AOA_heat_on_copilot")

--exterior door datarefs
Cdref("Cdref_packRamLeftRatio",          "FJS/727/anims/packRamLeftRatio") -- 0 IS OPEN, 1 IS CLOSED
Cdref("Cdref_packRamRightRatio",         "FJS/727/anims/packRamRightRatio")
Cdref("Cdref_packFanDoorLRatio",         "FJS/727/anims/packFanDoorLRatio")
Cdref("Cdref_packFanDoorRRatio",         "FJS/727/anims/packFanDoorRRatio")


--Switches
Cdref("Eng1BleedSwitch",                 "FJS/727/bleed/Eng1BleedSwitch")
Cdref("Eng3BleedSwitch",                 "FJS/727/bleed/Eng3BleedSwitch")
Cdref("PACK_LSwitch",                    "FJS/727/bleed/PACK_LSwitch")
Cdref("PACK_RSwitch",                    "FJS/727/bleed/PACK_RSwitch")
Cdref("CoolingDoorLSwitch",              "FJS/727/bleed/CoolingDoorLSwitch")
Cdref("CoolingDoorRSwitch",              "FJS/727/bleed/CoolingDoorRSwitch")
Cdref("CargoHeatOutflowSwitch",          "FJS/727/bleed/CargoHeatOutflowSwitch")
Cdref("GasperFanSwitch",                 "FJS/727/bleed/GasperFanSwitch")
Cdref("AutoPackSwitch",                  "FJS/727/bleed/AutoPackSwitch")
Cdref("AutoPackResetSwitch",             "FJS/727/bleed/AutoPackResetSwitch")

Cdref("CabinTempKnob",                   "FJS/727/bleed/CabinTempKnob")
Cdref("PassengerTempKnob",               "FJS/727/bleed/PassengerTempKnob")
Cdref("AirTempKnob",                     "FJS/727/bleed/AirTempKnob")
Cdref("AutoFlightAltKnob",               "FJS/727/bleed/AutoFlightAltKnob")
Cdref("AutoLandAltKnob",                 "FJS/727/bleed/AutoLandAltKnob")
Cdref("StybyCabinRateKnob",              "FJS/727/bleed/StybyCabinRateKnob")
Cdref("StbyCabinAltKnob",                "FJS/727/bleed/StbyCabinAltKnob")
Cdref("PressModeKnob",                   "FJS/727/bleed/PressModeKnob")
Cdref("FltGndSwitch",                    "FJS/727/bleed/FltGndSwitch")
Cdref("OutflowValveSwitch",              "FJS/727/bleed/OutflowValveSwitch")
Cdref("AftCabinMixValveSwitch",          "FJS/727/bleed/AftCabinMixValveSwitch")
set(StybyCabinRateKnob, 0.25)

Cdref("ProbHeaterSwitchL",               "FJS/727/bleed/ProbHeaterSwitchL")
Cdref("ProbHeaterSwitchR",               "FJS/727/bleed/ProbHeaterSwitchR")
Cdref("Eng1inletSwitch",                 "FJS/727/bleed/Eng1inletSwitch")
Cdref("Eng2inletSwitch",                 "FJS/727/bleed/Eng2inletSwitch")
Cdref("Eng3inletSwitch",                 "FJS/727/bleed/Eng3inletSwitch")
Cdref("EngAntiIceValveKnob",             "FJS/727/bleed/EngAntiIceValveKnob")
Cdref("WingAntiIceSwitchL",              "FJS/727/bleed/WingAntiIceSwitchL")
Cdref("WingAntiIceSwitchR",              "FJS/727/bleed/WingAntiIceSwitchR")
Cdref("DuctTempKnob",                    "FJS/727/bleed/DuctTempKnob")
Cdref("WindowHeatL1Switch",              "FJS/727/bleed/WindowHeatL1Switch")
Cdref("WindowHeatL2Switch",              "FJS/727/bleed/WindowHeatL2Switch")
Cdref("WindowHeatR1Switch",              "FJS/727/bleed/WindowHeatR1Switch")
Cdref("WindowHeatR2Switch",              "FJS/727/bleed/WindowHeatR2Switch")
Cdref("windowHeatOHTestSwitch",          "FJS/727/bleed/windowHeatOHTestSwitch")

local Eng1IceValve = 0
local Eng2IceValve = 0
local Eng3IceValve = 0
local wing1Valve = 0
local wing2Valve = 0


--lights
Cdref("Eng1BleedTripLite",               "FJS/727/bleed/Eng1BleedTripLite")
Cdref("Eng2BleedTripLite",               "FJS/727/bleed/Eng2BleedTripLite")
Cdref("PACK_LTripLite",                  "FJS/727/bleed/PACK_LTripLite")
Cdref("PACK_RTripLite",                  "FJS/727/bleed/PACK_RTripLite")
Cdref("eng2BleedHighTempLite",           "FJS/727/bleed/eng2BleedHighTempLite")
Cdref("AutoPackTripLite",                "FJS/727/bleed/AutoPackTripLite")

Cdref("CabinDuctOverheat",               "FJS/727/bleed/CabinDuctOverheat")
Cdref("PAXDuctOverheat",                 "FJS/727/bleed/PAXDuctOverheat")
Cdref("AutoFailLite",                    "FJS/727/bleed/AutoFailLite")
Cdref("OffSchedDescentLite",             "FJS/727/bleed/OffSchedDescentLite")
Cdref("StandbyLite",                     "FJS/727/bleed/StandbyLite")
Cdref("ManualLite",                      "FJS/727/bleed/ManualLite")
Cdref("AftCabinOverheatLite",            "FJS/727/bleed/AftCabinOverheatLite")

Cdref("LeftProbHeatLites",               "FJS/727/bleed/LeftProbHeatLites")
Cdref("RightProbHeatLites",              "FJS/727/bleed/RightProbHeatLites")
Cdref("Eng1ValveLite",                   "FJS/727/bleed/Eng1ValveLite")
Cdref("Eng2ValveLite",                   "FJS/727/bleed/Eng2ValveLite")
Cdref("Eng3ValveLite",                   "FJS/727/bleed/Eng3ValveLite")
Cdref("WingAntiIceLiteL",                "FJS/727/bleed/WingAntiIceLiteL")
Cdref("WingAntiIceLiteR",                "FJS/727/bleed/WingAntiIceLiteR")
Cdref("AntiIceDuctTempOverheatLite",     "FJS/727/bleed/AntiIceDuctTempOverheatLite")
Cdref("WindowL1GreenLite",               "FJS/727/bleed/WindowL1GreenLite")
Cdref("WindowL1AmberLite",               "FJS/727/bleed/WindowL1AmberLite")
Cdref("WindowL2GreenLite",               "FJS/727/bleed/WindowL2GreenLite")
Cdref("WindowL2AmberLite",               "FJS/727/bleed/WindowL2AmberLite")
Cdref("WindowR1GreenLite",               "FJS/727/bleed/WindowR1GreenLite")
Cdref("WindowR1AmberLite",               "FJS/727/bleed/WindowR1AmberLite")
Cdref("WindowR2GreenLite",               "FJS/727/bleed/WindowR2GreenLite")
Cdref("WindowR2AmberLite",               "FJS/727/bleed/WindowR2AmberLite")

--BleedAir  needles in avionics.lua
--needles
Cdref("CabinMixValveNeedle",             "FJS/727/bleed/CabinMixValveNeedle")
Cdref("PAXMixValveNeedle",               "FJS/727/bleed/PAXMixValveNeedle")
Cdref("AitTempNeedle",                   "FJS/727/bleed/AitTempNeedle")
Cdref("CabinAltNeedle",                  "FJS/727/bleed/CabinAltNeedle")
Cdref("AftCabinTempNeedle",              "FJS/727/bleed/AftCabinTempNeedle")
Cdref("PressOutflowNeedle",              "FJS/727/bleed/PressOutflowNeedle")

Cdref("AntiIceDuctTempNeedle",           "FJS/727/bleed/AntiIceDuctTempNeedle")

--Rollers
Cdref("FltAltRollA",                     "FJS/727/bleed/FltAltRollA")
Cdref("FltAltRollB",                     "FJS/727/bleed/FltAltRollB")
Cdref("FltAltRollC",                     "FJS/727/bleed/FltAltRollC")
Cdref("FltAltRollD",                     "FJS/727/bleed/FltAltRollD")
Cdref("LandAltRollA",                    "FJS/727/bleed/LandAltRollA")
Cdref("LandAltRollB",                    "FJS/727/bleed/LandAltRollB")
Cdref("LandAltRollC",                    "FJS/727/bleed/LandAltRollC")
Cdref("LandAltRollD",                    "FJS/727/bleed/LandAltRollD")
Cdref("CabAltRollA",                     "FJS/727/bleed/CabAltRollA")
Cdref("CabAltRollB",                     "FJS/727/bleed/CabAltRollB")
Cdref("CabAltRollC",                     "FJS/727/bleed/CabAltRollC")
Cdref("CabAltRollD",                     "FJS/727/bleed/CabAltRollD")

local Bleed1PSI = 0
local Bleed2PSI = 0
local Bleed3PSI = 0
local LeftPSI = 0
local RightPSI = 0
local APUorEng2 = 0

local BleedtempLeft = 0
local BleedTempRight = 0
local PackTempLeft = 0
local PackTempRight = 0
local CoolingDoorCoefR = 1
local CoolingDoorCoefL = 1
local PrecoolerCoef = 0

local BleSysUseL = 0
local BleSysUseR = 0

local Switchback2 = 0
local autoTrip = 0

local FltAltSet = 33000
local LndAltSet = 10
local TakeoffAlt = 0
local CabAltSet = 6000
local AltDecendingTo = 0
local highestAlt = 0 -- as we climb, this is out highest alt, if we go below it we are decending
local AutoCabAlt ={0,500,1000,1400,1900,2300,2800,3200,3600,4100,4400,4800,5200,5600,6000,6300,6600,7000,7300,7600,7900}

local TempNeedleAry = {math.random(18, 27), math.random(18, 27), math.random(18, 27), math.random(18, 27), math.random(18, 27)}
local TempTrend = {21.6, 19.4, 19.4, 20.5, 21.6, 22.7, 23.8, 23.8}

CoolingDoorLSwitchUp =   CCom("FJS/727/bleed/Com/CoolingDoorLSwitchUp")
CoolingDoorLSwitchDown = CCom("FJS/727/bleed/Com/CoolingDoorLSwitchDown")
CoolingDoorRSwitchUp =   CCom("FJS/727/bleed/Com/CoolingDoorRSwitchUp")
CoolingDoorRSwitchDown = CCom("FJS/727/bleed/Com/CoolingDoorRSwitchDown")

FltAltUp =         CCom("FJS/727/bleed/Com/FltAltUp")
FltAltDn =         CCom("FJS/727/bleed/Com/FltAltDn")
LandAltUp1000 =    CCom("FJS/727/bleed/Com/LandAltUp1000")
LandAltDn1000 =    CCom("FJS/727/bleed/Com/LandAltDn1000")
LandAltUp10 =      CCom("FJS/727/bleed/Com/LandAltUp10")
LandAltDn10 =      CCom("FJS/727/bleed/Com/LandAltDn10")
CabAltUp1000 =     CCom("FJS/727/bleed/Com/CabAltUp1000")
CabAltDn1000 =     CCom("FJS/727/bleed/Com/CabAltDn1000")
CabAltUp10 =       CCom("FJS/727/bleed/Com/CabAltUp10")
CabAltDn10 =       CCom("FJS/727/bleed/Com/CabAltDn10")
CabRateSelUp =     CCom("FJS/727/bleed/Com/CabRateSelUp")
CabRateSelDn =     CCom("FJS/727/bleed/Com/CabRateSelDn")
PressModeSelUp =   CCom("FJS/727/bleed/Com/PressModeSelUp")
PressModeSelDn =   CCom("FJS/727/bleed/Com/PressModeSelDn")
ManualValveClose = CCom("FJS/727/bleed/Com/ManualValveClose")
ManualValveOpen =  CCom("FJS/727/bleed/Com/ManualValveOpen")
AftCabHeatUp =     CCom("FJS/727/bleed/Com/AftCabHeatUp")
AftCabHeatDn =     CCom("FJS/727/bleed/Com/AftCabHeatDn")

WindHeatTestUp =   CCom("FJS/727/bleed/Com/WindHeatTestUp")
WindHeatTestDn =   CCom("FJS/727/bleed/Com/WindHeatTestDn")

function WindHeatTestDn_OnStart()
        Switchback2 = 100
        set(windowHeatOHTestSwitch, -1)
    return 1
end
regCom(WindHeatTestDn, WindHeatTestDn_OnStart)
function WindHeatTestUp_OnStart()
        Switchback2 = 100
        set(windowHeatOHTestSwitch, 1)
    return 1
end
regCom(WindHeatTestUp, WindHeatTestUp_OnStart)

function AftCabHeatUp_OnStart()
        Switchback2 = 100
        if get(AftCabinTempNeedle) < 1 then
            set(AftCabinTempNeedle, get(AftCabinTempNeedle)+(.1*get(pow))/(1/RR))
        end
        set(AftCabinMixValveSwitch, 1)
    return 1
end
regCom(AftCabHeatUp, AftCabHeatUp_OnStart)

function AftCabHeatDn_OnStart()
        Switchback2 = 100
        if get(AftCabinTempNeedle) > 0 then
            set(AftCabinTempNeedle, get(AftCabinTempNeedle)-(.1*get(pow))/(1/RR))
        end
        set(AftCabinMixValveSwitch, -1)
    return 1
end
regCom(AftCabHeatDn, AftCabHeatDn_OnStart)

function ManualValveClose_OnStart()
        Switchback2 = 100
        set(OutflowValveSwitch, -1)
    return 1
end
regCom(ManualValveClose, ManualValveClose_OnStart)
function ManualValveOpen_OnStart()
        Switchback2 = 100
        set(OutflowValveSwitch, 1)
    return 1
end
regCom(ManualValveOpen, ManualValveOpen_OnStart)

function PressModeSelDn_OnStart(phase)
    if 0 == phase then
        set(PressModeKnob, 0)
    end 
    return 1
end
regCom(PressModeSelDn, PressModeSelDn_OnStart)
function PressModeSelUp_OnStart(phase)
    if 0 == phase then
        set(PressModeKnob, 1)
    end 
    return 1
end
regCom(PressModeSelUp, PressModeSelUp_OnStart)

function CabRateSelUp_OnStart(phase)
    if 0 == phase then
        if get(StybyCabinRateKnob) < 1 then
            set(StybyCabinRateKnob, get(StybyCabinRateKnob)+.05 )
        end
    end 
    return 1
end
regCom(CabRateSelUp, CabRateSelUp_OnStart)
function CabRateSelDn_OnStart(phase)
    if 0 == phase then
        if get(StybyCabinRateKnob) > 0 then
            set(StybyCabinRateKnob, get(StybyCabinRateKnob)-.05 )
        end
    end 
    return 1
end
regCom(CabRateSelDn, CabRateSelDn_OnStart)

function CabAltDn1000_OnStart(phase)
    if 0 == phase then
        if CabAltSet > 999 then
            CabAltSet = CabAltSet - 1000
        else
            CabAltSet = 0
        end
    end 
    return 1
end
regCom(CabAltDn1000, CabAltDn1000_OnStart)
function CabAltUp1000_OnStart(phase)
    if 0 == phase then
        if CabAltSet < 12990 then
            CabAltSet = CabAltSet + 1000
        else
            CabAltSet = 13990
        end
    end 
    return 1
end
regCom(CabAltUp1000, CabAltUp1000_OnStart)
function CabAltUp10_OnStart(phase)
    if 0 == phase then
        if CabAltSet < 13981 then
            CabAltSet = CabAltSet + 10
        else
            CabAltSet = 13990
        end
    end 
    return 1
end
regCom(CabAltUp10, CabAltUp10_OnStart)
function CabAltDn10_OnStart(phase)
    if 0 == phase then
        if CabAltSet > 9 then
            CabAltSet = CabAltSet - 10
        else
            CabAltSet = 0
        end
    end 
    return 1
end
regCom(CabAltDn10, CabAltDn10_OnStart)

function LandAltUp10_OnStart(phase)
    if 0 == phase then
        if LndAltSet < 13981 then
            LndAltSet = LndAltSet + 10
        else
            LndAltSet = 13990
        end
    end 
    return 1
end
regCom(LandAltUp10, LandAltUp10_OnStart)
function LandAltDn10_OnStart(phase)
    if 0 == phase then
        if LndAltSet > 9 then
            LndAltSet = LndAltSet - 10
        else
            LndAltSet = 0
        end
    end 
    return 1
end
regCom(LandAltDn10, LandAltDn10_OnStart)
function LandAltDn1000_OnStart(phase)
    if 0 == phase then
        if LndAltSet > 990 then
            LndAltSet = LndAltSet - 1000
        end
    end 
    return 1
end
regCom(LandAltDn1000, LandAltDn1000_OnStart)
function LandAltUp1000_OnStart(phase)
    if 0 == phase then
        if LndAltSet < 12990 then
            LndAltSet = LndAltSet + 1000
        else
            LndAltSet = 13990
        end
    end 
    return 1
end
regCom(LandAltUp1000, LandAltUp1000_OnStart)

function FltAltDn_OnStart(phase)
    if 0 == phase then
        if FltAltSet > 990 then
            FltAltSet = FltAltSet - 1000
        else
            FltAltSet = 0
        end
    end 
    return 1
end
regCom(FltAltDn, FltAltDn_OnStart)

function FltAltUp_OnStart(phase)
    if 0 == phase then
        if FltAltSet < 39001 then
            FltAltSet = FltAltSet + 1000
        else
            FltAltSet = 40000
        end
    end 
    return 1
end
regCom(FltAltUp, FltAltUp_OnStart)

function CoolingDoorLSwitchUp_Press()
        Switchback2 = 100
        set(CoolingDoorLSwitch, 1) 
    return 1
end
regCom(CoolingDoorLSwitchUp, CoolingDoorLSwitchUp_Press)

function CoolingDoorLSwitchDown_OnStart()
        Switchback2 = 100
        set(CoolingDoorLSwitch, -1)
    return 1
end
registerCommandHandler(CoolingDoorLSwitchDown, 1, CoolingDoorLSwitchDown_OnStart);

function CoolingDoorRSwitchUp_OnStart()

        Switchback2 = 100
        set(CoolingDoorRSwitch, 1)

    return 1
end
registerCommandHandler(CoolingDoorRSwitchUp, 1, CoolingDoorRSwitchUp_OnStart);

function CoolingDoorRSwitchDown_OnStart()

        Switchback2 = 100
        set(CoolingDoorRSwitch, -1)

    return 1
end
registerCommandHandler(CoolingDoorRSwitchDown, 1, CoolingDoorRSwitchDown_OnStart);

---EndCommands
---################################################################################
---################################################################################

function AntIceSystem()
    set(PitotHeatPilot, get(ProbHeaterSwitchL))
    set(PitotHeatCoPilot, get(ProbHeaterSwitchR))
    set(AOApilot, get(ProbHeaterSwitchL))
    set(AOAcopilot, get(ProbHeaterSwitchR))
    if get(PitotHeatPilot) == 0 then
        set(LeftProbHeatLites, get(LeftProbHeatLites)+((1*get(pow) - get(LeftProbHeatLites))*RR*20))
    else
        set(LeftProbHeatLites, get(LeftProbHeatLites)+((0*get(pow) - get(LeftProbHeatLites))*RR*20))
    end
    if get(PitotHeatCoPilot) == 0 then
        set(RightProbHeatLites, get(RightProbHeatLites)+((1*get(pow) - get(RightProbHeatLites))*RR*20))
    else
        set(RightProbHeatLites, get(RightProbHeatLites)+((0*get(pow) - get(RightProbHeatLites))*RR*20))
    end
    
    --Set XPs ice system to coospond to the 727s switch pos
    --if get(Eng1inletSwitch) == 1 or get(Eng2inletSwitch) == 1 or get(Eng3inletSwitch) == 1 then
    --    set(InletAntiIce, 1)
    --else
    --    set(InletAntiIce, 0)
    --end
    set(Inletheat1, get(Eng1inletSwitch))
    set(Inletheat2, get(Eng2inletSwitch))
    set(Inletheat3, get(Eng3inletSwitch))
    set(WingLeftAntiIce, get(WingAntiIceSwitchL))
    set(WingRightAntiIce, get(WingAntiIceSwitchR))
    
    
    Eng1IceValve = Eng1IceValve + (get(Eng1inletSwitch) - Eng1IceValve)*RR*1
    Eng2IceValve = Eng2IceValve + (get(Eng2inletSwitch) - Eng2IceValve)*RR*1
    Eng3IceValve = Eng3IceValve + (get(Eng3inletSwitch) - Eng3IceValve)*RR*1
    wing1Valve = wing1Valve + (get(WingAntiIceSwitchL) - wing1Valve)*RR*1
    wing2Valve = wing2Valve + (get(WingAntiIceSwitchR) - wing2Valve)*RR*1
    
    --if get(EngAntiIceValveKnob) == 0 then
    --    set(Eng1ValveLite, get(Eng1ValveLite)+((0 - get(Eng1ValveLite))*RR*20))
    --    set(Eng2ValveLite, get(Eng2ValveLite)+((0 - get(Eng2ValveLite))*RR*20))
    --    set(Eng3ValveLite, get(Eng3ValveLite)+((0 - get(Eng3ValveLite))*RR*20))
    --    set(WingAntiIceLiteL, get(WingAntiIceLiteL)+((0 - get(WingAntiIceLiteL))*RR*20))
    --    set(WingAntiIceLiteR, get(WingAntiIceLiteR)+((0 - get(WingAntiIceLiteR))*RR*20))
    --end
    if get(EngAntiIceValveKnob) > 0 and get(EngAntiIceValveKnob) < 4 then
        if (get(Eng1inletSwitch) == 1 and Eng1IceValve > 0.99) or (get(Eng1inletSwitch) == 0 and Eng1IceValve < 0.01) then
            set(Eng1ValveLite, get(Eng1ValveLite)+((1*get(pow) - get(Eng1ValveLite))*RR*20))
        else
            set(Eng1ValveLite, get(Eng1ValveLite)+((0 - get(Eng1ValveLite))*RR*20))
        end
    else
        set(Eng1ValveLite, get(Eng1ValveLite)+((0 - get(Eng1ValveLite))*RR*20))
    end
    if get(EngAntiIceValveKnob) > 0 and get(EngAntiIceValveKnob) < 4 then
        if (get(Eng2inletSwitch) == 1 and Eng2IceValve > 0.99) or (get(Eng2inletSwitch) == 0 and Eng2IceValve < 0.01) then
            set(Eng2ValveLite, get(Eng2ValveLite)+((1*get(pow) - get(Eng2ValveLite))*RR*20))
        else
            set(Eng2ValveLite, get(Eng2ValveLite)+((0 - get(Eng2ValveLite))*RR*20))
        end
    else
        set(Eng2ValveLite, get(Eng2ValveLite)+((0 - get(Eng2ValveLite))*RR*20))
    end
    if get(EngAntiIceValveKnob) > 0 and get(EngAntiIceValveKnob) < 4 then
        if (get(Eng3inletSwitch) == 1 and Eng3IceValve > 0.99) or (get(Eng3inletSwitch) == 0 and Eng3IceValve < 0.01) then
            set(Eng3ValveLite, get(Eng3ValveLite)+((1*get(pow) - get(Eng3ValveLite))*RR*20))
        else
            set(Eng3ValveLite, get(Eng3ValveLite)+((0 - get(Eng3ValveLite))*RR*20))
        end
    else
        set(Eng3ValveLite, get(Eng3ValveLite)+((0 - get(Eng3ValveLite))*RR*20))
    end
    if get(EngAntiIceValveKnob) == 4 then
        if (get(WingAntiIceSwitchL) == 1 and wing1Valve > 0.99) or (get(WingAntiIceSwitchL) == 0 and wing1Valve < 0.01) then
            set(WingAntiIceLiteL, get(WingAntiIceLiteL)+((1*get(pow) - get(WingAntiIceLiteL))*RR*20))
        else
            set(WingAntiIceLiteL, get(WingAntiIceLiteL)+((0 - get(WingAntiIceLiteL))*RR*20))
        end
        if (get(WingAntiIceSwitchR) == 1 and wing2Valve > 0.99) or (get(WingAntiIceSwitchR) == 0 and wing2Valve < 0.01) then
            set(WingAntiIceLiteR, get(WingAntiIceLiteR)+((1*get(pow) - get(WingAntiIceLiteR))*RR*20))
        else
            set(WingAntiIceLiteR, get(WingAntiIceLiteR)+((0 - get(WingAntiIceLiteR))*RR*20))
        end
    else
        set(WingAntiIceLiteR, get(WingAntiIceLiteR)+((0 - get(WingAntiIceLiteR))*RR*20))
        set(WingAntiIceLiteL, get(WingAntiIceLiteL)+((0 - get(WingAntiIceLiteL))*RR*20))
    end
    
    if get(DuctTempKnob) == 0 then
        set(AntiIceDuctTempNeedle, get(AntiIceDuctTempNeedle)+((myLerp(0,0,100,210,get(dref_N11))*get(pow) - get(AntiIceDuctTempNeedle))*RR*.1))
    elseif get(DuctTempKnob) == 1 then
        set(AntiIceDuctTempNeedle, get(AntiIceDuctTempNeedle)+((myLerp(0,0,100,210,get(dref_N12))*get(pow) - get(AntiIceDuctTempNeedle))*RR*.1))
    elseif get(DuctTempKnob) == 2 then
        set(AntiIceDuctTempNeedle, get(AntiIceDuctTempNeedle)+((myLerp(0,0,100,210,get(dref_N13))+get(dref_TAT)*get(pow) - get(AntiIceDuctTempNeedle))*RR*.1))
    end
    
    if get(WindowHeatL1Switch) == 1 or get(WindowHeatL2Switch) == 1 or get(WindowHeatR1Switch) == 1 or get(WindowHeatR2Switch) == 1 then
        set(WindowAntiIce, 1)
    else
        set(WindowAntiIce, 0)
    end
    if get(windowHeatOHTestSwitch) == 0 then
        set(WindowL1GreenLite, get(WindowL1GreenLite)+((get(WindowHeatL1Switch)*get(pow) - get(WindowL1GreenLite))*RR*20))
        set(WindowL2GreenLite, get(WindowL2GreenLite)+((get(WindowHeatL2Switch)*get(pow) - get(WindowL2GreenLite))*RR*20))
        set(WindowR1GreenLite, get(WindowR1GreenLite)+((get(WindowHeatR1Switch)*get(pow) - get(WindowR1GreenLite))*RR*20))
        set(WindowR2GreenLite, get(WindowR2GreenLite)+((get(WindowHeatR2Switch)*get(pow) - get(WindowR2GreenLite))*RR*20))
        set(WindowL1AmberLite, get(WindowL1AmberLite)+((0*get(pow) - get(WindowL1AmberLite))*RR*20))
        set(WindowL2AmberLite, get(WindowL2AmberLite)+((0*get(pow) - get(WindowL2AmberLite))*RR*20))
        set(WindowR1AmberLite, get(WindowR1AmberLite)+((0*get(pow) - get(WindowR1AmberLite))*RR*20))
        set(WindowR2AmberLite, get(WindowR2AmberLite)+((0*get(pow) - get(WindowR2AmberLite))*RR*20))
    elseif get(windowHeatOHTestSwitch) == 1 then
        set(WindowL1GreenLite, get(WindowL1GreenLite)+((1*get(pow) - get(WindowL1GreenLite))*RR*20))
        set(WindowL2GreenLite, get(WindowL2GreenLite)+((1*get(pow) - get(WindowL2GreenLite))*RR*20))
        set(WindowR1GreenLite, get(WindowR1GreenLite)+((1*get(pow) - get(WindowR1GreenLite))*RR*20))
        set(WindowR2GreenLite, get(WindowR2GreenLite)+((1*get(pow) - get(WindowR2GreenLite))*RR*20))
    elseif get(windowHeatOHTestSwitch) == -1 then
        set(WindowL1AmberLite, get(WindowL1AmberLite)+((1*get(pow) - get(WindowL1AmberLite))*RR*20))
        set(WindowL2AmberLite, get(WindowL2AmberLite)+((1*get(pow) - get(WindowL2AmberLite))*RR*20))
        set(WindowR1AmberLite, get(WindowR1AmberLite)+((1*get(pow) - get(WindowR1AmberLite))*RR*20))
        set(WindowR2AmberLite, get(WindowR2AmberLite)+((1*get(pow) - get(WindowR2AmberLite))*RR*20))
    end
end

function TempControlSysten()
    set(AitTempNeedle, get(AitTempNeedle)+((TempNeedleAry[get(AirTempKnob)+1]*get(pow) - get(AitTempNeedle))*RR*5))
    if get(PACK_L_PSINeedle) > 20 or get(PACK_R_PSINeedle) > 20 then
        TempNeedleAry[1] = TempNeedleAry[1]+((TempTrend[get(CabinTempKnob)+1] - TempNeedleAry[1])*RR*.01)
        TempNeedleAry[2] = TempNeedleAry[2]+((TempTrend[get(PassengerTempKnob)+1] - TempNeedleAry[2])*RR*.01)
        TempNeedleAry[3] = TempNeedleAry[3]+((TempTrend[get(CabinTempKnob)+1] - TempNeedleAry[3])*RR*.01)
        TempNeedleAry[4] = TempNeedleAry[4]+((TempTrend[get(PassengerTempKnob)+1] - TempNeedleAry[4])*RR*.01)
        TempNeedleAry[5] = TempNeedleAry[5]+((TempTrend[get(CabinTempKnob)+1] - TempNeedleAry[5])*RR*.01)
    end
    
    local SumL = (TempNeedleAry[1] + TempNeedleAry[3] + TempNeedleAry[5]) / 3
    local SumR = (TempNeedleAry[2] + TempNeedleAry[4] ) / 2
    
    if get(pow) == 1 then
        set(CabinMixValveNeedle, get(CabinMixValveNeedle)+((((TempTrend[get(CabinTempKnob)+1] - SumL)/5)+.5 - get(CabinMixValveNeedle))*RR*1))
        set(PAXMixValveNeedle, get(PAXMixValveNeedle)+((((TempTrend[get(PassengerTempKnob)+1] - SumR)/5)+.5 - get(PAXMixValveNeedle))*RR*1))
    else
        set(CabinMixValveNeedle, get(CabinMixValveNeedle))
        set(PAXMixValveNeedle, get(PAXMixValveNeedle))
    end
end

function PressControlSystem()
    -- in here we control all functions relating to the AutoStby and Manual Press system.
    set(CabinAltNeedle, get(CabinAltFeet)/100) -- set the cabin alt needle"BlenderFix"
    local CabinAltitudeMark = 0
    
    if get(PressModeKnob) == 0 then
        --Auto System start
        set(StandbyLite, get(StandbyLite)+((0*get(pow) - get(StandbyLite))*RR*20))
        if get(FltGndSwitch) == 0 and get(dref_RadAlt) < 1 then
            set(DumpAllOn, 1) -- dump all to current alt.
        else
            --CabAltSet = get(CabinAltfetSet) -- set cabin alt for Atuo mode in the cab alt window
            if get(dref_RadAlt) < 5 then -- set takeoff alt to go backto if we dont get to alt
                TakeoffAlt = get(CabinAltfetAct)
            end
            set(DumpAllOn, 0) -- turn off the dump all
            
            --set the cabin alt to go to based on flight alt selected
            if FltAltSet > 22000 and AutoCabAlt[(FltAltSet/1000-21)] > LndAltSet then -- set the altitude we want the cabin to climb to
                CabinAltitudeMark = AutoCabAlt[(FltAltSet/1000-21)]
            else
                CabinAltitudeMark = LndAltSet
            end
            
            
            
            if get(AircraftAlt) < (FltAltSet - 200) and AltDecendingTo ~= LndAltSet then -- if we havnt reached flight alt yet
                AltDecendingTo = TakeoffAlt -- we set out landing alt to the airport we took off from
                --if highestAlt < get(AircraftAlt) then highestAlt = get(AircraftAlt) end
                if get(AircraftVVI) > 0 then -- we are climbing
                    set(CabinAltfetSet, CabinAltitudeMark) -- set XP alt to where we want to go
                    set(CabinVVI, ((CabinAltitudeMark - AltDecendingTo)/(FltAltSet - AltDecendingTo))*get(AircraftVVI))
                elseif get(AircraftVVI) < 0 then -- we are decending
                    if get(AircraftVVI) < -500 then -- decending faster then 500 fpm, so we really are going down and not just some silly bump
                        set(OffSchedDescentLite, get(OffSchedDescentLite)+((1*get(pow) - get(OffSchedDescentLite))*RR*20))
                    else
                        set(OffSchedDescentLite, get(OffSchedDescentLite)+((0*get(pow) - get(OffSchedDescentLite))*RR*20))
                    end
                    set(CabinAltfetSet, TakeoffAlt) -- set XP alt to where we want to go
                    set(CabinVVI, ((CabinAltitudeMark - AltDecendingTo)/(FltAltSet - AltDecendingTo))*get(AircraftVVI))
                end
            elseif get(AircraftAlt) > (FltAltSet - 200) then -- if we have reached our cruise alt set.
                set(CabinVVI, 0) -- stop climbing the cabin.
                AltDecendingTo = LndAltSet -- we set the landing alt to what we selected.
                
            elseif get(AircraftAlt) < (FltAltSet - 500) and AltDecendingTo == LndAltSet then -- we are decending and landing alt is set.
                set(CabinAltfetSet, LndAltSet) -- set XP alt to where we want to go
                set(CabinVVI, ((CabinAltitudeMark - AltDecendingTo)/(FltAltSet - AltDecendingTo))*get(AircraftVVI))
            end
        end
    end
    
    if get(PressModeKnob) == 1 then -- Standby mode
        set(StandbyLite, get(StandbyLite)+((1*get(pow) - get(StandbyLite))*RR*20))
        if get(FltGndSwitch) == 0 and get(dref_RadAlt) < 1 then
            set(DumpAllOn, 1) -- dump all to current alt.
        elseif get(dref_RadAlt) > 1 then
            set(DumpAllOn, 0) -- turn off the dump all
            set(CabinVVI, get(StybyCabinRateKnob)*2000)
            set(CabinAltfetSet, CabAltSet)
        end
    end
    
    set(FltAltRollA, get(FltAltRollA)+(math.floor(FltAltSet/10000) - get(FltAltRollA))*RR*20)
    set(FltAltRollB, get(FltAltRollB)+(math.floor(FltAltSet/1000) - get(FltAltRollB))*RR*20)
    set(FltAltRollC, 0)
    set(FltAltRollD, 0)
    
    set(LandAltRollA, get(LandAltRollA)+(math.floor(LndAltSet/10000) - get(LandAltRollA))*RR*20)
    set(LandAltRollB, get(LandAltRollB)+(math.floor(LndAltSet/1000) - get(LandAltRollB))*RR*20)
    set(LandAltRollC, get(LandAltRollC)+(math.floor(LndAltSet/100) - get(LandAltRollC))*RR*20)
    set(LandAltRollD, get(LandAltRollD)+(math.floor(LndAltSet/10) - get(LandAltRollD))*RR*20)
    
    set(CabAltRollA, get(CabAltRollA)+(math.floor(CabAltSet/10000) - get(CabAltRollA))*RR*20)
    set(CabAltRollB, get(CabAltRollB)+(math.floor(CabAltSet/1000) - get(CabAltRollB))*RR*20)
    set(CabAltRollC, get(CabAltRollC)+(math.floor(CabAltSet/100) - get(CabAltRollC))*RR*20)
    set(CabAltRollD, get(CabAltRollD)+(math.floor(CabAltSet/10) - get(CabAltRollD))*RR*20)
    set(AutoFlightAltKnob, FltAltSet)
    set(AutoLandAltKnob, LndAltSet)
    set(StbyCabinAltKnob, CabAltSet)

end

function AutoPackTripSystem()
    --arm the system if conditions are correct
    if get(AutoPackSwitch) == 1 and get(EPREng1) > 1.5 and get(EPREng2) > 1.5 and get(EPREng3) > 1.5 and get(dref_tireDef1) > 0 and get(dref_flapRatio) > 0 then
        autoTrip = 1
        set(AutoPackTripLite, get(AutoPackTripLite)+((1*get(pow) - get(AutoPackTripLite))*RR*25))
    end
    
    --trip packs if EPR is reduced less then 1.3 on any engine.
    if autoTrip == 1 and (get(EPREng1) < 1.3 or get(EPREng2) < 1.3 or get(EPREng3) < 1.3) then
        set(PACK_LSwitch, 0)
        set(PACK_RSwitch, 0)
        set(PACK_LTripLite, get(PACK_LTripLite)+((1*get(pow) - get(PACK_LTripLite))*RR*25))
        set(PACK_RTripLite, get(PACK_RTripLite)+((1*get(pow) - get(PACK_RTripLite))*RR*25))
        set(AutoPackTripLite, get(AutoPackTripLite)+((0*get(pow) - get(AutoPackTripLite))*RR*25))
    end
    if get(AutoPackResetSwitch) == 1 then
        autoTrip = 0
        set(PACK_LTripLite, get(PACK_LTripLite)+((0*get(pow) - get(PACK_LTripLite))*RR*25))
        set(PACK_RTripLite, get(PACK_RTripLite)+((0*get(pow) - get(PACK_RTripLite))*RR*25))
        set(AutoPackTripLite, get(AutoPackTripLite)+((0*get(pow) - get(AutoPackTripLite))*RR*25))
    end
end

function CoolingDoorsSystem()
    if get(CoolingDoorLSwitch) == 1 and get(Cdref_packRamLeftRatio) > 0 then
        set(Cdref_packRamLeftRatio, get(Cdref_packRamLeftRatio)-(.1*get(pow))/(1/RR))
    end
    if get(CoolingDoorLSwitch) == -1 and get(Cdref_packRamLeftRatio) < 1 then
        set(Cdref_packRamLeftRatio, get(Cdref_packRamLeftRatio)+(.1*get(pow))/(1/RR))
    end
    
    if get(CoolingDoorRSwitch) == 1 and get(Cdref_packRamRightRatio) > 0 then
        set(Cdref_packRamRightRatio, get(Cdref_packRamRightRatio)-(.1*get(pow))/(1/RR))
    end
    if get(CoolingDoorRSwitch) == -1 and get(Cdref_packRamRightRatio) < 1 then
        set(Cdref_packRamRightRatio, get(Cdref_packRamRightRatio)+(.1*get(pow))/(1/RR))
    end

end


function PackTemp()
    --get the ambient temp times by compressure value
    if get(Eng1BleedSwitch) == 1 and get(dref_N11) > 20 then
        BleedtempLeft = (get(dref_TAT)+273.15)*myLerp(32,1.35283,97.4,2.287,get(dref_N11))
    elseif get(Eng2BleedSwitchL) == 1 then
        BleedtempLeft = (get(dref_TAT)+273.15)*myLerp(32,1.35283,97.4,2.287,get(APUorEng2))
    else
        BleedtempLeft = (get(dref_TAT)+273.15)
    end
    
    if get(Eng3BleedSwitch) == 1 and get(dref_N13) > 20 then
        BleedTempRight = (get(dref_TAT)+273.15)*myLerp(32,1.35283,97.4,2.287,get(dref_N13))
    elseif get(Eng2BleedSwitchR) == 1 then
        BleedTempRight = (get(dref_TAT)+273.15)*myLerp(32,1.35283,97.4,2.287,get(APUorEng2))
    else
        BleedTempRight = (get(dref_TAT)+273.15)
    end
    PrecoolerCoef = (get(dref_TAT)+273.15)/5
    --now we precool the bleed air
    if (get(dref_N11) > 20 and get(Eng1BleedSwitch) == 1) or (get(dref_N12) > 20 and get(Eng2BleedSwitchL) == 1) then
        BleedtempLeft = BleedtempLeft - PrecoolerCoef
    end
    if (get(dref_N13) > 20 and get(Eng3BleedSwitch) == 1) or (get(dref_N12) > 20 and get(Eng2BleedSwitchR) == 1) then
        BleedTempRight = BleedTempRight - PrecoolerCoef
    end
    
    
    CoolingDoorCoefR = myLerp(0,1.2,1,.5,get(Cdref_packRamRightRatio)) * myLerp(0,0,300,200,get(dref_IAS))
    CoolingDoorCoefL = myLerp(0,1.2,1,.5,get(Cdref_packRamLeftRatio)) * myLerp(0,0,300,200,get(dref_IAS))
    
    if get(PACK_LSwitch) == 1 then
        PackTempLeft = ((get(dref_TAT)+273.15)-CoolingDoorCoefL+BleedtempLeft)/2
    else
        PackTempLeft = (get(dref_TAT)+273.15)-CoolingDoorCoefL
    end
    if get(PACK_RSwitch) == 1 then
        PackTempRight = ((get(dref_TAT)+273.15)-CoolingDoorCoefR+BleedTempRight)/2
    else
        PackTempRight = (get(dref_TAT)+273.15)-CoolingDoorCoefR
    end
    
    if PackTempLeft < 273.15 then
        PackTempLeft = 273.15
    end
    if PackTempRight < 273.15 then
        PackTempRight = 273.15
    end
    
    set(PACK_L_TempNeedle, get(PACK_L_TempNeedle)+(((PackTempLeft-273.15)*get(pow) - get(PACK_L_TempNeedle))*RR*.1))
    set(PACK_R_TempNeedle, get(PACK_R_TempNeedle)+(((PackTempRight-273.15)*get(pow) - get(PACK_R_TempNeedle))*RR*.1))

end

function BleedPSI()
    if get(APUrunning) == 1 and get(dref_N12) < 20 then
        APUorEng2 = get(APU_N1)
    elseif get(APUrunning) == 1 and get(dref_N12) > 1 then
        APUorEng2 = get(dref_N12) + get(APU_N1)
    else
        APUorEng2 = get(dref_N12)
    end
    if get(dref_N11) > 10 then
        Bleed1PSI = myLerp(32,26,97.4,58,get(dref_N11))
    else
        Bleed1PSI = 0
    end
    if get(APUorEng2) > 10 then
        Bleed2PSI = myLerp(32,21,97.4,50,APUorEng2)
    else
        Bleed2PSI = 0
    end
    if get(dref_N13) > 10 then
        Bleed3PSI = myLerp(32,26,97.4,58,get(dref_N13))
    else
        Bleed3PSI = 0
    end
    
    --adjust for systems using bleed air
    if get(PACK_LSwitch) == 1 then
        BleSysUseL = .75
    else
        BleSysUseL = 1
    end
    
    if get(PACK_RSwitch) == 1 then
        BleSysUseR = .75
    else
        BleSysUseR = 1
    end
    
    if get(Eng3BleedSwitch) == 1 and get(Eng2BleedSwitchR) == 0 then
        RightPSI =  RightPSI+((Bleed3PSI*BleSysUseR - RightPSI)*RR*.5) 
    elseif get(Eng3BleedSwitch) == 1 and get(Eng2BleedSwitchR) == 1 and get(Eng2BleedSwitchL) == 0 then
        RightPSI = RightPSI+(((Bleed3PSI+Bleed2PSI)*BleSysUseR - RightPSI)*RR*.5) 
    elseif get(Eng3BleedSwitch) == 1 and get(Eng2BleedSwitchR) == 1 and get(Eng2BleedSwitchL) == 1 then
        RightPSI = RightPSI+((((Bleed3PSI+Bleed2PSI)/2)*BleSysUseR - RightPSI)*RR*.5) 
    elseif get(Eng3BleedSwitch) == 0 and get(Eng2BleedSwitchR) == 1 and get(Eng2BleedSwitchL) == 1 then
        RightPSI = RightPSI+(((Bleed2PSI/2)*BleSysUseR - RightPSI)*RR*.5)
    elseif get(Eng3BleedSwitch) == 0 and get(Eng2BleedSwitchR) == 1 and get(Eng2BleedSwitchL) == 0 then
        RightPSI = RightPSI+(((Bleed2PSI)*BleSysUseR - RightPSI)*RR*.5)
    else
        RightPSI = RightPSI+((0 - RightPSI)*RR*.5)
    end
    
    if get(Eng1BleedSwitch) == 1 and get(Eng2BleedSwitchL) == 0 then
        LeftPSI =  LeftPSI+((Bleed1PSI*BleSysUseL - LeftPSI)*RR*.5) 
    elseif get(Eng1BleedSwitch) == 1 and get(Eng2BleedSwitchL) == 1 and get(Eng2BleedSwitchR) == 0 then
        LeftPSI = LeftPSI+(((Bleed1PSI+Bleed2PSI)*BleSysUseL - LeftPSI)*RR*.5) 
    elseif get(Eng1BleedSwitch) == 1 and get(Eng2BleedSwitchL) == 1 and get(Eng2BleedSwitchR) == 1 then
        LeftPSI = LeftPSI+((((Bleed1PSI+Bleed2PSI)/2)*BleSysUseL - LeftPSI)*RR*.5) 
    elseif get(Eng1BleedSwitch) == 0 and get(Eng2BleedSwitchL) == 1 and get(Eng2BleedSwitchR) == 1 then
        LeftPSI = LeftPSI+(((Bleed2PSI/2)*BleSysUseL - LeftPSI)*RR*.5)
    elseif get(Eng1BleedSwitch) == 0 and get(Eng2BleedSwitchL) == 1 and get(Eng2BleedSwitchR) == 0 then
        LeftPSI = LeftPSI+(((Bleed2PSI)*BleSysUseL - LeftPSI)*RR*.5)
    else
        LeftPSI = LeftPSI+((0 - LeftPSI)*RR*.5)
    end
    
    
    
    set(PACK_L_PSINeedle, get(PACK_L_PSINeedle)+((LeftPSI*get(pow) - get(PACK_L_PSINeedle))*RR*10))
    set(PACK_R_PSINeedle, get(PACK_R_PSINeedle)+((RightPSI*get(pow) - get(PACK_R_PSINeedle))*RR*10))
end

function bleedsettings()
    --set the bleed air setting in sim based on switch position.
    if get(Eng1BleedSwitch) == 1 or get(Eng2BleedSwitchL) == 1 or get(Eng2BleedSwitchR) == 1 or get(Eng3BleedSwitch) == 1 then
        set(BleedAirMode, 5)
    else
        set(BleedAirMode, 0)
    end
end

function update()

    RR = get(frameRate)
    bleedsettings()
    BleedPSI()
    PackTemp()
    CoolingDoorsSystem()
    AutoPackTripSystem()
    
    PressControlSystem()
    TempControlSysten()
    AntIceSystem()
    
    if Switchback2 > 0.5 then
        Switchback2 = Switchback2 +((0 - Switchback2)*RR*6)
    end
    if Switchback2 > 1 and Switchback2 < 5 then
        set(CoolingDoorLSwitch,0)
        set(CoolingDoorRSwitch,0)
        set(OutflowValveSwitch, 0)
        set(AftCabinMixValveSwitch, 0)
        set(windowHeatOHTestSwitch, 0)
    end
    
    
    --initialize
    if get(BatterOn) == 1 and get(flighttime) < 5 then
        set(Eng1BleedSwitch, 1)
        set(Eng3BleedSwitch, 1)
        set(Eng2BleedSwitchL, 1)
        set(Eng2BleedSwitchR, 1)
        set(PACK_LSwitch, 1)
        set(PACK_RSwitch, 1)
        set(CargoHeatOutflowSwitch, 1)
        set(GasperFanSwitch, 1)
        set(CabinTempKnob, 4)
        set(PassengerTempKnob, 4)
        set(PressModeKnob, 0)
        set(FltGndSwitch, 0)
        set(AirTempKnob, 0)
        set(AftCabinTempNeedle, .5)
        set(ProbHeaterSwitchL, 1)
        set(ProbHeaterSwitchR, 1)
        set(EngAntiIceValveKnob, 0)
        set(WindowHeatL1Switch, 1)
        set(WindowHeatL2Switch, 1)
        set(WindowHeatR1Switch, 1)
        set(WindowHeatR2Switch, 1)
    end
    if get(BatterOn) == 0 and get(flighttime) < 5 then
        set(Eng1BleedSwitch, 0)
        set(Eng3BleedSwitch, 0)
        set(Eng2BleedSwitchL, 0)
        set(Eng2BleedSwitchR, 0)
        set(PACK_LSwitch, 0)
        set(PACK_RSwitch, 0)
        set(CargoHeatOutflowSwitch, 0)
        set(GasperFanSwitch, 0)
        set(CabinTempKnob, 4)
        set(PassengerTempKnob, 4)
        set(PressModeKnob, 0)
        set(FltGndSwitch, 0)
        set(AirTempKnob, 0)
        set(AftCabinTempNeedle, .5)
        set(ProbHeaterSwitchL, 0)
        set(ProbHeaterSwitchR, 0)
        set(EngAntiIceValveKnob, 0)
        set(WindowHeatL1Switch, 0)
        set(WindowHeatL2Switch, 0)
        set(WindowHeatR1Switch, 0)
        set(WindowHeatR2Switch, 0)
    end


end