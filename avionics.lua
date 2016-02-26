--727-200 Master

size = { 2048, 2048 }


function dref_f(drefNamef, drefLocalf)
    defineProperty(drefNamef, globalPropertyf(drefLocalf))
end

function dref_i(drefNamef, drefLocalf)
    defineProperty(drefNamef, globalPropertyi(drefLocalf))
end

function dref_s(drefNames, drefLocalf)
    defineProperty(drefNames, globalPropertys(drefLocalf))
end

function Cdref(drefNamec, drefLocalc)
    defineProperty(drefNamec, createGlobalPropertyf(drefLocalc))
end

function Cdref_i(drefNameI, drefLocalI)
    defineProperty(drefNameI, createGlobalPropertyi(drefLocalI))
end

function CCom(Comref)
    --Send only strings, and comDose can == 1 for default description
    --Will return the find command
    createCommand(Comref, "No decription given")
    return findCommand(Comref)
end

function regCom(CommandName,FuncName)
    --shortens the registering process.
    registerCommandHandler(CommandName, 1, FuncName);
end

function myLerp(x0,y0,x1,y1,x)
    --linear interpolation function, can be used for other things
    --x0 is low alt
    --x1 is high alt
    --y0 is low speed
    --y1 is high speed
    --x is the imput and will return y, note x is relaed to altitude.
    return (((x - x0) * ((y1 - y0)/(x1 - x0))) + y0)
end



--Set base values here.
--base values for each variant.
Cdref("EPRchange",       "FJS/727/top/EPRchange")
Cdref("EPRsimTO",        "FJS/727/top/EPRsimTO")
--200adv
-- this is to set MAC N1 100.1% on 9A 102.4% on 15 and 17
--set(globalPropertyf("sim/aircraft/engine/acf_throtmax_FWD"), 1.0362) 
--set(EPRchange, 2.13) -- this is takeoff EPR
--set(EPRsimTO, 2.314) -- this is the sims takeoff EPR
--100
-- this is to set MAC N1 100.1% on 9A 102.4% on 15 and 17
set(globalPropertyf("sim/aircraft/engine/acf_throtmax_FWD"), 1.00) 
set(EPRchange, 2.038) -- this is takeoff EPR
set(EPRsimTO, 2.223) -- this is the sims takeoff EPR
--200F
--set(globalPropertyf("sim/aircraft/engine/acf_throtmax_FWD"), 1.0362) 
--set(EPRchange, 2.185) -- this is takeoff EPR
--set(EPRsimTO, 2.358) -- this is the sims takeoff EPR




dref_f("frameRate",  "sim/operation/misc/frame_rate_period")
Cdref("pow", "FJS/727/Elec/pow")
dref_i("override_control_surfaces",  "sim/operation/override/override_control_surfaces")

--Define Global Variables below
--
Cdref("CIVAinstalled",          "de/philippmuenzel/xciva/version")
Cdref("CIVA_toggle",            "de/philippmuenzel/xciva/popup")

Cdref("dummy", "FJS/B727/dummy")
Cdref("dummy1", "FJS/B727/dummy1")
Cdref("dummy2", "FJS/B727/dummy2")

Cdref("TimeIsZulu",            "FJS/727/Options/TimeIsZulu")

--dref_f("dref_maxForwardThrust","sim/aircraft/engine/acf_throtmax_FWD")

dref_f("dref_tireDef1",    "sim/flightmodel2/gear/tire_vertical_deflection_mtr[0]")
dref_f("dref_tireDef2",    "sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]")
dref_f("dref_tireDef3",    "sim/flightmodel2/gear/tire_vertical_deflection_mtr[2]")
--dref_f("dref_payload",     "sim/flightmodel/weight/m_fixed")
--dref_f("dref_tank1Weight", "sim/flightmodel/weight/m_fuel1")
--dref_f("dref_tank2Weight", "sim/flightmodel/weight/m_fuel2")
--dref_f("dref_tank3Weight", "sim/flightmodel/weight/m_fuel3")
dref_f("dref_ail2Up",      "sim/aircraft/controls/acf_ail2_up")
dref_f("dref_ail2Dn",      "sim/aircraft/controls/acf_ail2_dn")
dref_f("dref_flapDeflection", "sim/flightmodel2/controls/flap2_deploy_ratio")
dref_f("dref_N21",            "sim/cockpit2/engine/indicators/N2_percent[0]")
dref_f("dref_N22",            "sim/cockpit2/engine/indicators/N2_percent[1]")
dref_f("dref_N23",            "sim/cockpit2/engine/indicators/N2_percent[2]")
dref_f("dref_N11",            "sim/cockpit2/engine/indicators/N1_percent[0]")
dref_f("dref_N12",            "sim/cockpit2/engine/indicators/N1_percent[1]")
dref_f("dref_N13",            "sim/cockpit2/engine/indicators/N1_percent[2]")
dref_i("dref_igni1",          "sim/cockpit2/engine/actuators/ignition_key[0]")
dref_i("dref_igni2",          "sim/cockpit2/engine/actuators/ignition_key[1]")
dref_i("dref_igni3",          "sim/cockpit2/engine/actuators/ignition_key[2]")
dref_i("dref_hasBleedAir",    "sim/aircraft/overflow/acf_has_full_bleed_air")
dref_f("dref_FFkgsec1",       "sim/cockpit2/engine/indicators/fuel_flow_kg_sec[0]")
dref_f("dref_FFkgsec2",       "sim/cockpit2/engine/indicators/fuel_flow_kg_sec[1]")
dref_f("dref_FFkgsec3",       "sim/cockpit2/engine/indicators/fuel_flow_kg_sec[2]")
dref_f("dref_mixtureRatio1",  "sim/cockpit2/engine/actuators/mixture_ratio[0]")
dref_f("dref_mixtureRatio2",  "sim/cockpit2/engine/actuators/mixture_ratio[1]")
dref_f("dref_mixtureRatio3",  "sim/cockpit2/engine/actuators/mixture_ratio[2]")
dref_f("EPREng1",             "sim/cockpit2/engine/indicators/EPR_ratio[0]")
dref_f("EPREng2",             "sim/cockpit2/engine/indicators/EPR_ratio[1]")
dref_f("EPREng3",             "sim/cockpit2/engine/indicators/EPR_ratio[2]")


