--This file contains all information and datarefs related to the instrument panels.


local RR = 0

dref_f("dref_obsPilot",         "sim/cockpit2/radios/actuators/hsi_obs_deg_mag_pilot")
dref_f("dref_obsCoPilot",       "sim/cockpit2/radios/actuators/hsi_obs_deg_mag_copilot")
Cdref("Cdref_obsAPilot",        "FJS/727/num/obsA_Pilot")
Cdref("Cdref_obsBPilot",        "FJS/727/num/obsB_Pilot")
Cdref("Cdref_obsCPilot",        "FJS/727/num/obsC_Pilot")
set(Cdref_obsAPilot, 0)
set(Cdref_obsBPilot, 0)
set(Cdref_obsCPilot, 0)
Cdref("Cdref_obsACoPilot",      "FJS/727/num/obsA_CoPilot")
Cdref("Cdref_obsBCoPilot",      "FJS/727/num/obsB_CoPilot")
Cdref("Cdref_obsCCoPilot",      "FJS/727/num/obsC_CoPilot")
set(Cdref_obsACoPilot, 0)
set(Cdref_obsBCoPilot, 0)
set(Cdref_obsCCoPilot, 0)

dref_i("dref_hsiGSFlag",        "sim/cockpit2/radios/indicators/hsi_display_vertical_pilot")
--dref_i("dref_hsiGS",            "sim/cockpit2/radios/indicators/hsi_vdef_dots_pilot")
Cdref("Cdref_HSIGSFlag",        "FJS/727/num/HSI_GS_FLAG")
--Cdref("Cdref_HSIGS",            "FJS/727/num/HSI_GS")
set(Cdref_HSIGSFlag, 0)

dref_i("dref_hsiGSFlagco",      "sim/cockpit2/radios/indicators/hsi_display_vertical_copilot")
--dref_i("dref_hsiGSco",          "sim/cockpit2/radios/indicators/hsi_vdef_dots_copilot")
Cdref("Cdref_HSIGSFlagco",      "FJS/727/num/HSI_GS_FLAGco")
--Cdref("Cdref_HSIGSco",          "FJS/727/num/HSI_GS_co")
set(Cdref_HSIGSFlagco, 0)

--dref_i("dref_GPShasGS",         "sim/cockpit2")

dref_i("dref_NAVLOC",           "sim/cockpit2/radios/indicators/hsi_display_horizontal_pilot")
Cdref("Cdref_NAVLOC",           "FJS/727/num/HSI_NavLoc")
set(Cdref_NAVLOC, 0)

dref_i("dref_NAVLOCco",         "sim/cockpit2/radios/indicators/hsi_display_horizontal_copilot")
Cdref("Cdref_NAVLOCco",         "FJS/727/num/HSI_NavLocco")
set(Cdref_NAVLOCco, 0)

Cdref("STEER_FlapPilot",        "FJS/727/num/STEER_FlapPilot")
Cdref("STEER_FlapCoPilot",      "FJS/727/num/STEER_FlapCoPilot")

dref_f("dref_HSI_dme",          "sim/cockpit2/radios/indicators/hsi_dme_distance_nm_pilot")
Cdref("Cdref_HSIdmeA",          "FJS/727/num/HSIdmeA")
Cdref("Cdref_HSIdmeB",          "FJS/727/num/HSIdmeB")
Cdref("Cdref_HSIdmeC",          "FJS/727/num/HSIdmeC")
set(Cdref_HSIdmeA,0)
set(Cdref_HSIdmeB,0)
set(Cdref_HSIdmeC,0)

dref_f("dref_HSI_dmeCo",        "sim/cockpit2/radios/indicators/hsi_dme_distance_nm_copilot")
Cdref("Cdref_HSIdmeACo",        "FJS/727/num/HSIdmeACo")
Cdref("Cdref_HSIdmeBCo",        "FJS/727/num/HSIdmeBCo")
Cdref("Cdref_HSIdmeCCo",        "FJS/727/num/HSIdmeCCo")
set(Cdref_HSIdmeACo,0)
set(Cdref_HSIdmeBCo,0)
set(Cdref_HSIdmeCCo,0)

dref_f("dref_Nav2DME",          "sim/cockpit2/radios/indicators/nav2_dme_distance_nm")
Cdref("Cdref_Nav2DMEA",         "FJS/727/num/Nav2DMEA")
Cdref("Cdref_Nav2DMEB",         "FJS/727/num/Nav2DMEB")
Cdref("Cdref_Nav2DMEC",         "FJS/727/num/Nav2DMEC")
set(Cdref_Nav2DMEA,0)
set(Cdref_Nav2DMEB,0)
set(Cdref_Nav2DMEC,0)

dref_f("dref_Nav1DME",          "sim/cockpit2/radios/indicators/nav1_dme_distance_nm")
Cdref("Cdref_Nav1DMEA",         "FJS/727/num/Nav1DMEA")
Cdref("Cdref_Nav1DMEB",         "FJS/727/num/Nav1DMEB")
Cdref("Cdref_Nav1DMEC",         "FJS/727/num/Nav1DMEC")
set(Cdref_Nav1DMEA,0)
set(Cdref_Nav1DMEB,0)
set(Cdref_Nav1DMEC,0)

dref_i("dref_PhasDME",          "sim/cockpit2/radios/indicators/hsi_has_dme_pilot")
Cdref("Cdref_PhasDME",          "FJS/727/num/PhasDME")
set(Cdref_PhasDME,0)

dref_i("dref_PhasDMECo",        "sim/cockpit2/radios/indicators/hsi_has_dme_copilot")
Cdref("Cdref_PhasDMECo",        "FJS/727/num/PhasDMECo")
set(Cdref_PhasDMECo,0)

dref_f("dref_AltPilot",         "sim/cockpit2/gauges/indicators/altitude_ft_pilot")
Cdref("Cdref_AltPilotA",        "FJS/727/num/AltPilotA")
Cdref("Cdref_AltPilotB",        "FJS/727/num/AltPilotB")

dref_f("dref_AltcoPilot",       "sim/cockpit2/gauges/indicators/altitude_ft_copilot")
Cdref("Cdref_AltcoPilotA",      "FJS/727/num/AltcoPilotA")
Cdref("Cdref_AltcoPilotB",      "FJS/727/num/AltcoPilotB")


