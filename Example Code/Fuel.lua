--this file contains all functions related to the Fuel system panel
--as well as the fuel heat and dump fuel panels

local RR = 0

local powered = 0
dref_f("tank1Fuel",      "sim/cockpit2/fuel/fuel_quantity[0]")
dref_f("tank2Fuel",      "sim/cockpit2/fuel/fuel_quantity[1]")
dref_f("tank3Fuel",      "sim/cockpit2/fuel/fuel_quantity[2]")
dref_i("boostPump1",     "sim/cockpit2/fuel/fuel_tank_pump_on[0]")
dref_i("boostPump2",     "sim/cockpit2/fuel/fuel_tank_pump_on[1]")
dref_i("boostPump3",     "sim/cockpit2/fuel/fuel_tank_pump_on[2]")
dref_i("pumpOther1",     "sim/cockpit2/engine/actuators/fuel_pump_on[0]")
dref_i("pumpOther2",     "sim/cockpit2/engine/actuators/fuel_pump_on[1]")
dref_i("pumpOther3",     "sim/cockpit2/engine/actuators/fuel_pump_on[2]")

Cdref("pumpSwitch1Aft",  "FJS/727/fuel/pumpSwitch1Aft")
Cdref("pumpSwitch3Aft",  "FJS/727/fuel/pumpSwitch3Aft")
Cdref("pumpSwitch1Fwd",  "FJS/727/fuel/pumpSwitch1Fwd")
Cdref("pumpSwitch3Fwd",  "FJS/727/fuel/pumpSwitch3Fwd")

Cdref("pumpSwitch2FwdL", "FJS/727/fuel/pumpSwitch2FwdL")
Cdref("pumpSwitch2FwdR", "FJS/727/fuel/pumpSwitch2FwdR")
Cdref("pumpSwitch2AftL", "FJS/727/fuel/pumpSwitch2AftL")
Cdref("pumpSwitch2AftR", "FJS/727/fuel/pumpSwitch2AftR")

Cdref("pressLite1Aft",   "FJS/727/fuel/pressLite1Aft")
Cdref("pressLite3Aft",   "FJS/727/fuel/pressLite3Aft")
Cdref("pressLite1Fwd",   "FJS/727/fuel/pressLite1Fwd")
Cdref("pressLite3Fwd",   "FJS/727/fuel/pressLite3Fwd")
local PL1Aft = 0
local PL3Aft = 0
local PL1Fwd = 0
local PL3Fwd = 0

Cdref("pressLite2FwdL",  "FJS/727/fuel/pressLite2FwdL")
Cdref("pressLite2FwdR",  "FJS/727/fuel/pressLite2FwdR")
Cdref("pressLite2AftL",  "FJS/727/fuel/pressLite2AftL")
Cdref("pressLite2AftR",  "FJS/727/fuel/pressLite2AftR")
local PL2FwdL = 0
local PL2FwdR = 0
local PL2AftL = 0
local PL2AftR = 0


Cdref("fuelQtyTest1",          "FJS/727/fuel/fuelQtyTest1")
Cdref("fuelQtyTest2",          "FJS/727/fuel/fuelQtyTest2")
Cdref("fuelQtyTest3",          "FJS/727/fuel/fuelQtyTest3")
set(fuelQtyTest1, 1)
set(fuelQtyTest2, 1)
set(fuelQtyTest3, 1)

Cdref("tank1Needle",           "FJS/727/fuel/tank1Needle")
Cdref("tank2Needle",           "FJS/727/fuel/tank2Needle")
Cdref("tank3Needle",           "FJS/727/fuel/tank3Needle")
set(tank1Needle,0)
set(tank2Needle,0)
set(tank3Needle,0)
local tank1need = 0
local tank2need = 0
local tank3need = 0

Cdref("fuelCutout1",           "FJS/727/fuel/fuelcutoutSwitch1")
Cdref("fuelCutout2",           "FJS/727/fuel/fuelcutoutSwitch2")
Cdref("fuelCutout3",           "FJS/727/fuel/fuelcutoutSwitch3")
Cdref("cutOutValveLite1",      "FJS/727/fuel/cutOutValveLite1")
Cdref("cutOutValveLite2",      "FJS/727/fuel/cutOutValveLite2")
Cdref("cutOutValveLite3",      "FJS/727/fuel/cutOutValveLite3")
local cutoutValveActual1 = 0
local cutoutValveActual2 = 0
local cutoutValveActual3 = 0