dref_f("dref_thrust_n", "sim/cockpit2/engine/indicators/thrust_n[0]")
Cdref("Cdref_thrustLB", "FJS/727/engine/thrustLB")

dref_f("totalTime", "sim/time/total_running_time_sec")
dref_f("dref_OAT",  "sim/cockpit2/temperature/outside_air_temp_degc")
dref_f("dref_TAT",  "sim/weather/temperature_le_c")
dref_f("dref_QNH",  "sim/weather/barometer_sealevel_inhg")

dref_i("dref_screenHeight", "sim/graphics/view/window_height")
dref_i("dref_screenWidth", "sim/graphics/view/window_width")
dref_f("dref_airspeedIAS", "sim/cockpit2/gauges/indicators/airspeed_kts_pilot")
dref_f("dref_groundspeed", "sim/flightmodel/position/groundspeed")
dref_f("dref_landingGearRatio1", "sim/flightmodel2/gear/deploy_ratio[0]")
dref_f("dref_landingGearRatio2", "sim/flightmodel2/gear/deploy_ratio[1]")
dref_f("dref_landingGearRatio3", "sim/flightmodel2/gear/deploy_ratio[2]")
dref_f("dref_GearHandle", "sim/cockpit2/controls/gear_handle_down")
dref_f("dref_IAS",        "sim/cockpit2/gauges/indicators/airspeed_kts_copilot")
dref_f("dref_machno",           "sim/flightmodel/misc/machno")
dref_f("dref_flapRatio",  "sim/cockpit2/controls/flap_ratio")
dref_f("dref_flapHandRatio", "sim/cockpit2/controls/flap_handle_deploy_ratio")
dref_i("dref_avionics",      "sim/cockpit2/switches/avionics_power_on")

dref_f("dref_grossWeight",    "sim/flightmodel/weight/m_total")
dref_f("dref_payloadWeight",  "sim/flightmodel/weight/m_fixed")
dref_f("dref_emptyWeight",    "sim/aircraft/weight/acf_m_empty")
dref_f("dref_TotalFuel",      "sim/flightmodel/weight/m_fuel_total")
dref_f("dref_acceleration",   "sim/cockpit2/gauges/indicators/airspeed_acceleration_kts_sec_copilot")
dref_f("dref_RadAlt",         "sim/cockpit2/gauges/indicators/radio_altimeter_height_ft_pilot")
dref_f("dref_VVI",            "sim/cockpit2/gauges/indicators/vvi_fpm_pilot")
dref_f("dref_Fuel1",          "sim/flightmodel/weight/m_fuel1")
dref_f("dref_Fuel2",          "sim/flightmodel/weight/m_fuel2")
dref_f("dref_Fuel3",          "sim/flightmodel/weight/m_fuel3")
dref_f("dref_ceeOfGee",       "sim/flightmodel/misc/cgz_ref_to_default") --Center of gravity as a ref to the default position in meters need to convert to inches
dref_f("dref_takeoffTrim",    "sim/aircraft/controls/acf_takeoff_trim")


defineProperty("Vref")
defineProperty("V1")
defineProperty("V2")
defineProperty("VR")
defineProperty("takeoffAddition")
defineProperty("landingAddition")
defineProperty("takeoffFlaps")
defineProperty("landingFlaps")
defineProperty("landingFlapsShow")
defineProperty("takeoffFlapsShow")
defineProperty("GrossWeightLBS")
defineProperty("GrossWeightLBSShow")
defineProperty("emptyWeightLBS")
defineProperty("FuelTotalLBS")
defineProperty("FuelTotalLBSShow")
defineProperty("ZFWLBS")
defineProperty("ZFWLBSShow")
defineProperty("dref_OATShow")
defineProperty("dref_QNHShow")
defineProperty("flapRetract2015Show")
defineProperty("flapRetract5Show")
defineProperty("flapRetract2Show")
defineProperty("flapRetract0Show")
set(takeoffFlaps, 2)
set(landingFlaps, 0)
defineProperty("FuelPercentShow")


