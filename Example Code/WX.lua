

local RR = 0
Cdref("TCASButton",                      "FJS/727/wx/TCASButton")
Cdref("WXSysSwitch",                     "FJS/727/wx/WXSysSwitch")
Cdref("WXModeMapKnob",                   "FJS/727/wx/WXModeMapKnob")
Cdref("WXGainKnob",                      "FJS/727/wx/WXGainKnob")
Cdref("TiltKnob",                        "FJS/727/wx/TiltKnob")
dref_i("EFISshowWeather",                "sim/cockpit2/EFIS/EFIS_weather_on")
dref_i("EFISshowTcas",                   "sim/cockpit2/EFIS/EFIS_tcas_on")
dref_i("EFISMapRange",                   "sim/cockpit2/EFIS/map_range")
dref_f("InsBrightness1",                 "sim/cockpit2/electrical/instrument_brightness_ratio_manual[1]")
dref_f("InsBrightness1Knob",             "sim/cockpit2/switches/instrument_brightness_ratio[1]")

Cdref("ShowTEST",                        "FJS/727/wx/ShowTEST")
Cdref("WXMode",                          "FJS/727/wx/WXMode")
local buttonDown = 0
local WXonCount = 0

function WXSystem()

    if get(WXSysSwitch) == 1 then
        WXonCount = WXonCount + 1/(1/RR)
    elseif get(InsBrightness1Knob) == 0 then
        WXonCount = 0
    end
    
    if WXonCount < 30 then
        set(ShowTEST, 1)
        set(EFISshowWeather, 0)
        set(EFISshowTcas, 0)
    else
        set(ShowTEST, 0)
        set(EFISshowWeather, 1)
    end
    
    if get(EFISMapRange) == 0 and get(ShowTEST) == 0 then
        set(WXMode, 0)
        set(EFISshowTcas, 0)
        set(EFISshowWeather, 0)
    elseif get(EFISMapRange) > 0 and get(ShowTEST) == 0 and get(EFISshowWeather) == 1 and get(EFISshowTcas) == 0 then
        set(WXMode, 2)
    elseif get(EFISMapRange) > 0 and get(ShowTEST) == 0 and get(EFISshowWeather) == 0 and get(EFISshowTcas) == 1 then
        set(WXMode, 3)
    elseif get(EFISMapRange) > 0 and get(ShowTEST) == 0 and get(EFISshowWeather) == 1 and get(EFISshowTcas) == 1 then
        set(WXMode, 4)
    elseif get(ShowTEST) == 1 then
        set(WXMode, 1)
    end
end


function TCAS()
    if get(TCASButton) == 1 and buttonDown == 0 then
        commandOnce(findCommand("sim/instruments/EFIS_tcas"))
        buttonDown = 1
    end
    if get(TCASButton) == 0 and buttonDown == 1 then
        buttonDown = 0
    end
end


function update()
    RR = get(frameRate)
    WXSystem()
    TCAS()
    --initialize
    if get(BatterOn) == 1 and get(flighttime) < 5 then
        set(WXSysSwitch, 1)
        set(EFISshowTcas, 0)
    end
    if get(BatterOn) == 0 and get(flighttime) < 5 then
        set(WXSysSwitch, 0)
        set(EFISshowTcas, 0)
    end
    set(InsBrightness1Knob, get(InsBrightness1Knob)+((get(WXSysSwitch)*0.75*get(pow) - get(InsBrightness1Knob))*RR*0.5))
end