Cdref("fuelXfeedKnob1",        "FJS/727/fuel/fuelXfeedKnob1")
Cdref("fuelXfeedKnob2",        "FJS/727/fuel/fuelXfeedKnob2")
Cdref("fuelXfeedKnob3",        "FJS/727/fuel/fuelXfeedKnob3")
Cdref("XferValveLite1",        "FJS/727/fuel/XferValveLite1")
Cdref("XferValveLite2",        "FJS/727/fuel/XferValveLite2")
Cdref("XferValveLite3",        "FJS/727/fuel/XferValveLite3")
local XferValveActual1 = 0
local XferValveActual2 = 0
local XferValveActual3 = 0



dref_i("tankSelector",         "sim/cockpit2/fuel/fuel_tank_selector")




Cdref("mixtureMo1",            "FJS/727/num/mixtureMo1")
Cdref("mixtureMo2",            "FJS/727/num/mixtureMo2")
Cdref("mixtureMo3",            "FJS/727/num/mixtureMo3")
Cdref("mixturePo1",            "FJS/727/num/mixturePo1")
Cdref("mixturePo2",            "FJS/727/num/mixturePo2")
Cdref("mixturePo3",            "FJS/727/num/mixturePo3")
local mixActual1 = 1
local mixActual2 = 1
local mixActual3 = 1
dref_f("simMixture1",          "sim/cockpit2/engine/actuators/mixture_ratio[0]")
dref_f("simMixture2",          "sim/cockpit2/engine/actuators/mixture_ratio[1]")
dref_f("simMixture3",          "sim/cockpit2/engine/actuators/mixture_ratio[2]")

Cdref("tank1TempNeedle",       "FJS/727/fuel/tank1tempNeedle")
set(tank1TempNeedle, 0)
tank1Temp = 0
tank2Temp = 0
tank3Temp = 0

Cdref("tank1HeatSwitch",       "FJS/727/fuel/tank1HeatSwitch")
Cdref("tank2HeatSwitch",       "FJS/727/fuel/tank2HeatSwitch")
Cdref("tank3HeatSwitch",       "FJS/727/fuel/tank3HeatSwitch")
local tank1heatValveActual = 0
local tank2heatValveActual = 0
local tank3heatValveActual = 0
Cdref("Tank1IcingLite",        "FJS/727/fuel/tank1IcingLite")
Cdref("Tank2IcingLite",        "FJS/727/fuel/tank2IcingLite")
Cdref("Tank3IcingLite",        "FJS/727/fuel/tank3IcingLite")
local T1IL = 0
local T2IL = 0
local T3IL = 0
Cdref("Tank1HeatValvelite",    "FJS/727/fuel/Tank1HeatValvelite")
Cdref("Tank2HeatValvelite",    "FJS/727/fuel/Tank2HeatValvelite")
Cdref("Tank3HeatValvelite",    "FJS/727/fuel/Tank3HeatValvelite")
local T1HVL = 0
local T2HVL = 0
local T3HVL = 0



dref_f("oilPressureEng1",      "sim/cockpit2/engine/indicators/oil_pressure_psi[0]")
dref_f("oilPressureEng2",      "sim/cockpit2/engine/indicators/oil_pressure_psi[1]")
dref_f("oilPressureEng3",      "sim/cockpit2/engine/indicators/oil_pressure_psi[2]")
Cdref("OilPressNeedleEng1",    "FJS/727/Fuel/OilPressNeedleEng1")
Cdref("OilPressNeedleEng2",    "FJS/727/Fuel/OilPressNeedleEng2")
Cdref("OilPressNeedleEng3",    "FJS/727/Fuel/OilPressNeedleEng3")
--set(OilPressNeedleEng1, 0)
--set(OilPressNeedleEng2, 0)
--set(OilPressNeedleEng3, 0)

