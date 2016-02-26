--This file contains all the electrical systems that power the aircraft includeing
--guage indicators and actuators.
local dontrep = 0


--

--
----THis is our smoothing function,
----useing = the value you want to smooth,
----goto = the value you want it to trend towards
----powered = if its power dependant, set 1 if not set 0
----rate == them rate of change over time, higher values are faster, lower values are slower
--function fade(using, goto, powered, rate)
--    if powered == 1 then
--        local pows = get(pow)
--    else
--        local pows = 1
--    end
--    return using +((goto*pows - using)*RR*rate)
--end
local RR = 0

dref_i("HasAPUSwitch",      "sim/aircraft/overflow/acf_has_APU_switch")

Cdref("DCmeterKnob",        "FJS/727/Elec/DCmeterKnob")
dref_i("BatterOn",          "sim/cockpit2/electrical/battery_on[0]")
dref_i("BatterOnstby",      "sim/cockpit2/electrical/battery_on[1]")
dref_i("BatteryGND",        "sim/cockpit2/electrical/battery_on[2]") -- gnd power
dref_f("Battery1WattHr",    "sim/cockpit/electrical/battery_charge_watt_hr[0]")
dref_f("Battery3WattHr",    "sim/cockpit/electrical/battery_charge_watt_hr[2]") -- our ground power
dref_f("BatVoltInd",        "sim/cockpit2/electrical/battery_voltage_indicated_volts[0]")
dref_i("TR_On1",            "sim/cockpit2/electrical/inverter_on[0]")
dref_i("TR_On2",            "sim/cockpit2/electrical/inverter_on[1]")
dref_f("batAmps",           "sim/cockpit2/electrical/battery_amps[0]")
Cdref("DC_VoltNeedle",      "FJS/727/Elec/DC_VoltNeedle")
Cdref("DC_AmpsNeedle",      "FJS/727/Elec/DC_AmpsNeedle")
set(DC_VoltNeedle, 0)
set(DC_AmpsNeedle, 0)
dref_i("avionics",          "sim/cockpit2/switches/avionics_power_on")

dref_i("GeneratorOn1",       "sim/cockpit2/electrical/generator_on[0]")
dref_i("GeneratorOn2",       "sim/cockpit2/electrical/generator_on[1]")
dref_i("GeneratorOn3",       "sim/cockpit2/electrical/generator_on[2]")
dref_f("GenAmps1",           "sim/cockpit2/electrical/generator_amps[0]")
dref_f("GenAmps2",           "sim/cockpit2/electrical/generator_amps[1]")
dref_f("GenAmps3",           "sim/cockpit2/electrical/generator_amps[2]")


dref_f("busVolts1",          "sim/cockpit2/electrical/bus_volts[0]")
dref_f("busVolts2",          "sim/cockpit2/electrical/bus_volts[1]")
dref_f("busVolts3",          "sim/cockpit2/electrical/bus_volts[2]")
dref_f("busVolts4",          "sim/cockpit2/electrical/bus_volts[3]")
dref_f("busVolts5",          "sim/cockpit2/electrical/bus_volts[4]")
dref_f("busAmps1",           "sim/cockpit2/electrical/bus_load_amps[0]")
dref_f("busAmps2",           "sim/cockpit2/electrical/bus_load_amps[1]")
dref_f("busAmps3",           "sim/cockpit2/electrical/bus_load_amps[2]")
dref_f("busAmps4",           "sim/cockpit2/electrical/bus_load_amps[3]")
dref_f("busAmps5",           "sim/cockpit2/electrical/bus_load_amps[4]")

dref_i("busTie",             "sim/cockpit2/electrical/cross_tie")
local ESS_DC_powered = 0 -- defaults ESS power to off. if ESS power is powered, this will change to 1.
local ESS_AC_powered = 0
Cdref("GenNeedle1",          "FJS/727/Elec/GenNeedle1")
Cdref("GenNeedle2",          "FJS/727/Elec/GenNeedle2")
Cdref("GenNeedle3",          "FJS/727/Elec/GenNeedle3")