dref_f("dref_fuelFlowkgs1",     "sim/cockpit2/engine/indicators/fuel_flow_kg_sec[0]")
dref_f("dref_fuelFlowkgs2",     "sim/cockpit2/engine/indicators/fuel_flow_kg_sec[1]")
dref_f("dref_fuelFlowkgs3",     "sim/cockpit2/engine/indicators/fuel_flow_kg_sec[2]")
Cdref("Cdref_FuelFlowPPH1",     "FJS/727/num/fuelFlowPPH1")
Cdref("Cdref_FuelFlowPPH2",     "FJS/727/num/fuelFlowPPH2")
Cdref("Cdref_FuelFlowPPH3",     "FJS/727/num/fuelFlowPPH3")


dref_f("dref_OAT",              "sim/cockpit2/temperature/outside_air_temp_degc")
Cdref("Cdref_TASA",             "FJS/727/num/TASA")
Cdref("Cdref_TASB",             "FJS/727/num/TASB")
Cdref("Cdref_TASC",             "FJS/727/num/TASC")
set(Cdref_TASA,0)
set(Cdref_TASB,0)
set(Cdref_TASC,0)

--flip switch datarefs

Cdref("FlipMo01",               "FJS/727/num/FlipMo_01")
Cdref("FlipPo01",               "FJS/727/num/FlipPo_01")

Cdref("FlipMo02",               "FJS/727/num/FlipMo_02")
Cdref("FlipPo02",               "FJS/727/num/FlipPo_02")

Cdref("FlipMo03",               "FJS/727/num/FlipMo_03")
Cdref("FlipPo03",               "FJS/727/num/FlipPo_03")

Cdref("FlipMo04",               "FJS/727/num/FlipMo_04")
Cdref("FlipPo04",               "FJS/727/num/FlipPo_04")
 
Cdref("FlipMo05",               "FJS/727/num/FlipMo_05")
Cdref("FlipPo05",               "FJS/727/num/FlipPo_05")

Cdref("FlipMo06",               "FJS/727/num/FlipMo_06")
Cdref("FlipPo06",               "FJS/727/num/FlipPo_06")

Cdref("FlipMo07",               "FJS/727/num/FlipMo_07")
Cdref("FlipPo07",               "FJS/727/num/FlipPo_07")

Cdref("FlipMo08",               "FJS/727/num/FlipMo_08")
Cdref("FlipPo08",               "FJS/727/num/FlipPo_08")

Cdref("FlipMo09",               "FJS/727/num/FlipMo_09")
Cdref("FlipPo09",               "FJS/727/num/FlipPo_09")

Cdref("FlipMo10",               "FJS/727/num/FlipMo_10")
Cdref("FlipPo10",               "FJS/727/num/FlipPo_10")

Cdref("FlipMo11",               "FJS/727/num/FlipMo_11")
Cdref("FlipPo11",               "FJS/727/num/FlipPo_11")

Cdref("FlipMo12",               "FJS/727/num/FlipMo_12")
Cdref("FlipPo12",               "FJS/727/num/FlipPo_12")

Cdref("FlipMo13",               "FJS/727/num/FlipMo_13")
Cdref("FlipPo13",               "FJS/727/num/FlipPo_13")

Cdref("FlipMo14",               "FJS/727/num/FlipMo_14")
Cdref("FlipPo14",               "FJS/727/num/FlipPo_14")

Cdref("FlipMo15",               "FJS/727/num/FlipMo_15")
Cdref("FlipPo15",               "FJS/727/num/FlipPo_15")

Cdref("FlipMo16",               "FJS/727/num/FlipMo_16")
Cdref("FlipPo16",               "FJS/727/num/FlipPo_16")

Cdref("FlipMo17",               "FJS/727/num/FlipMo_17")
Cdref("FlipPo17",               "FJS/727/num/FlipPo_17")

Cdref("FlipMo18",               "FJS/727/num/FlipMo_18")
Cdref("FlipPo18",               "FJS/727/num/FlipPo_18")

Cdref("FlipMo19",               "FJS/727/num/FlipMo_19")
Cdref("FlipPo19",               "FJS/727/num/FlipPo_19")

Cdref("FlipMo20",               "FJS/727/num/FlipMo_20")
Cdref("FlipPo20",               "FJS/727/num/FlipPo_20")

Cdref("FlipMo21",               "FJS/727/num/FlipMo_21")
Cdref("FlipPo21",               "FJS/727/num/FlipPo_21")
set(FlipPo21, 1)
set(FlipMo21, 1)

Cdref("FlipMo22",               "FJS/727/num/FlipMo_22")
Cdref("FlipPo22",               "FJS/727/num/FlipPo_22")

Cdref("FlipMo23",               "FJS/727/num/FlipMo_23")
Cdref("FlipPo23",               "FJS/727/num/FlipPo_23")

Cdref("FlipMo24",               "FJS/727/num/FlipMo_24")
Cdref("FlipPo24",               "FJS/727/num/FlipPo_24")

Cdref("FlipMo25",               "FJS/727/num/FlipMo_25")
Cdref("FlipPo25",               "FJS/727/num/FlipPo_25")

Cdref("StartValveLiteEng1",     "FJS/727/Eng/StartValveLiteEng1")
Cdref("StartValveLiteEng2",     "FJS/727/Eng/StartValveLiteEng2")
Cdref("StartValveLiteEng3",     "FJS/727/Eng/StartValveLiteEng3")
local valvelite1 = 0
local valvelite2 = 0
local valvelite3 = 0

dref_i("autoPilotDisconnect",   "sim/cockpit2/annunciators/autopilot_disconnect")
dref_i("simMDAlite1",           "sim/cockpit2/gauges/indicators/radio_altimeter_dh_lit_pilot")
dref_i("simMDAlite2",           "sim/cockpit2/gauges/indicators/radio_altimeter_dh_lit_copilot")
dref_i("GPWS",                  "sim/cockpit2/annunciators/GPWS")
Cdref("APDisconnectLite",       "FJS/727/num/APDisconnectLite")
Cdref("MDAlite1",               "FJS/727/num/MDAlite1")
Cdref("MDAlite2",               "FJS/727/num/MDAlite2")
Cdref("Altlite",                "FJS/727/num/Altlite")
Cdref("PULLUPlite",             "FJS/727/num/PULLUPlite")
Cdref("BELOWGSlite",            "FJS/727/num/BELOWGSlite")