dref_f("oiltempEng1",          "sim/cockpit2/engine/indicators/oil_temperature_deg_C[0]")
dref_f("oiltempEng2",          "sim/cockpit2/engine/indicators/oil_temperature_deg_C[1]")
dref_f("oiltempEng3",          "sim/cockpit2/engine/indicators/oil_temperature_deg_C[2]")
Cdref("OilTempNeedleEng1",     "FJS/727/Fuel/OilTempNeedleEng1")
Cdref("OilTempNeedleEng2",     "FJS/727/Fuel/OilTempNeedleEng2")
Cdref("OilTempNeedleEng3",     "FJS/727/Fuel/OilTempNeedleEng3")
--set(OilTempNeedleEng1, 0)
--set(OilTempNeedleEng2, 0)
--set(OilTempNeedleEng3, 0)

dref_f("oilQuantEng1",          "sim/cockpit2/engine/indicators/oil_quantity_ratio[0]")
dref_f("oilQuantEng2",          "sim/cockpit2/engine/indicators/oil_quantity_ratio[1]")
dref_f("oilQuantEng3",          "sim/cockpit2/engine/indicators/oil_quantity_ratio[2]")
Cdref("OilQuantNeedleEng1",     "FJS/727/Fuel/OilQuantNeedleEng1")
Cdref("OilQuantNeedleEng2",     "FJS/727/Fuel/OilQuantNeedleEng2")
Cdref("OilQuantNeedleEng3",     "FJS/727/Fuel/OilQuantNeedleEng3")
--set(OilQuantNeedleEng1, 0)
--set(OilQuantNeedleEng2, 0)
--set(OilQuantNeedleEng3, 0)

Cdref("oilPressLowLite1",      "FJS/727/Fuel/oilPressLowLite1")
Cdref("oilPressLowLite2",      "FJS/727/Fuel/oilPressLowLite2")
Cdref("oilPressLowLite3",      "FJS/727/Fuel/oilPressLowLite3")
local oilPresslite1 = 0
local oilPresslite1 = 0
local oilPresslite1 = 0





T_fuel1 = 0
T_fuel2 = 0
T_fuel3 = 0
T_fuel1 = (get(dref_OAT) + 273.15) - (6 - math.random(5))
T_fuel2 = (get(dref_OAT) + 273.15) - (6 - math.random(5))
T_fuel3 = (get(dref_OAT) + 273.15) - (6 - math.random(5))
--fuel temp reference http://www2.galcit.caltech.edu/EDL/projects/JetA/reports/lumped.pdf
hA = 360 --(hA) is the product of the heat transfer coefficient, h, and the surface area, A, over which heat
--transfer occurs. As both h and A are unknown and appear in the equation as a product, hA is
--treated as a single parameter.
C_fuel = 2000 --Cfuel is the heat capacity of the fuel, about 2000 J/Kg/K (900 J/lb/K).
--Mfuel is the mass of the fuel