Cdref("fieldSwitch1",        "FJS/727/Elec/fieldSwitch1")
Cdref("fieldSwitch2",        "FJS/727/Elec/fieldSwitch2")
Cdref("fieldSwitch3",        "FJS/727/Elec/fieldSwitch3")
Cdref("GenSwitch1",          "FJS/727/Elec/GenSwitch1")
Cdref("GenSwitch2",          "FJS/727/Elec/GenSwitch2")
Cdref("GenSwitch3",          "FJS/727/Elec/GenSwitch3")
Cdref("TieSwitch1",          "FJS/727/Elec/TieSwitch1")
Cdref("TieSwitch2",          "FJS/727/Elec/TieSwitch2")
Cdref("TieSwitch3",          "FJS/727/Elec/TieSwitch3")
set(fieldSwitch1, 1)
set(fieldSwitch2, 1)
set(fieldSwitch3, 1)
set(GenSwitch1, 1)
set(GenSwitch2, 1)
set(GenSwitch3, 1)
set(TieSwitch1, 1)
set(TieSwitch2, 1)
set(TieSwitch3, 1)




Cdref("fieldLight1",         "FJS/727/Elec/fieldLight1")
Cdref("fieldLight2",         "FJS/727/Elec/fieldLight2")
Cdref("fieldLight3",         "FJS/727/Elec/fieldLight3")
Cdref("genLight1",           "FJS/727/Elec/genLight1")
Cdref("genLight2",           "FJS/727/Elec/genLight2")
Cdref("genLight3",           "FJS/727/Elec/genLight3")
Cdref("TieLight1",           "FJS/727/Elec/TieLight1")
Cdref("TieLight2",           "FJS/727/Elec/TieLight2")
Cdref("TieLight3",           "FJS/727/Elec/TieLight3")

local fieldActual1 = 1
local fieldActual2 = 1
local fieldActual3 = 1
local GenActual1 = 1
local GenActual2 = 1
local GenActual3 = 1
local TieActual = 0



--sets defaults based on if you want it to be cold and dark or not.


local Switchback = 0

local fieldlit1 = 0
local fieldlit2 = 0
local fieldlit3 = 0
local genlite1 = 0
local genlite2 = 0
local genlite3 = 0
local tielite1 = 0
local tielite2 = 0
local tielite3 = 0

createCommand("FJS/727/Elec/GenFieldSwitch1", "Generator Field Switch")
createCommand("FJS/727/Elec/GenFieldSwitch2", "Generator Field Switch")
createCommand("FJS/727/Elec/GenFieldSwitch3", "Generator Field Switch")

createCommand("FJS/727/Elec/GenGenSwitch1", "Generator Switch")
createCommand("FJS/727/Elec/GenGenSwitch2", "Generator Switch")
createCommand("FJS/727/Elec/GenGenSwitch3", "Generator Switch")

createCommand("FJS/727/Elec/BusTieSwitch1", "Bus Tie Switch")
createCommand("FJS/727/Elec/BusTieSwitch2", "Bus Tie Switch")
createCommand("FJS/727/Elec/BusTieSwitch3", "Bus Tie Switch")

createCommand("FJS/727/Elec/APU_Start",       "APU Start Switch")
createCommand("FJS/727/Elec/APU_Gen",         "APU Gen Switch")
createCommand("FJS/727/Elec/APU_Field",       "APU Field Switch")


GenField1 = findCommand("FJS/727/Elec/GenFieldSwitch1")
GenField2 = findCommand("FJS/727/Elec/GenFieldSwitch2")
GenField3 = findCommand("FJS/727/Elec/GenFieldSwitch3")

GenGen1 = findCommand("FJS/727/Elec/GenGenSwitch1")
GenGen2 = findCommand("FJS/727/Elec/GenGenSwitch2")
GenGen3 = findCommand("FJS/727/Elec/GenGenSwitch3")