dref_i("simREverseOn1",         "sim/cockpit2/annunciators/reverser_on[0]")
dref_i("simREverseOn2",         "sim/cockpit2/annunciators/reverser_on[1]")
dref_i("simREverseOn3",         "sim/cockpit2/annunciators/reverser_on[2]")
Cdref("ReverserLite1",          "FJS/727/num/ReverserLite1")
Cdref("ReverserLite2",          "FJS/727/num/ReverserLite2")
Cdref("ReverserLite3",          "FJS/727/num/ReverserLite3")


dref_f("BarometerPilot",        "sim/cockpit2/gauges/actuators/barometer_setting_in_hg_pilot")
dref_f("BarometerCoPilot",      "sim/cockpit2/gauges/actuators/barometer_setting_in_hg_copilot")
local BaroMilibars1 = 0
local BaroMilibars2 = 0

Cdref("BaroInchRollPilotA",          "FJS/727/num/BaroInchRollPilotA")
Cdref("BaroInchRollPilotB",          "FJS/727/num/BaroInchRollPilotB")
Cdref("BaroInchRollPilotC",          "FJS/727/num/BaroInchRollPilotC")
Cdref("BaroInchRollPilotD",          "FJS/727/num/BaroInchRollPilotD")
Cdref("BaroInchRollCoPilotA",        "FJS/727/num/BaroInchRollCoPilotA")
Cdref("BaroInchRollCoPilotB",        "FJS/727/num/BaroInchRollCoPilotB")
Cdref("BaroInchRollCoPilotC",        "FJS/727/num/BaroInchRollCoPilotC")
Cdref("BaroInchRollCoPilotD",        "FJS/727/num/BaroInchRollCoPilotD")

Cdref("BaroMillRollPilotA",          "FJS/727/num/BaroMillRollPilotA")
Cdref("BaroMillRollPilotB",          "FJS/727/num/BaroMillRollPilotB")
Cdref("BaroMillRollPilotC",          "FJS/727/num/BaroMillRollPilotC")
Cdref("BaroMillRollPilotD",          "FJS/727/num/BaroMillRollPilotD")
Cdref("BaroMillRollCoPilotA",        "FJS/727/num/BaroMillRollCoPilotA")
Cdref("BaroMillRollCoPilotB",        "FJS/727/num/BaroMillRollCoPilotB")
Cdref("BaroMillRollCoPilotC",        "FJS/727/num/BaroMillRollCoPilotC")
Cdref("BaroMillRollCoPilotD",        "FJS/727/num/BaroMillRollCoPilotD")

dref_i("RMI_LeftPilotSet",           "sim/cockpit2/radios/actuators/RMI_left_use_adf_pilot")
dref_i("RMI_LeftCoPilotSet",         "sim/cockpit2/radios/actuators/RMI_Left_use_adf_copilot")
dref_i("RMI_RightPilotSet",          "sim/cockpit2/radios/actuators/RMI_right_use_adf_pilot")
dref_i("RMI_RightCoPilotSet",        "sim/cockpit2/radios/actuators/RMI_right_use_adf_copilot")

dref_f("ADF1Bearing",                "sim/cockpit2/radios/indicators/adf1_relative_bearing_deg")
dref_f("ADF2Bearing",                "sim/cockpit2/radios/indicators/adf2_relative_bearing_deg")
dref_f("NAV1Bearing",                "sim/cockpit2/radios/indicators/nav1_relative_bearing_deg")
dref_f("NAV2Bearing",                "sim/cockpit2/radios/indicators/nav2_relative_bearing_deg")

Cdref("RMINeedleLeftPilot",          "FJS/727/num/RMINeedleLeftPilot")
Cdref("RMINeedleRightPilot",         "FJS/727/num/RMINeedleRightPilot")
Cdref("RMINeedleLeftCoPilot",        "FJS/727/num/RMINeedleLeftCoPilot")
Cdref("RMINeedleRightCoPilot",       "FJS/727/num/RMINeedleRightCoPilot")


dref_f("Elev1deg",                   "sim/flightmodel2/wing/elevator1_deg[8]")

--misc switches
Cdref("FltCntlWarnTestSwitch",       "FJS/727/num/FltCntlWarnTestSwitch")
Cdref("GearAntiSkidSwitch",          "FJS/727/num/GearAntiSkidSwitch")
Cdref("PAMoniterSpeakerSwitch",      "FJS/727/num/PAMoniterSpeakerSwitch")
Cdref("PAGRoundCrewCallButton",      "FJS/727/num/PAGRoundCrewCallButton")
Cdref("PACabAtendButton",            "FJS/727/num/PACabAtendButton")
Cdref("RainREpelButtonR",            "FJS/727/num/RainREpelButtonR")
Cdref("RainREpelButtonL",            "FJS/727/num/RainREpelButtonL")
Cdref("StallWarningTestSwitch",      "FJS/727/num/StallWarningTestSwitch")
Cdref("StrutOverheatTestButton",     "FJS/727/num/StrutOverheatTestButton")
Cdref("PaxOxySwitch",                "FJS/727/num/PaxOxySwitch")
Cdref("MasterCaution",               "FJS/727/num/MasterCaution")


--Anims
Cdref("StallWarningTestSpinner",     "FJS/727/num/StallWarningTestSpinner")
Cdref("OxygenPressNeedles",          "FJS/727/num/OxygenPressNeedles")

--lights
Cdref("StallWarningLight",           "FJS/727/num/StallWarningLight")
Cdref("GearAntiSkidLights",          "FJS/727/num/GearAntiSkidLights")
Cdref("PAlightblue",                 "FJS/727/num/PAlightblue")
Cdref("PAlightorange",               "FJS/727/num/PAlightorange")
Cdref("EngAccessDoorLite",           "FJS/727/num/EngAccessDoorLite")
Cdref("StrutOverHeatLites",          "FJS/727/num/StrutOverHeatLites")
Cdref("PaxOxyOnLite",                "FJS/727/num/PaxOxyOnLite")
Cdref("MasterCautionLite",           "FJS/727/num/MasterCautionLite")