function FuelHeatPanel()
    local m =     get(dref_machno)
    local oat =   get(dref_OAT)
    local tas = 661.47 * m * math.sqrt((oat + 273.15) / 288.15)
    
    local T_out = (get(dref_TAT) + 273.15)
    local m_fuel1 = get(dref_Fuel1)
    local m_fuel2 = get(dref_Fuel2)
    local m_fuel3 = get(dref_Fuel3)
    dT = myLerp(0, 0.010, 500, 0.1, tas)
    
    T_fuel1 = T_fuel1 + (((hA/(m_fuel1*C_fuel))*(T_out - T_fuel1))*dT)
    T_fuel2 = T_fuel2 + (((hA/(m_fuel2*C_fuel))*(T_out - T_fuel2))*dT)
    T_fuel3 = T_fuel3 + (((hA/(m_fuel3*C_fuel))*(T_out - T_fuel3))*dT)
    
    tank1Temp = T_fuel1 - 273.15
    tank2Temp = T_fuel2 - 273.15
    tank3Temp = T_fuel3 - 273.15
    
    
    
    if tank1Temp < -35 then
        T1IL = 1
    else
        T1IL = 0
    end
    if tank2Temp < -35 then
        T2IL = 1
    else
        T2IL = 0

    end
    if tank3Temp < -35 then
        T3IL = 1
    else
        T3IL = 0
    end
    
    tank1heatValveActual = tank1heatValveActual + ((get(tank1HeatSwitch) - tank1heatValveActual)*RR*2)
    tank2heatValveActual = tank2heatValveActual + ((get(tank2HeatSwitch) - tank2heatValveActual)*RR*2)
    tank3heatValveActual = tank3heatValveActual + ((get(tank3HeatSwitch) - tank3heatValveActual)*RR*2)
    if tank1heatValveActual > 0.01 and tank1heatValveActual < 0.99 then
        set(Tank1HeatValvelite, get(Tank1HeatValvelite)+((1 - get(Tank1HeatValvelite))*RR*20))
    else
        set(Tank1HeatValvelite, get(Tank1HeatValvelite)+((0 - get(Tank1HeatValvelite))*RR*20))
    end
    if tank2heatValveActual > 0.01 and tank2heatValveActual < 0.99 then
        set(Tank2HeatValvelite, get(Tank2HeatValvelite)+((1 - get(Tank2HeatValvelite))*RR*20))
    else
        set(Tank2HeatValvelite, get(Tank2HeatValvelite)+((0 - get(Tank2HeatValvelite))*RR*20))
    end
    if tank3heatValveActual > 0.01 and tank3heatValveActual < 0.99 then
        set(Tank3HeatValvelite, get(Tank3HeatValvelite)+((1 - get(Tank3HeatValvelite))*RR*20))
    else
        set(Tank3HeatValvelite, get(Tank3HeatValvelite)+((0 - get(Tank3HeatValvelite))*RR*20))
    end
    
    if tank1heatValveActual > .99 and get(pow) == 1 then
        T_fuel1 = T_fuel1 + 0.002
    end
    if tank2heatValveActual > .99 and get(pow) == 1 then
        T_fuel2 = T_fuel2 + 0.002
    end
    if tank3heatValveActual > .99 and get(pow) == 1 then
        T_fuel3 = T_fuel3 + 0.002
    end
    set(tank1TempNeedle, get(tank1TempNeedle)+((tank1Temp - get(tank1TempNeedle))*RR*20))
    
    set(Tank1IcingLite, get(Tank1IcingLite)+((T1IL*get(pow) - get(Tank1IcingLite))*RR*20))
    set(Tank2IcingLite, get(Tank2IcingLite)+((T2IL*get(pow) - get(Tank2IcingLite))*RR*20))
    set(Tank3IcingLite, get(Tank3IcingLite)+((T3IL*get(pow) - get(Tank3IcingLite))*RR*20))
    set(Tank1HeatValvelite, get(Tank1HeatValvelite)+((T1HVL*get(pow) - get(Tank1HeatValvelite))*RR*20))
    set(Tank2HeatValvelite, get(Tank2HeatValvelite)+((T2HVL*get(pow) - get(Tank2HeatValvelite))*RR*20))
    set(Tank3HeatValvelite, get(Tank3HeatValvelite)+((T3HVL*get(pow) - get(Tank3HeatValvelite))*RR*20))

end