BusTie1 = findCommand("FJS/727/Elec/BusTieSwitch1")
BusTie2 = findCommand("FJS/727/Elec/BusTieSwitch2")
BusTie3 = findCommand("FJS/727/Elec/BusTieSwitch3")

APUStart = findCommand("FJS/727/Elec/APU_Start")
APUGen = findCommand("FJS/727/Elec/APU_Gen")
APUField = findCommand("FJS/727/Elec/APU_Field")
--   APUGenActual = 0
local APUFieldActual



Cdref("ACvoltMeterKnob",    "FJS/727/Elec/ACvoltMeterKnob")
Cdref("ACvoltMeterNeed",    "FJS/727/Elec/ACvoltMeterNeed")
local ACvoltNeedleIn = 80
Cdref("ESSPOWselect",       "FJS/727/Elec/EssPowSelect")
set(ESSPOWselect,2) -- sets knob os Gen 1
Cdref("ESSPOWfailLite",     "FJS/727/Elec/EssPowFailLite")
local EssFaillite = 0
Cdref("GalleyPow13",        "FJS/727/Elec/GalleyPow13")
Cdref("GalleyPow24",        "FJS/727/Elec/GalleyPow24")
Cdref("GroundPowSwitch",    "FJS/727/Elec/GroundPowSwitch")

Cdref("RiseInSwitch1",    "FJS/727/Elec/RiseInSwitch1")
Cdref("RiseInSwitch2",    "FJS/727/Elec/RiseInSwitch2")
Cdref("RiseInSwitch3",    "FJS/727/Elec/RiseInSwitch3")

Cdref("GenDriveOilTemp1",  "FJS/727/Elec/GenDriveOilTemp1")
Cdref("GenDriveOilTemp2",  "FJS/727/Elec/GenDriveOilTemp2")
Cdref("GenDriveOilTemp3",  "FJS/727/Elec/GenDriveOilTemp3")

dref_i("APUGenOn",         "sim/cockpit2/electrical/APU_generator_on")
dref_f("APUGenAmps",       "sim/cockpit2/electrical/APU_generator_amps")
dref_f("APUrunning",       "sim/cockpit2/electrical/APU_running")

dref_i("APUStartSwitch",   "sim/cockpit2/electrical/APU_starter_switch")
dref_i("APUSrunning",      "sim/cockpit2/electrical/APU_running")
dref_f("APU_N1",           "sim/cockpit2/electrical/APU_N1_percent")

Cdref("APU_ampresNeedle",  "FJS/727/Elec/APU_ampresNeedle")
Cdref("APU_EGTNeelde",     "FJS/727/Elec/APU_EGTNeelde")
local EGTneedleGoto = 0
Cdref("APU_FieldLite",     "FJS/727/Elec/APU_FieldLite")
Cdref("APU_GenLite",       "FJS/727/Elec/APU_GenLite")
Cdref("APU_StarSwitch",    "FJS/727/Elec/APU_StarSwitch")
local APUFL = 0
local APUGL = 0
local APUStartActual = 0
Cdref("APU_GenSwitch",     "FJS/727/Elec/APU_GenSwitch")
Cdref("APU_FieldSwitch",   "FJS/727/Elec/APU_FieldSwitch")
Cdref("APU_autoFireShut",  "FJS/727/Elec/APU_autoFireShut")

set(APU_GenSwitch, 1)
set(APU_FieldSwitch, 1)
local APUstarterLag = 0

local EGTload2 = 0