dref_i("MasterAccept",               "sim/cockpit/warnings/annunciators/master_accept")
Cdref("CSDSwitch",                   "FJS/727/num/CSDSwitch")


dref_f("dref_EPR1",          "sim/cockpit2/engine/indicators/EPR_ratio[0]")
Cdref("myEPR1",              "FJS/727/num/myEPR1")
Cdref("EPR1RollA",           "FJS/727/num/EPR1RollA")
Cdref("EPR1RollB",           "FJS/727/num/EPR1RollB")
Cdref("EPR1RollC",           "FJS/727/num/EPR1RollC")

dref_f("dref_EPR2",          "sim/cockpit2/engine/indicators/EPR_ratio[1]")
Cdref("myEPR2",              "FJS/727/num/myEPR2")
Cdref("EPR2RollA",           "FJS/727/num/EPR2RollA")
Cdref("EPR2RollB",           "FJS/727/num/EPR2RollB")
Cdref("EPR2RollC",           "FJS/727/num/EPR2RollC")

dref_f("dref_EPR3",          "sim/cockpit2/engine/indicators/EPR_ratio[2]")
Cdref("myEPR3",              "FJS/727/num/myEPR3")
Cdref("EPR3RollA",           "FJS/727/num/EPR3RollA")
Cdref("EPR3RollB",           "FJS/727/num/EPR3RollB")
Cdref("EPR3RollC",           "FJS/727/num/EPR3RollC")

Cdref("AltBugSet1",                      "FJS/727/num/AltBugSet1")
Cdref("AltBugSet2",                      "FJS/727/num/AltBugSet2")
Cdref("AltBugSet3",                      "FJS/727/num/AltBugSet3")

Cdref("TimeSec",             "FJS/727/num/TimeSec")
Cdref("TimeMin",             "FJS/727/num/TimeMin")
Cdref("TimeHor",             "FJS/727/num/TimeHor")

dref_i("LocalSec",           "sim/cockpit2/clock_timer/local_time_seconds")
dref_i("LocalMin",           "sim/cockpit2/clock_timer/local_time_minutes")
dref_i("LocalHor",           "sim/cockpit2/clock_timer/local_time_hours")
dref_i("zuluSec",            "sim/cockpit2/clock_timer/zulu_time_seconds")
dref_i("zuluMin",            "sim/cockpit2/clock_timer/zulu_time_minutes")
dref_i("zuluHor",            "sim/cockpit2/clock_timer/zulu_time_hours")


Cdref("throt1",              "FJS/727/num/throt1")
Cdref("throt2",              "FJS/727/num/throt2")
Cdref("throt3",              "FJS/727/num/throt3")
dref_f("SimTHrotAct1",       "sim/cockpit2/engine/actuators/throttle_ratio[0]")
dref_f("SimTHrotAct2",       "sim/cockpit2/engine/actuators/throttle_ratio[1]")
dref_f("SimTHrotAct3",       "sim/cockpit2/engine/actuators/throttle_ratio[2]")

Cdref("RevHandle1",          "FJS/727/num/RevHandle1")
Cdref("RevHandle2",          "FJS/727/num/RevHandle2")
Cdref("RevHandle3",          "FJS/727/num/RevHandle3")

dref_f("SimRevRAtio1",       "sim/flightmodel2/engines/thrust_reverser_deploy_ratio[0]")
dref_f("SimRevRAtio2",       "sim/flightmodel2/engines/thrust_reverser_deploy_ratio[1]")
dref_f("SimRevRAtio3",       "sim/flightmodel2/engines/thrust_reverser_deploy_ratio[2]")

--#########################################################
---End of variable definment
----------------------------------------------------------

function MiscSystems()

    if get(SimRevRAtio1) > 0.01 then
        set(throt1, get(throt1)+((0 - get(throt1))*RR*10))
        set(RevHandle1, get(RevHandle1)+(((get(SimRevRAtio1)/10) + (myLerp(0,0,1,0.9,get(SimTHrotAct1))) - get(RevHandle1))*RR*10))
    else
        set(throt1, get(throt1)+((get(SimTHrotAct1) - get(throt1))*RR*10))
        set(RevHandle1, get(RevHandle1)+((0 - get(RevHandle1))*RR*10))
    end
    
    if get(SimRevRAtio2) > 0.01 then
        set(throt2, get(throt2)+((0 - get(throt2))*RR*10))
        set(RevHandle2, get(RevHandle2)+(((get(SimRevRAtio2)/10) + (myLerp(0,0,1,0.9,get(SimTHrotAct2))) - get(RevHandle2))*RR*10))
    else
        set(throt2, get(throt2)+((get(SimTHrotAct2) - get(throt2))*RR*10))
        set(RevHandle2, get(RevHandle2)+((0 - get(RevHandle2))*RR*10))
    end
    
    if get(SimRevRAtio3) > 0.01 then
        set(throt3, get(throt3)+((0 - get(throt3))*RR*10))
        set(RevHandle3, get(RevHandle3)+(((get(SimRevRAtio3)/10) + (myLerp(0,0,1,0.9,get(SimTHrotAct3))) - get(RevHandle3))*RR*10))
    else
        set(throt3, get(throt3)+((get(SimTHrotAct3) - get(throt3))*RR*10))
        set(RevHandle3, get(RevHandle3)+((0 - get(RevHandle3))*RR*10))
    end


    if get(StallWarningTestSwitch) == 1 then
        set(StallWarningTestSpinner, (get(StallWarningTestSpinner) + 150/(1/RR)))
        set(StallWarningLight, get(StallWarningLight)+((1*get(pow) - get(StallWarningLight))*RR*18))
    else
        set(StallWarningLight, get(StallWarningLight)+((0 - get(StallWarningLight))*RR*18))
    end
    set(OxygenPressNeedles, get(OxygenPressNeedles)+((19*get(pow) - get(OxygenPressNeedles))*RR*5))
    set(StrutOverHeatLites, get(StrutOverHeatLites)+((get(StrutOverheatTestButton)*get(pow) - get(StrutOverHeatLites))*RR*25))
    set(PaxOxyOnLite, get(PaxOxyOnLite)+((get(PaxOxySwitch)*get(pow) - get(PaxOxyOnLite))*RR*25))
    
    if get(MasterCaution) == 1 then
        commandOnce(findCommand("sim/annunciator/clear_master_accept"))
    end
    set(MasterCautionLite, get(MasterCautionLite)+((get(MasterAccept)*get(pow) - get(MasterCautionLite))*RR*25))
    
    if get(TimeIsZulu) == 0 then
        set(TimeSec, get(LocalSec))
        set(TimeMin, get(LocalMin))
        set(TimeHor, get(LocalHor)+(get(LocalMin)/60))
    else
        set(TimeSec, get(zuluSec))
        set(TimeMin, get(zuluMin))
        set(TimeHor, get(zuluHor)+(get(LocalMin)/60))
    end
    