function mixHandleLag()

    --here we control the fad of the valve in transit lights
    
    if cutoutValveActual1 > 0.01 and cutoutValveActual1 < 0.99 then
        set(cutOutValveLite1, get(cutOutValveLite1)+((1 - get(cutOutValveLite1))*RR*20))
    else
        set(cutOutValveLite1, get(cutOutValveLite1)+((0 - get(cutOutValveLite1))*RR*20))
    end
    if cutoutValveActual2 > 0.01 and cutoutValveActual2 < 0.99 then
        set(cutOutValveLite2, get(cutOutValveLite2)+((1 - get(cutOutValveLite2))*RR*20))
    else
        set(cutOutValveLite2, get(cutOutValveLite2)+((0 - get(cutOutValveLite2))*RR*20))
    end
    if cutoutValveActual3 > 0.01 and cutoutValveActual3 < 0.99 then
        set(cutOutValveLite3, get(cutOutValveLite3)+((1 - get(cutOutValveLite3))*RR*20))
    else
        set(cutOutValveLite3, get(cutOutValveLite3)+((0 - get(cutOutValveLite3))*RR*20))
    end
    cutoutValveActual1 = cutoutValveActual1 + ((get(fuelCutout1)*get(pow) - cutoutValveActual1)*RR*2)
    cutoutValveActual2 = cutoutValveActual2 + ((get(fuelCutout2)*get(pow) - cutoutValveActual2)*RR*2)
    cutoutValveActual3 = cutoutValveActual3 + ((get(fuelCutout3)*get(pow) - cutoutValveActual3)*RR*2)
    
    if XferValveActual1 > 0.01 and XferValveActual1 < 0.99 then
        set(XferValveLite1, get(XferValveLite1)+((1 - get(XferValveLite1))*0.2))
    else
        set(XferValveLite1, get(XferValveLite1)+((0 - get(XferValveLite1))*0.2))
    end
    if XferValveActual2 > 0.01 and XferValveActual2 < 0.99 then
        set(XferValveLite2, get(XferValveLite2)+((1 - get(XferValveLite2))*0.2))
    else
        set(XferValveLite2, get(XferValveLite2)+((0 - get(XferValveLite2))*0.2))
    end
    if XferValveActual3 > 0.01 and XferValveActual3 < 0.99 then
        set(XferValveLite3, get(XferValveLite3)+((1 - get(XferValveLite3))*0.2))
    else
        set(XferValveLite3, get(XferValveLite3)+((0 - get(XferValveLite3))*0.2))
    end
    XferValveActual1 = XferValveActual1 + ((get(fuelXfeedKnob1)*get(pow) - XferValveActual1)*RR*2)
    XferValveActual2 = XferValveActual2 + ((get(fuelXfeedKnob2)*get(pow) - XferValveActual2)*RR*2)
    XferValveActual3 = XferValveActual3 + ((get(fuelXfeedKnob3)*get(pow) - XferValveActual3)*RR*2)
    --now for the logic behind the Xfer and cutout switches
    if get(fuelCutout1) == 0 then
        set(simMixture1, get(mixturePo1))
    end
    if get(fuelXfeedKnob1) == 1 and get(tank1Fuel) < 1 then
        set(simMixture1, 0) -- clamps this at off
    end
    if get(fuelCutout1) == 1 then
        set(simMixture1, 0) -- clamps this at off
    end
    
    if get(fuelCutout2) == 0 then
        set(simMixture2, get(mixturePo2))
    end
    if get(fuelXfeedKnob2) == 1 and get(tank2Fuel) < 1 then
        set(simMixture2, 0) -- clamps this at off
    end
    if get(fuelCutout2) == 1 then
        set(simMixture2, 0) -- clamps this at off
    end
    
    if get(fuelCutout3) == 0 then
        set(simMixture3, get(mixturePo3))
    end
    if get(fuelXfeedKnob3) == 1 and get(tank3Fuel) < 1 then
        set(simMixture3, 0) -- clamps this at off
    end
    if get(fuelCutout3) == 1 then
        set(simMixture3, 0) -- clamps this at off
        
    end
    
    

    --if get(mixturePo1) == 1 and get()

    set(mixtureMo1, get(mixtureMo1)+((get(mixturePo1) - get(mixtureMo1))*RR*10))
    set(mixtureMo2, get(mixtureMo2)+((get(mixturePo2) - get(mixtureMo2))*RR*10))
    set(mixtureMo3, get(mixtureMo3)+((get(mixturePo3) - get(mixtureMo3))*RR*10))

end