function ACmeterPanel()

    -- This controls what happens for different positions on the AC volt meter knob.
    if get(ACvoltMeterKnob) == 0 and get(APUGenOn) == 1 then
        ACvoltNeedleIn = get(busVolts1)*4
    end
    if get(ACvoltMeterKnob) == 1 and get(busTie) == 1 then
        ACvoltNeedleIn = get(busVolts2)*4
    end
    if get(ACvoltMeterKnob) == 2 then
        ACvoltNeedleIn = get(busVolts2)*4
    end
    if get(ACvoltMeterKnob) == 3 then
        ACvoltNeedleIn = get(busVolts3)*4
    end
    if get(ACvoltMeterKnob) == 4 then
        ACvoltNeedleIn = get(busVolts4)*4
    end
    if get(ACvoltMeterKnob) == 5 then
        ACvoltNeedleIn = 80
    end

    --now we set the AC volt needle
    set(ACvoltMeterNeed, get(ACvoltMeterNeed)+((ACvoltNeedleIn - get(ACvoltMeterNeed))*RR*6))
    
    --Control the ESS power knob selector and its function
    if get(ESSPOWselect) == 0 then
        ESS_AC_powered = 1
        set(BatterOnstby, 1)
    else
        set(BatterOnstby, 0)
        ESS_AC_powered = 0
    end
    if get(ESSPOWselect) == 1 and get(APUGenOn) == 1 then
        ESS_AC_powered = 1
    elseif get(ESSPOWselect) == 1 and get(APUGenOn) == 0 then
        ESS_AC_powered = 0
    end
    if get(ESSPOWselect) == 2 and get(GeneratorOn1) == 1 then
        ESS_AC_powered = 1
    elseif get(ESSPOWselect) == 2 and get(GeneratorOn1) == 0 then
        ESS_AC_powered = 0
    end
    if get(ESSPOWselect) == 3 and get(GeneratorOn2) == 1 then
        ESS_AC_powered = 1
    elseif get(ESSPOWselect) == 3 and get(GeneratorOn2) == 0 then
        ESS_AC_powered = 0
    end
    if get(ESSPOWselect) == 4 and get(GeneratorOn3) == 1 then
        ESS_AC_powered = 1
    elseif get(ESSPOWselect) == 4 and get(GeneratorOn3) == 0 then
        ESS_AC_powered = 0
    end
    if get(ESSPOWselect) == 5 then
        ESS_AC_powered = 0
    end
    
    if ESS_AC_powered == 1 then
        ESS_DC_powered = 1
        EssFaillite = 0
    else
        ESS_DC_powered = 0
        EssFaillite = 1
    end
    
    

end

function APUStart_OnStart(phase)
    if 0 == phase then
        --Switchback = 100
        if APUStartActual == 0 then
            set(APU_StarSwitch, 1)
            APUStartActual = 1
        elseif APUStartActual == 1 and get(BatterOn) == 1 and get(dref_tireDef1) ~= 0 then
            set(APU_StarSwitch, 2)
            APUStartActual = 2
        else--if APUStartActual == 1 or get(APUSrunning) == 1 then
            set(APU_StarSwitch, 0)
            APUStartActual = 0
        end
        
    end 
    return 1
end
registerCommandHandler(APUStart, 1, APUStart_OnStart);

function APUGen_OnStart(phase)
    if 0 == phase then
        Switchback = 100
        if APUGenActual == 0 then
            set(APU_GenSwitch, 0)
            APUGenActual = 1
        else
            set(APU_GenSwitch, 2)
            APUGenActual = 0
        end  
    end 
    return 1
end
registerCommandHandler(APUGen, 1, APUGen_OnStart);

function APUField_OnStart(phase)
    if 0 == phase then
        Switchback = 100
        if APUFieldActual == 0 then
            set(APU_FieldSwitch, 0)
            APUFieldActual = 1
        else
            set(APU_FieldSwitch, 2)
            APUFieldActual = 0
        end  
    end 
    return 1
end
registerCommandHandler(APUField, 1, APUField_OnStart);

function GenField1_OnStart(phase)
    if 0 == phase then
        Switchback = 100
        if fieldActual1 == 0 then
            set(fieldSwitch1, 0)
            fieldActual1 = 1
        else
            set(fieldSwitch1, 2)
            fieldActual1 = 0
        end  
    end 
    return 1
end
registerCommandHandler(GenField1, 1, GenField1_OnStart);