end


function FlipSwitchCovers()
-- this controls the smooth animation of all the flip switches.
    local CCC = 0.1
    
    set(FlipMo01, get(FlipMo01)+((get(FlipPo01) - get(FlipMo01))*CCC))
    set(FlipMo02, get(FlipMo02)+((get(FlipPo02) - get(FlipMo02))*CCC))
    set(FlipMo03, get(FlipMo03)+((get(FlipPo03) - get(FlipMo03))*CCC))
    set(FlipMo04, get(FlipMo04)+((get(FlipPo04) - get(FlipMo04))*CCC))
    set(FlipMo05, get(FlipMo05)+((get(FlipPo05) - get(FlipMo05))*CCC))
    set(FlipMo06, get(FlipMo06)+((get(FlipPo06) - get(FlipMo06))*CCC))
    set(FlipMo07, get(FlipMo07)+((get(FlipPo07) - get(FlipMo07))*CCC))
    set(FlipMo08, get(FlipMo08)+((get(FlipPo08) - get(FlipMo08))*CCC))
    set(FlipMo09, get(FlipMo09)+((get(FlipPo09) - get(FlipMo09))*CCC))
    set(FlipMo10, get(FlipMo10)+((get(FlipPo10) - get(FlipMo10))*CCC))
    set(FlipMo11, get(FlipMo11)+((get(FlipPo11) - get(FlipMo11))*CCC))
    set(FlipMo12, get(FlipMo12)+((get(FlipPo12) - get(FlipMo12))*CCC))
    set(FlipMo13, get(FlipMo13)+((get(FlipPo13) - get(FlipMo13))*CCC))
    set(FlipMo14, get(FlipMo14)+((get(FlipPo14) - get(FlipMo14))*CCC))
    set(FlipMo15, get(FlipMo15)+((get(FlipPo15) - get(FlipMo15))*CCC))
    set(FlipMo16, get(FlipMo16)+((get(FlipPo16) - get(FlipMo16))*CCC))
    set(FlipMo17, get(FlipMo17)+((get(FlipPo17) - get(FlipMo17))*CCC))
    set(FlipMo18, get(FlipMo18)+((get(FlipPo18) - get(FlipMo18))*CCC))
    set(FlipMo19, get(FlipMo19)+((get(FlipPo19) - get(FlipMo19))*CCC))
    set(FlipMo20, get(FlipMo20)+((get(FlipPo20) - get(FlipMo20))*CCC))
    set(FlipMo21, get(FlipMo21)+((get(FlipPo21) - get(FlipMo21))*CCC))
    set(FlipMo22, get(FlipMo22)+((get(FlipPo22) - get(FlipMo22))*CCC))
    set(FlipMo23, get(FlipMo23)+((get(FlipPo23) - get(FlipMo23))*CCC))
    set(FlipMo24, get(FlipMo24)+((get(FlipPo24) - get(FlipMo24))*CCC))
    set(FlipMo25, get(FlipMo25)+((get(FlipPo25) - get(FlipMo25))*CCC))
    
    --Flip Guard Logic
    --If flip = 0 then we have to change the value of the switch underneith
    if get(FlipMo01) < 0.3 and get(HydPowAilSysA) == 1 then
        set(HydPowAilSysA, 0)
    end
    if get(FlipMo02) < 0.3 and get(HydPowAilSysB) == 1 then
        set(HydPowAilSysB, 0)
    end
    if get(FlipMo03) < 0.3 and get(HydPowSpoSysAINBD) == 1 then
        set(HydPowSpoSysAINBD, 0)
    end
    if get(FlipMo04) < 0.3 and get(HydPowSpoSysBOUTBD) == 1 then
        set(HydPowSpoSysBOUTBD, 0)
    end
    if get(FlipMo05) < 0.3 and get(HydPowElvSysA) == 1 then
        set(HydPowElvSysA, 0)
    end
    if get(FlipMo06) < 0.3 and get(HydPowElvSysB) == 1 then
        set(HydPowElvSysB, 0)
    end
    if get(FlipMo07) < 0.3 and get(HydPowRudSysA2) == 1 then
        set(HydPowRudSysA2, 0)
    end
    if get(FlipMo08) < 0.3 and get(HydPowRudSysA) == 1 then
        set(HydPowRudSysA, 0)
    end
    if get(FlipMo09) < 0.3 and get(HydPowRudSysB) == 1 then
        set(HydPowRudSysB, 0)
    end
    
    
    
    
    if get(FlipMo14) < 0.3 and get(GearAntiSkidSwitch) ~= 0 then
        set(EmerLightSwitch, 0)
    end
    if get(FlipMo15) < 0.3 and get(GearAntiSkidSwitch) == 0 then
        set(GearAntiSkidSwitch, 1)
    end
    
    if get(FlipMo16) < 0.3 and get(UpperYawSwitch) == 0 then
        set(UpperYawSwitch, 1)
    end
    if get(FlipMo17) < 0.3 and get(LowerYawSwitch) == 0 then
        set(LowerYawSwitch, 1)
    end
    
    if get(FlipMo21) < 0.3 and get(BatterOn) == 0 then
        set(BatterOn, 1)
    end
    if get(FlipMo22) < 0.3 and get(HydBrakeInterSwitch) == 1 then
        set(HydBrakeInterSwitch, 0)
    end
    
    if get(FlipMo23) < 0.3 and get(HydSysAEng2ShutoffSwitch) == 1 then
        set(HydSysAEng2ShutoffSwitch, 0)
    end
    if get(FlipMo24) < 0.3 and get(HydSysAEng1ShutoffSwitch) == 1 then
        set(HydSysAEng1ShutoffSwitch, 0)
    end
    
    if get(FlipMo25) < 0.3 and get(APU_autoFireShut) == 1 then
        set(APU_autoFireShut, 0)
    end

    