function boostPumpOp()
    
    if get(pumpSwitch1Aft) == 1 or get(pumpSwitch1Fwd) == 1 then
        set(boostPump1, 1)
        set(pumpOther1, 1)
    else
        set(boostPump1, 0)
        set(pumpOther1, 0)
    end
    if get(pumpSwitch3Aft) == 1 or get(pumpSwitch3Fwd) == 1 then
        set(boostPump3, 1)
        set(pumpOther3, 1)
    else
        set(boostPump3, 0)
        set(pumpOther3, 0)
    end
    if get(pumpSwitch2FwdL) == 1 or get(pumpSwitch2FwdR) == 1 or get(pumpSwitch2AftL) == 1 or get(pumpSwitch2AftR) == 1 then
        set(boostPump2, 1)
        set(pumpOther2, 1)
    else
        set(boostPump2, 0)
        set(pumpOther2, 0)
    end
    
    if get(pumpSwitch1Aft) == 1 and get(tank1need) > 1 then
        PL1Aft = 0
    else
        PL1Aft = 1
    end
    if get(pumpSwitch1Fwd) == 1 and get(tank1need) > 1 then
        PL1Fwd = 0
    else
        PL1Fwd = 1
    end
    if get(pumpSwitch3Aft) == 1 and get(tank3need) > 1 then
        PL3Aft = 0
    else
        PL3Aft = 1
    end
    if get(pumpSwitch3Fwd) == 1 and get(tank3need) > 1 then
        PL3Fwd = 0
    else
        PL3Fwd = 1
    end
    
    if get(pumpSwitch2FwdL) == 1 and get(tank2need) > 1 then
        PL2FwdL = 0
    else
        PL2FwdL = 1
    end
    if get(pumpSwitch2FwdR) == 1 and get(tank2need) > 1 then
        PL2FwdR = 0
    else
        PL2FwdR = 1
    end
    if get(pumpSwitch2AftL) == 1 and get(tank2need) > 1 then
        PL2AftL = 0
    else
        PL2AftL = 1
    end
    if get(pumpSwitch2AftR) == 1 and get(tank2need) > 1 then
        PL2AftR = 0
    else
        PL2AftR = 1
    end
    

end

function OilSystems()

    if get(oilPressureEng1) < 35 then
        oilPresslite1 = 1
    else
        oilPresslite1 = 0
    end
    if get(oilPressureEng2) < 35 then
        oilPresslite2 = 1
    else
        oilPresslite2 = 0
    end
    if get(oilPressureEng3) < 35 then
        oilPresslite3 = 1
    else
        oilPresslite3 = 0
    end
    
    set(oilPressLowLite1, get(oilPressLowLite1)+((oilPresslite1*get(pow) - get(oilPressLowLite1))*RR*20))
    set(oilPressLowLite2, get(oilPressLowLite2)+((oilPresslite2*get(pow) - get(oilPressLowLite2))*RR*20))
    set(oilPressLowLite3, get(oilPressLowLite3)+((oilPresslite3*get(pow) - get(oilPressLowLite3))*RR*20))
    set(OilPressNeedleEng1, get(OilPressNeedleEng1)+((get(oilPressureEng1)*get(pow) - get(OilPressNeedleEng1))*RR*5))
    set(OilPressNeedleEng2, get(OilPressNeedleEng2)+((get(oilPressureEng2)*get(pow) - get(OilPressNeedleEng2))*RR*5))
    set(OilPressNeedleEng3, get(OilPressNeedleEng3)+((get(oilPressureEng3)*get(pow) - get(OilPressNeedleEng3))*RR*5))
    set(OilTempNeedleEng1, get(OilTempNeedleEng1)+((get(oiltempEng1)*get(pow) - get(OilTempNeedleEng1))*RR*2))
    set(OilTempNeedleEng2, get(OilTempNeedleEng2)+((get(oiltempEng2)*get(pow) - get(OilTempNeedleEng2))*RR*2))
    set(OilTempNeedleEng3, get(OilTempNeedleEng3)+((get(oiltempEng3)*get(pow) - get(OilTempNeedleEng3))*RR*2))
    set(OilQuantNeedleEng1, get(OilQuantNeedleEng1)+((get(oilQuantEng1)*get(pow) - get(OilQuantNeedleEng1))*RR*2))
    set(OilQuantNeedleEng2, get(OilQuantNeedleEng2)+((get(oilQuantEng2)*get(pow) - get(OilQuantNeedleEng2))*RR*2))
    set(OilQuantNeedleEng3, get(OilQuantNeedleEng3)+((get(oilQuantEng3)*get(pow) - get(OilQuantNeedleEng3))*RR*2))


    

end