function GenField2_OnStart(phase)
    if 0 == phase then
        Switchback = 100
        if fieldActual2 == 0 then
            set(fieldSwitch2, 0)
            fieldActual2 = 1
        else
            set(fieldSwitch2, 2)
            fieldActual2 = 0
        end  
    end 
    return 1
end
registerCommandHandler(GenField2, 1, GenField2_OnStart);

function GenField3_OnStart(phase)
    if 0 == phase then
        Switchback = 100
        if fieldActual3 == 0 then
            set(fieldSwitch3, 0)
            fieldActual3 = 1
        else
            set(fieldSwitch3, 2)
            fieldActual3 = 0
        end  
    end 
    return 1
end
registerCommandHandler(GenField3, 1, GenField3_OnStart);




function GenGen1_OnStart(phase)
    if 0 == phase then
        Switchback = 100
        if GenActual1 == 0 then
            set(GenSwitch1, 0)
            GenActual1 = 1
        else
            set(GenSwitch1, 2)
            GenActual1 = 0
        end  
    end 
    return 1
end
registerCommandHandler(GenGen1, 1, GenGen1_OnStart);

function GenGen2_OnStart(phase)
    if 0 == phase then
        Switchback = 100
        if GenActual2 == 0 then
            set(GenSwitch2, 0)
            GenActual2 = 1
        else
            set(GenSwitch2, 2)
            GenActual2 = 0
        end  
    end 
    return 1
end
registerCommandHandler(GenGen2, 1, GenGen2_OnStart);

function GenGen3_OnStart(phase)
    if 0 == phase then
        Switchback = 100
        if GenActual3 == 0 then
            set(GenSwitch3, 0)
            GenActual3 = 1
        else
            set(GenSwitch3, 2)
            GenActual3 = 0
        end  
    end 
    return 1
end
registerCommandHandler(GenGen3, 1, GenGen3_OnStart);



function BusTie1_OnStart(phase)
    if 0 == phase then
        Switchback = 100
        if TieActual == 0 then
            set(TieSwitch1, 0)
            TieActual = 1
        else
            set(TieSwitch1, 2)
            TieActual = 0
        end  
    end 
    return 1
end
registerCommandHandler(BusTie1, 1, BusTie1_OnStart);

function BusTie2_OnStart(phase)
    if 0 == phase then
        Switchback = 100
        if TieActual == 0 then
            set(TieSwitch2, 0)
            TieActual = 1
        else
            set(TieSwitch2, 2)
            TieActual = 0
        end  
    end 
    return 1
end
registerCommandHandler(BusTie2, 1, BusTie2_OnStart);

function BusTie3_OnStart(phase)
    if 0 == phase then
        Switchback = 100
        if TieActual == 0 then
            set(TieSwitch3, 0)
            TieActual = 1
        else
            set(TieSwitch3, 2)
            TieActual = 0
        end  
    end 
    return 1
end
registerCommandHandler(BusTie3, 1, BusTie3_OnStart);

--if get(startupRunning) == 0 then
--    fieldActual1 = 0
--    fieldActual2 = 0
--    fieldActual3 = 0
--    GenActual1 = 0
--    GenActual2 = 0
--    GenActual3 = 0
--    TieActual = 0
--else