end





function FuelFlow()
--this changes fuel from from x-Planes kgs/sec to pounds per hour for use on the cockpit guages.
    set(Cdref_FuelFlowPPH1, get(dref_fuelFlowkgs1)*2.20462*60*60)
    set(Cdref_FuelFlowPPH2, get(dref_fuelFlowkgs2)*2.20462*60*60)
    set(Cdref_FuelFlowPPH3, get(dref_fuelFlowkgs3)*2.20462*60*60)
end

function obsAnalog()
    local obs = get(dref_obsPilot)
    
    local obsAPilot = math.floor((obs/100))
    set(Cdref_obsAPilot, get(Cdref_obsAPilot)+((obsAPilot - get(Cdref_obsAPilot))*RR*7))
    local obsBPilot = math.floor((obs/10))
    set(Cdref_obsBPilot, get(Cdref_obsBPilot)+((obsBPilot - get(Cdref_obsBPilot))*RR*10))
    local obsCPilot = math.floor((obs/1))
    set(Cdref_obsCPilot, get(Cdref_obsCPilot)+((obsCPilot - get(Cdref_obsCPilot))*RR*15))
    
    local Coobs = get(dref_obsCoPilot)
    
    local obsACoPilot = math.floor((Coobs/100))
    set(Cdref_obsACoPilot, get(Cdref_obsACoPilot)+((obsACoPilot - get(Cdref_obsACoPilot))*RR*7))
    local obsBCoPilot = math.floor((Coobs/10))
    set(Cdref_obsBCoPilot, get(Cdref_obsBCoPilot)+((obsBCoPilot - get(Cdref_obsBCoPilot))*RR*10))
    local obsCCoPilot = math.floor((Coobs/1))
    set(Cdref_obsCCoPilot, get(Cdref_obsCCoPilot)+((obsCCoPilot - get(Cdref_obsCCoPilot))*RR*15))

end


function lagyParty()
    
    set(Cdref_HSIGSFlag, get(Cdref_HSIGSFlag)+((get(dref_hsiGSFlag) - get(Cdref_HSIGSFlag))*RR*15))
    set(Cdref_NAVLOC,    get(Cdref_NAVLOC)   +((get(dref_NAVLOC)    - get(Cdref_NAVLOC))*RR*15))
    set(Cdref_NAVLOCco,    get(Cdref_NAVLOCco)   +((get(dref_NAVLOCco)    - get(Cdref_NAVLOCco))*RR*15))
    
    set(STEER_FlapPilot,    get(STEER_FlapPilot)+((get(TR_On1) - get(STEER_FlapPilot))*RR*15))
    set(STEER_FlapCoPilot,    get(STEER_FlapCoPilot)+((get(TR_On2) - get(STEER_FlapCoPilot))*RR*15))
    
    
end


function HSIdme()
    local hsidmeP = get(dref_HSI_dme)
    
    local hsidmeA = math.floor((hsidmeP/100))
    set(Cdref_HSIdmeA, get(Cdref_HSIdmeA)+((hsidmeA - get(Cdref_HSIdmeA))*RR*7))
    local hsidmeB = math.floor((hsidmeP/10))
    set(Cdref_HSIdmeB, get(Cdref_HSIdmeB)+((hsidmeB - get(Cdref_HSIdmeB))*RR*10))
    --local hsidmeC = math.floor((hsidmeP/1))
    set(Cdref_HSIdmeC, get(Cdref_HSIdmeC)+((hsidmeP - get(Cdref_HSIdmeC))*RR*15))
    
    set(Cdref_PhasDME, get(Cdref_PhasDME)+((get(dref_PhasDME) - get(Cdref_PhasDME))*RR*15))
    
    local hsidmePCo = get(dref_HSI_dmeCo)
    
    local hsidmeACo = math.floor((hsidmePCo/100))
    set(Cdref_HSIdmeACo, get(Cdref_HSIdmeACo)+((hsidmeACo - get(Cdref_HSIdmeACo))*RR*7))
    local hsidmeBCo = math.floor((hsidmePCo/10))
    set(Cdref_HSIdmeBCo, get(Cdref_HSIdmeBCo)+((hsidmeBCo - get(Cdref_HSIdmeBCo))*RR*10))
    --local hsidmeC = math.floor((hsidmeP/1))
    set(Cdref_HSIdmeCCo, get(Cdref_HSIdmeCCo)+((hsidmePCo - get(Cdref_HSIdmeCCo))*RR*15))
    
    set(Cdref_PhasDMECo, get(Cdref_PhasDMECo)+((get(dref_PhasDMECo) - get(Cdref_PhasDMECo))*RR*15))
end