function update()

    RR = get(frameRate)
    if get(flighttime) > 5 then
        FuelHeatPanel()
        mixHandleLag()
        boostPumpOp()
        OilSystems()
    end

    tank1need = get(tank1Fuel)*0.220462*get(fuelQtyTest1)+1.1
    tank2need = get(tank2Fuel)*0.220462*get(fuelQtyTest2)+1.1
    tank3need = get(tank3Fuel)*0.220462*get(fuelQtyTest3)+1.1
    
    --This is the fade vs framerate equasion to get correct smoothing no mater the framerate
    --0.5 = 20FPS 0.01 = 100 FPS
    --fade rate = 0.5 ~10 frames and 0.25 ~ 20 frames
    --local Lfade1 = myLerp(0.5,0.5,0.01,0.01,get(frameRate))
    local Lfade1 = get(frameRate)*20
    --local Gfade1 = get(frameRate)*1

    set(pressLite1Aft, get(pressLite1Aft)+((PL1Aft*get(pow) - get(pressLite1Aft))*Lfade1))
    set(pressLite3Aft, get(pressLite3Aft)+((PL3Aft*get(pow) - get(pressLite3Aft))*Lfade1))
    set(pressLite1Fwd, get(pressLite1Fwd)+((PL1Fwd*get(pow) - get(pressLite1Fwd))*Lfade1))
    set(pressLite3Fwd, get(pressLite3Fwd)+((PL3Fwd*get(pow) - get(pressLite3Fwd))*Lfade1))
    
    set(pressLite2FwdL, get(pressLite2FwdL)+((PL2FwdL*get(pow) - get(pressLite2FwdL))*Lfade1))
    set(pressLite2FwdR, get(pressLite2FwdR)+((PL2FwdR*get(pow) - get(pressLite2FwdR))*Lfade1))
    set(pressLite2AftL, get(pressLite2AftL)+((PL2AftL*get(pow) - get(pressLite2AftL))*Lfade1))
    set(pressLite2AftR, get(pressLite2AftR)+((PL2AftR*get(pow) - get(pressLite2AftR))*Lfade1))
    set(tank1Needle, get(tank1Needle)+((tank1need*get(pow) - get(tank1Needle))*RR))
    set(tank2Needle, get(tank2Needle)+((tank2need*get(pow) - get(tank2Needle))*RR))
    set(tank3Needle, get(tank3Needle)+((tank3need*get(pow) - get(tank3Needle))*RR))  
    
    --Setup defaults on startup based on sim startup condition
    if get(BatterOn) == 1 and get(flighttime) < 5 then
        set(pumpSwitch1Aft, 1)
        set(pumpSwitch3Aft, 1)
        set(pumpSwitch1Fwd, 1)
        set(pumpSwitch3Fwd, 1)
        set(pumpSwitch2FwdL, 1)
        set(pumpSwitch2FwdR, 1)
        set(pumpSwitch2AftL, 1)
        set(pumpSwitch2AftR, 1)
        set(mixturePo1, 1)
        set(mixturePo2, 1)
        set(mixturePo3, 1)
        mixActual1 = 1
        mixActual2 = 1
        mixActual3 = 1
        T_fuel1 = (get(dref_OAT) + 273.15) - (6 - math.random(5))
        T_fuel2 = (get(dref_OAT) + 273.15) - (6 - math.random(5))
        T_fuel3 = (get(dref_OAT) + 273.15) - (6 - math.random(5))
    end
    if get(BatterOn) == 0 and get(flighttime) < 5 then
        set(pumpSwitch1Aft, 0)
        set(pumpSwitch3Aft, 0)
        set(pumpSwitch1Fwd, 0)
        set(pumpSwitch3Fwd, 0)
        set(pumpSwitch2FwdL, 0)
        set(pumpSwitch2FwdR, 0)
        set(pumpSwitch2AftL, 0)
        set(pumpSwitch2AftR, 0)
        set(mixturePo1, 0)
        set(mixturePo2, 0)
        set(mixturePo3, 0)
        mixActual1 = 0
        mixActual2 = 0
        mixActual3 = 0
        T_fuel1 = (get(dref_OAT) + 273.15) - (6 - math.random(5))
        T_fuel2 = (get(dref_OAT) + 273.15) - (6 - math.random(5))
        T_fuel3 = (get(dref_OAT) + 273.15) - (6 - math.random(5))
    end
    
end -- end of update.