function GeneratorPanel()
    
    --this sets the switches back to neutral after you click them.
    if Switchback > 0.5 then
        Switchback = Switchback +((0 - Switchback)*RR*6)
    end
    if Switchback > 1 and Switchback < 5 then
        set(fieldSwitch1,1)
        set(fieldSwitch2,1)
        set(fieldSwitch3,1)
        set(GenSwitch1, 1)
        set(GenSwitch2, 1)
        set(GenSwitch3, 1)
        set(TieSwitch1, 1)
        set(TieSwitch2, 1)
        set(TieSwitch3, 1)
        set(APU_GenSwitch, 1)
        set(APU_FieldSwitch, 1)
    end
    
    if TieActual == 1 then
        set(busTie,1)
        tielite1 = 0
        tielite2 = 0
        tielite3 = 0
    end
    if TieActual == 0 then
        set(busTie,0)
        tielite1 = 1
        tielite2 = 1
        tielite3 = 1
    end
    
    if fieldActual1 == 0 and GenActual1 == 1 then
        set(GeneratorOn1, 0)
        fieldlit1 = 1
        genlite1 = 1
    end
    if fieldActual1 == 1 and GenActual1 == 1 and get(dref_N11) > 27 then
        set(GeneratorOn1, 1)
        fieldlit1 = 0
        genlite1 = 0
    end
    if fieldActual1 == 1 and GenActual1 == 0 then
        set(GeneratorOn1, 0)
        fieldlit1 = 0
        genlite1 = 1
    end
    if fieldActual1 == 0 and GenActual1 == 0 then
        set(GeneratorOn1, 0)
        fieldlit1 = 1
        genlite1 = 1
    end
    
    
    if fieldActual2 == 1 and GenActual2 == 1 and get(dref_N12) > 27 then
        set(GeneratorOn2, 1)
        fieldlit2 = 0
        genlite2 = 0
    end
    if fieldActual2 == 1 and GenActual2 == 0 then
        set(GeneratorOn2, 0)
        fieldlit2 = 0
        genlite2 = 1
    end
    if fieldActual2 == 0 and GenActual2 == 0 then
        set(GeneratorOn2, 0)
        fieldlit2 = 1
        genlite2 = 1
    end
    if fieldActual2 == 0 and GenActual2 == 1 then
        set(GeneratorOn2, 0)
        fieldlit2 = 1
        genlite2 = 1
    end
    
    if fieldActual3 == 1 and GenActual3 == 1 and get(dref_N13) > 27 then
        set(GeneratorOn3, 1)
        fieldlit3 = 0
        genlite3 = 0
    end
    if fieldActual3 == 1 and GenActual3 == 0 then
        set(GeneratorOn3, 0)
        fieldlit3 = 0
        genlite3 = 1
    end
    if fieldActual3 == 0 and GenActual3 == 0 then
        set(GeneratorOn3, 0)
        fieldlit3 = 1
        genlite3 = 1
    end
    if fieldActual3 == 0 and GenActual3 == 1 then
        set(GeneratorOn3, 0)
        fieldlit3 = 1
        genlite3 = 1
    end
    
    
    
    
    set(GenNeedle1, get(GenNeedle1)+((get(GenAmps1) - get(GenNeedle1))*RR*6))
    set(GenNeedle2, get(GenNeedle2)+((get(GenAmps2) - get(GenNeedle2))*RR*6))
    set(GenNeedle3, get(GenNeedle3)+((get(GenAmps3) - get(GenNeedle3))*RR*6))
    
    set(GenDriveOilTemp1, get(GenDriveOilTemp1)+((get(GenNeedle1) - get(GenDriveOilTemp1))*RR*0.08))
    set(GenDriveOilTemp2, get(GenDriveOilTemp2)+((get(GenNeedle2) - get(GenDriveOilTemp2))*RR*0.08))
    set(GenDriveOilTemp3, get(GenDriveOilTemp3)+((get(GenNeedle3) - get(GenDriveOilTemp3))*RR*0.08))
end