dref_f("dref_wiperAngle", "sim/flightmodel2/misc/wiper_angle_deg[0]")
dref_i("dref_whiperSwitch", "sim/cockpit2/switches/wiper_speed")
Cdref("Cdref_wiperRatio", "FJS/727/anims/wiperRatio")

Cdref("Cdref_airStairRatio", "FJS/727/anims/airStairRatio")
dref_f("dref_CustSlid1", "sim/flightmodel2/misc/custom_slider_ratio[0]")
Cdref("Cdref_cooperVainRatio", "FJS/727/anims/cooperVainRatio")

dref_f("dref_engRadSec1", "sim/flightmodel2/engines/engine_rotation_speed_rad_sec[0]")
dref_f("dref_engRadSec2", "sim/flightmodel2/engines/engine_rotation_speed_rad_sec[1]")
dref_f("dref_engRadSec3", "sim/flightmodel2/engines/engine_rotation_speed_rad_sec[2]")

Cdref("Cdref_EngHide1", "FJS/727/anims/engHide1")
Cdref("Cdref_EngHide2", "FJS/727/anims/engHide2")
Cdref("Cdref_EngHide3", "FJS/727/anims/engHide3")

Cdref("Cdref_wingDef",  "FJS/727/anims/wingDef")
dref_f("dref_wingDef",  "sim/flightmodel2/wing/wing_tip_deflection_deg[0]")

dref_f("dref_FuseCD", "sim/aircraft/bodies/acf_fuse_cd")

--dref_i("startupRunning", "sim/operation/perfs/startup_running")
dref_f("flighttime",     "sim/time/total_flight_time_sec")
dref_i("engineRunning",  "sim/flightmodel2/engines/engine_is_burning_fuel[0]")


--bleed air needles
Cdref("PACK_L_PSINeedle",                "FJS/727/bleed/PACK_L_PSINeedle")
Cdref("PACK_R_PSINeedle",                "FJS/727/bleed/PACK_R_PSINeedle")
Cdref("PACK_L_TempNeedle",               "FJS/727/bleed/PACK_L_TempNeedle")
Cdref("PACK_R_TempNeedle",               "FJS/727/bleed/PACK_R_TempNeedle")

Cdref("Eng2BleedSwitchL",                "FJS/727/bleed/Eng2BleedSwitchL")
Cdref("Eng2BleedSwitchR",                "FJS/727/bleed/Eng2BleedSwitchR")


local Scoef = get(dref_screenHeight) / 768


--here we start setting up our panels that we see in the screenspace.
mainMenu1 = subpanel {
    position = {0 , 200*Scoef, 25, 150},
    noBackground = true,
    noResize = true,
    movable = false,
    noClose = true,
    --clickable = true,
    noVisible = false,
        components = {
            mainMenu1 { position = { 0, 0, 25, 150},}
    },
}

Vcards = subpanel {
    position = { 70, 200*Scoef, 250, 265},
    noBackground = true,
    noResize = false,
    movable = false,
    noClose = true,
    clickable = true,
    noVisible = false,
        components = {
            Vcards { position = {0, 0, 250, 265}, }
        },
}

weightNBalance = subpanel {
    position = { 320, 200*Scoef, 600, 330},
    noBackground = true,
    noResize = true,
    movable = false,
    noClose = true,
    clickable = true,
    noVisible = false,
        components = {
            weightNBalance { position = {0, 0, 600, 330}, }
        },
}

Options = subpanel {
    position = { 320, 45*Scoef, 600, 200},
    noBackground = true,
    noResize = true,
    movable = false,
    noClose = true,
    clickable = true,
    noVisible = false,
        components = {
            Options { position = {0, 0, 600, 200}, }
        },
}

Initialize = subpanel {
    position = { 70, 45*Scoef, 250, 200},
    noBackground = true,
    noResize = true,
    movable = false,
    noClose = true,
    clickable = true,
    noVisible = false,
        components = {
            Initialize { position = {0, 0, 250, 200}, }
        },
}

INSdummy = subpanel {
    position = { 200, 200*Scoef, 512 , 528},
    noBackground = true,
    noResize = true,
    movable = false,
    noClose = true,
    clickable = true,
    noVisible = false,
        components = {
            INSdummy { position = {0, 0, 512 , 528}, }
        },
}


--Here is where we call out files inside Custom Avionics folder.
--
components = {

    Mfalcon {},
    
    PerfCalc {},
    
    failures {},
    
    Cojo {},
    
    electrical {},
    
    Fuel {},
    
    Hydraulics {},
    
    Radios {},
    
    autopilot {},
    
    BleedAir {},
    
    lights {},
    
    Guages {},
    
    WX {},
    
    --KLN90 {}, -- Uncomment this out if you have installed the KLN90

    panelLogic {
       panel_1 = mainMenu1,
       panel_2 = Vcards,
       panel_3 = weightNBalance,
       panel_4 = Options,
       panel_5 = Initialize,
       panel_6 = INSdummy,
   },

}

function onAvionicsDone()
set(override_control_surfaces, 0)
end

--727-200 Master