function WheelLag()
    
    local alt = get(dref_AltPilot)
    local altA = math.floor((alt/10000)+.002)
    set(Cdref_AltPilotA, get(Cdref_AltPilotA)+((altA - get(Cdref_AltPilotA))*RR*10))
    local altB = math.floor((alt/1000)+.02)
    set(Cdref_AltPilotB, get(Cdref_AltPilotB)+((altB - get(Cdref_AltPilotB))*RR*10))
    
    local coalt = get(dref_AltcoPilot)
    local coaltA = math.floor((coalt/10000)+.002)
    set(Cdref_AltcoPilotA, get(Cdref_AltcoPilotA)+((coaltA - get(Cdref_AltcoPilotA))*RR*10))
    local coaltB = math.floor((coalt/1000)+.02)
    set(Cdref_AltcoPilotB, get(Cdref_AltcoPilotB)+((coaltB - get(Cdref_AltcoPilotB))*RR*10))
    
    
    local Nav2dme = get(dref_Nav2DME)
    
    local Nav2dmeA = math.floor((Nav2dme/100))
    set(Cdref_Nav2DMEA, get(Cdref_Nav2DMEA)+((Nav2dmeA - get(Cdref_Nav2DMEA))*RR*10))
    local Nav2dmeB = math.floor((Nav2dme/10))
    set(Cdref_Nav2DMEB, get(Cdref_Nav2DMEB)+((Nav2dmeB - get(Cdref_Nav2DMEB))*RR*15))

    set(Cdref_Nav2DMEC, get(Cdref_Nav2DMEC)+((Nav2dme - get(Cdref_Nav2DMEC))*RR*20))
    
    local Nav1dme = get(dref_Nav1DME)
    
    local Nav1dmeA = math.floor((Nav1dme/100))
    set(Cdref_Nav1DMEA, get(Cdref_Nav1DMEA)+((Nav1dmeA - get(Cdref_Nav1DMEA))*RR*10))
    local Nav1dmeB = math.floor((Nav1dme/10))
    set(Cdref_Nav1DMEB, get(Cdref_Nav1DMEB)+((Nav1dmeB - get(Cdref_Nav1DMEB))*RR*15))

    set(Cdref_Nav1DMEC, get(Cdref_Nav1DMEC)+((Nav1dme - get(Cdref_Nav1DMEC))*RR*20))
    
    set(EPR1RollA, get(EPR1RollA)+((math.floor(get(myEPR1)) - get(EPR1RollA))*RR*10))
    set(EPR1RollB, get(EPR1RollB)+((math.floor(get(myEPR1)*10) - get(EPR1RollB))*RR*14))
    set(EPR1RollC, get(EPR1RollC)+((get(myEPR1)*100 - get(EPR1RollC))*RR*18))
    
    set(EPR2RollA, get(EPR2RollA)+((math.floor(get(myEPR2)) - get(EPR2RollA))*RR*10))
    set(EPR2RollB, get(EPR2RollB)+((math.floor(get(myEPR2)*10) - get(EPR2RollB))*RR*14))
    set(EPR2RollC, get(EPR2RollC)+((get(myEPR2)*100 - get(EPR2RollC))*RR*18))
    
    set(EPR3RollA, get(EPR3RollA)+((math.floor(get(myEPR3)) - get(EPR3RollA))*RR*10))
    set(EPR3RollB, get(EPR3RollB)+((math.floor(get(myEPR3)*10) - get(EPR3RollB))*RR*14))
    set(EPR3RollC, get(EPR3RollC)+((get(myEPR3)*100 - get(EPR3RollC))*RR*18))
    

end


function TASroll()

    local m =     get(dref_machno)
    local oat =   get(dref_OAT)
    local tas = 661.47 * m * math.sqrt((oat + 273.15) / 288.15)
    
    
    local TASfloorA = math.floor((tas/100))
    set(Cdref_TASA, get(Cdref_TASA)+((TASfloorA - get(Cdref_TASA))*RR*7))
    local TASfloorB = math.floor((tas/10))
    set(Cdref_TASB, get(Cdref_TASB)+((TASfloorB - get(Cdref_TASB))*RR*10))

    set(Cdref_TASC, get(Cdref_TASC)+((tas - get(Cdref_TASC))*RR*15))
    
end

function startValveLights()
    if get(ignitionKey1) == 4 then
        valvelite1 = 1
    else
        valvelite1 = 0
    end
    if get(ignitionKey2) == 4 then
        valvelite2 = 1
    else
        valvelite2 = 0
    end
    if get(ignitionKey3) == 4 then
        valvelite3 = 1
    else
        valvelite3 = 0
    end
    
    set(StartValveLiteEng1, get(StartValveLiteEng1)+((valvelite1*get(pow) - get(StartValveLiteEng1))*RR*25))
    set(StartValveLiteEng2, get(StartValveLiteEng2)+((valvelite2*get(pow) - get(StartValveLiteEng2))*RR*25))
    set(StartValveLiteEng3, get(StartValveLiteEng3)+((valvelite3*get(pow) - get(StartValveLiteEng3))*RR*25))

end

function Annunciators()
    if get(dref_tireDef3) ~= 0 then
        set(MDAlite1, get(MDAlite1)+((0 - get(MDAlite1))*RR*18))
        set(MDAlite2, get(MDAlite2)+((0 - get(MDAlite2))*RR*18))
    else
        set(MDAlite1, get(MDAlite1)+((get(simMDAlite1)*get(pow) - get(MDAlite1))*RR*18))
        set(MDAlite2, get(MDAlite2)+((get(simMDAlite2)*get(pow) - get(MDAlite2))*RR*18))   
    end
    
    local Alt1 = get(dref_AltPilot)
    local AltSel = get(altDialFeet)
    if get(AltStatus) > 0 then
        if  (Alt1 > (AltSel - 1000) and Alt1 < (AltSel - 300)) or (Alt1 < (AltSel + 1000) and Alt1 > (AltSel + 300)) then
            set(Altlite, get(Altlite)+((1*get(pow) - get(Altlite))*RR*18))
        else
            set(Altlite, get(Altlite)+((0*get(pow) - get(Altlite))*RR*18))
        end
    end

    set(APDisconnectLite, get(APDisconnectLite)+((get(autoPilotDisconnect)*get(pow) - get(APDisconnectLite))*RR*18))
    
    set(PULLUPlite, get(PULLUPlite)+((get(GPWS)*get(pow) - get(PULLUPlite))*RR*18))
    set(ReverserLite1, get(ReverserLite1)+((get(simREverseOn1)*get(pow) - get(ReverserLite1))*RR*18))
    set(ReverserLite2, get(ReverserLite2)+((get(simREverseOn2)*get(pow) - get(ReverserLite2))*RR*18))
    set(ReverserLite3, get(ReverserLite3)+((get(simREverseOn3)*get(pow) - get(ReverserLite3))*RR*18))

    
end