function DCmeterPanel()
    local Vneed
    local Aneed

    
    if get(DCmeterKnob) == 0 then
        --run if DC meter on BAT
        Vneed = get(BatVoltInd)
        if get(APU_StarSwitch) == 2 then
            Aneed = get(batAmps) - 100
            set(Battery1WattHr, get(Battery1WattHr) - 4/(1/RR))
        else
            Aneed = get(batAmps)
        end
    end
    if get(DCmeterKnob) == 1 and ESS_DC_powered == 1 then
        --Run if DC meter on ESS TR and ESS TR buss is powered
        Vneed = 28
        Aneed = 13.5
    elseif get(DCmeterKnob) == 1 then
        Vneed = 0
        Aneed = 0
    end
    if get(DCmeterKnob) == 2 and get(TR_On1) == 1 then
        --Run if DC meter is on TR 1 and TR is on
        Vneed = 28
        Aneed = 8.5
    elseif get(DCmeterKnob) == 2 then
        Vneed = 0
        Aneed = 0
    end
    if get(DCmeterKnob) == 3 and get(TR_On2) == 1 then
        --Run if DC meter is on TR 2 and TR is on
        Vneed = 28
        Aneed = 8.5
    elseif get(DCmeterKnob) == 3 then
        Vneed = 0
        Aneed = 0
    end
  
    --now smoothly set the needles to the needed values.
    set(DC_VoltNeedle, get(DC_VoltNeedle)+((Vneed - get(DC_VoltNeedle))*RR*6))
    set(DC_AmpsNeedle, get(DC_AmpsNeedle)+((Aneed - get(DC_AmpsNeedle))*RR*6))

end



function APUPanelLogic()

    if get(APUrunning) == 1 and get(APUGenOn) == 1 and get(APU_EGTNeelde) > 250 then
        set(APU_ampresNeedle, get(APU_ampresNeedle)+(((get(APUGenAmps)*1.8 + 20) - get(APU_ampresNeedle))*RR*6))
    else
        set(APU_ampresNeedle, get(APU_ampresNeedle)+((0 - get(APU_ampresNeedle))*RR*6))
    end
    
    set(APU_EGTNeelde, get(APU_EGTNeelde)+((EGTneedleGoto - get(APU_EGTNeelde))*RR/2))
    
    --if the APU actual is 0 then do this
    if APUStartActual == 0 or get(BatterOn) == 0 then
        set(APUStartSwitch, 0) -- set Sim APU swtich to off
        set(APU_StarSwitch, 0)
        APUStartActual = 0
        APUstarterLag = APUstarterLag+((0 - APUstarterLag)*RR/20) --reset the starter lag
        --EGTneedleGoto = 0 -- set the EGT back to off
        --set(APUGenOn, 0)   
    end
    --if get(BatterOn) == 0 and APUStartActual == 1 then
    --    APUStartActual = 0
    --    set(APUStartSwitch, 0)
    --    set(APU_StarSwitch, 0)
    --end
    --if APUStartActual == 1 then
    --    set(APUStartSwitch, 1)
    --end
    -- if the APUstartActual is flipped to start then
    if APUStartActual == 2 then
        APUstarterLag = APUstarterLag+((100 - APUstarterLag)*RR/7) -- engage the starter lag
        if APUstarterLag > 50 then -- when lag is more then 50% engage the sim starter switch to 2
            set(APUStartSwitch, 2)
            set(APU_StarSwitch, 1) -- flip the starter swtich back to on position
        end
    end
    if APUstarterLag > 99 then
        
        set(APUStartSwitch, 1)
    end
    
    if get(APU_N1) > 99 or get(APUrunning) == 0 then
        EGTload2 = 240 + myLerp(0,0,110,110,get(APU_ampresNeedle))
        if get(Eng2BleedSwitchL) == 1 or get(Eng2BleedSwitchR) == 1 then
            EGTload2 = EGTload2 + 100
        end
        EGTneedleGoto = myLerp(0,0,100,EGTload2,APUstarterLag) + get(dref_OAT)
    else
        EGTneedleGoto = myLerp(0,0,100,520,APUstarterLag) + get(dref_OAT)
    end
    
    
    
    --Start APU generator switch code here
    if APUFieldActual == 0 and APUGenActual == 1 then
        set(APUGenOn, 0)
        APUFL = 1
        APUGL = 1
    end
    if APUFieldActual == 1 and APUGenActual == 1 and EGTneedleGoto > 200 then
        set(APUGenOn, 1)
        APUFL = 0
        APUGL = 0
    end
    if APUFieldActual == 1 and APUGenActual == 0 then
        set(APUGenOn, 0)
        APUFL = 0
        APUGL = 1
    end
    if APUFieldActual == 0 and APUGenActual == 0 then
        set(APUGenOn, 0)
        APUFL = 1
        APUGL = 1
    end
    

end

function update()
    
    RR = get(frameRate)
    GeneratorPanel()
    DCmeterPanel()
    ACmeterPanel()
    APUPanelLogic()
    
    --this controls the lights fade as the value changes for them to be on or off.
    if get(busVolts1) > 5 or get(busVolts2) > 5 or get(busVolts3) > 5 or get(busVolts4) > 5 or get(busVolts5) > 5 then -- do we have power?
        set(pow, 1)
        
        set(avionics, 1) -- lets set the avionics on with power too.
    else
        set(pow, 0)
        set(avionics, 0)
    end
    
    set(fieldLight1, get(fieldLight1)+((fieldlit1*get(pow) - get(fieldLight1))*RR*25))
    set(fieldLight2, get(fieldLight2)+((fieldlit2*get(pow) - get(fieldLight2))*RR*25))
    set(fieldLight3, get(fieldLight3)+((fieldlit3*get(pow) - get(fieldLight3))*RR*25))
    set(genLight1, get(genLight1)+((genlite1*get(pow) - get(genLight1))*RR*25))
    set(genLight2, get(genLight2)+((genlite2*get(pow) - get(genLight2))*RR*25))
    set(genLight3, get(genLight3)+((genlite3*get(pow) - get(genLight3))*RR*25))
    set(TieLight1, get(TieLight1)+((tielite1*get(pow) - get(TieLight1))*RR*25))
    set(TieLight2, get(TieLight2)+((tielite2*get(pow) - get(TieLight2))*RR*25))
    set(TieLight3, get(TieLight3)+((tielite3*get(pow) - get(TieLight3))*RR*25))
    set(APU_GenLite, get(APU_GenLite)+((APUGL*get(pow)*get(APUSrunning) - get(APU_GenLite))*RR*25))
    set(APU_FieldLite, get(APU_FieldLite)+((APUFL*get(pow)*get(APUSrunning) - get(APU_FieldLite))*RR*25))
    set(ESSPOWfailLite, get(ESSPOWfailLite)+((EssFaillite*get(pow) - get(ESSPOWfailLite))*RR*25))
    
    --controls when the TRs turn on.
    if get(GenAmps1) > 0 then
        set(TR_On1, 1)
    else
        set(TR_On1, 0)
    end
    if get(GenAmps2) > 0 then
        set(TR_On2, 1)
    else
        set(TR_On2, 0)
    end
    
    --Setup defaults based on sim condition
    if get(BatterOn) == 1 and get(flighttime) < 5 then
        fieldActual1 = 1
        fieldActual2 = 1
        fieldActual3 = 1
        GenActual1 = 1
        GenActual2 = 1
        GenActual3 = 1
        TieActual = 1
        set(GeneratorOn1, 1)
        set(GeneratorOn2, 1)
        set(GeneratorOn3, 1)
        set(busTie, 1)
        set(TR_On1, 1)
        set(TR_On2, 1)
        set(HasAPUSwitch, 1)
        APUGenActual = 1
        APUFieldActual = 1
        set(APUStartSwitch, 0)
    end
    if get(BatterOn) == 0 and get(flighttime) < 5 then
        fieldActual1 = 1
        fieldActual2 = 1
        fieldActual3 = 1
        GenActual1 = 1
        GenActual2 = 1
        GenActual3 = 1
        set(GeneratorOn1, 1)
        set(GeneratorOn2, 1)
        set(GeneratorOn3, 1)
        TieActual = 0
        set(TR_On1, 0)
        set(TR_On2, 0)
        set(HasAPUSwitch, 1)
        APUGenActual = 1
        APUFieldActual = 1
        set(APUStartSwitch, 0)
    end
end -- end of update