function BarometerStuff()
    
    BaroMilibars1 = get(BarometerPilot)*33.8637526
    BaroMilibars2 = get(BarometerCoPilot)*33.8637526
    
    set(BaroInchRollPilotA, get(BaroInchRollPilotA)+((math.floor((get(BarometerPilot)/10)) - get(BaroInchRollPilotA))*RR*8))
    set(BaroInchRollPilotB, get(BaroInchRollPilotB)+((math.floor((get(BarometerPilot)/1)) - get(BaroInchRollPilotB))*RR*8))
    set(BaroInchRollPilotC, get(BaroInchRollPilotC)+((math.floor((get(BarometerPilot)*10)+.01) - get(BaroInchRollPilotC))*RR*8))
    set(BaroInchRollPilotD, get(BaroInchRollPilotD)+(((get(BarometerPilot)*100) - get(BaroInchRollPilotD))*RR*8))
    
    set(BaroMillRollPilotA, get(BaroMillRollPilotA)+((math.floor((BaroMilibars1/1000)+.0005) - get(BaroMillRollPilotA))*RR*8))
    set(BaroMillRollPilotB, get(BaroMillRollPilotB)+((math.floor((BaroMilibars1/100)+.005) - get(BaroMillRollPilotB))*RR*8))
    set(BaroMillRollPilotC, get(BaroMillRollPilotC)+((math.floor((BaroMilibars1/10)+.05) - get(BaroMillRollPilotC))*RR*8))
    set(BaroMillRollPilotD, get(BaroMillRollPilotD)+((BaroMilibars1 - get(BaroMillRollPilotD))*RR*8))
    
    set(BaroInchRollCoPilotA, get(BaroInchRollCoPilotA)+((math.floor((get(BarometerCoPilot)/10)) - get(BaroInchRollCoPilotA))*RR*8))
    set(BaroInchRollCoPilotB, get(BaroInchRollCoPilotB)+((math.floor((get(BarometerCoPilot)/1)) - get(BaroInchRollCoPilotB))*RR*8))
    set(BaroInchRollCoPilotC, get(BaroInchRollCoPilotC)+((math.floor((get(BarometerCoPilot)*10)+.01) - get(BaroInchRollCoPilotC))*RR*8))
    set(BaroInchRollCoPilotD, get(BaroInchRollCoPilotD)+(((get(BarometerCoPilot)*100) - get(BaroInchRollCoPilotD))*RR*8))
    
    set(BaroMillRollCoPilotA, get(BaroMillRollCoPilotA)+((math.floor((BaroMilibars2/1000)+.0005) - get(BaroMillRollCoPilotA))*RR*8))
    set(BaroMillRollCoPilotB, get(BaroMillRollCoPilotB)+((math.floor((BaroMilibars2/100)+.005) - get(BaroMillRollCoPilotB))*RR*8))
    set(BaroMillRollCoPilotC, get(BaroMillRollCoPilotC)+((math.floor((BaroMilibars2/10)+.05) - get(BaroMillRollCoPilotC))*RR*8))
    set(BaroMillRollCoPilotD, get(BaroMillRollCoPilotD)+((BaroMilibars2 - get(BaroMillRollCoPilotD))*RR*8))

end

function RMISystem()
    local PilotLeftNeed = 0
    local PilotRightNeed = 0
    local CoPilotLeftNeed = 0
    local CoPilotRightNeed = 0

    if get(RMI_LeftPilotSet) == 0 then
        PilotLeftNeed = get(NAV1Bearing)
    end
    if get(RMI_LeftPilotSet) == 1 then
        PilotLeftNeed = get(ADF1Bearing)
    end
    if get(RMI_RightPilotSet) == 0 then
        PilotRightNeed = get(NAV2Bearing)
    end
    if get(RMI_RightPilotSet) == 1 then
        PilotRightNeed = get(ADF2Bearing)
    end 
    
    if get(RMI_LeftCoPilotSet) == 1 then
        CoPilotLeftNeed = get(ADF1Bearing)
    end
    if get(RMI_LeftCoPilotSet) == 0 then
        CoPilotLeftNeed = get(NAV1Bearing)
    end
    if get(RMI_RightCoPilotSet) == 0 then
        CoPilotRightNeed = get(NAV2Bearing)
    end
    if get(RMI_RightCoPilotSet) == 1 then
        CoPilotRightNeed = get(ADF2Bearing)
    end
    
    set(RMINeedleLeftPilot, get(RMINeedleLeftPilot)+((PilotLeftNeed+90 - get(RMINeedleLeftPilot))*RR*2))
    set(RMINeedleRightPilot, get(RMINeedleRightPilot)+((PilotRightNeed - get(RMINeedleRightPilot))*RR*2))
    set(RMINeedleLeftCoPilot, get(RMINeedleLeftCoPilot)+((CoPilotLeftNeed+90 - get(RMINeedleLeftCoPilot))*RR*2))
    set(RMINeedleRightCoPilot, get(RMINeedleRightCoPilot)+((CoPilotRightNeed - get(RMINeedleRightCoPilot))*RR*2))

    
end



function update()

    RR = get(frameRate)
    
    --EPRset1 = get(dref_EPR1) * get(EPRchange)
    --EPRset2 = get(dref_EPR2) * get(EPRchange)
    --EPRset3 = get(dref_EPR3) * get(EPRchange)
    set(myEPR1, myLerp(1,1,get(EPRsimTO),get(EPRchange),get(dref_EPR1)))
    set(myEPR2, myLerp(1,1,get(EPRsimTO),get(EPRchange),get(dref_EPR2)))
    set(myEPR3, myLerp(1,1,get(EPRsimTO),get(EPRchange),get(dref_EPR3)))
    
    startValveLights()
    obsAnalog()
    lagyParty()
    HSIdme()
    WheelLag()
    MiscSystems()
    
    
    FuelFlow()
    TASroll()
    FlipSwitchCovers()
    Annunciators()
    BarometerStuff()
    RMISystem()
    
    --Setup defaults based on sim condition
    if get(BatterOn) == 1 and get(flighttime) < 5 then
        set(FlipPo21, 0)
        set(FlipMo21, 0)
    end
    if get(BatterOn) == 0 and get(flighttime) < 5 then
        set(FlipPo21, 1)
        set(FlipMo21, 1)
    end
    
    
    if get(dref_obsPilot) > 360 then set(dref_obsPilot, get(dref_obsPilot) - 360) end
    if get(dref_obsPilot) < 0 then set(dref_obsPilot, get(dref_obsPilot)+360) end
    if get(dref_obsCoPilot) > 360 then set(dref_obsCoPilot, get(dref_obsCoPilot) - 360) end
    if get(dref_obsCoPilot) < 0 then set(dref_obsCoPilot, get(dref_obsCoPilot)+360) end

    --mixHandleLag() moved to fuel.lua
end