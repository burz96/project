size = { 600 ,200}

defineProperty("Img_Options", loadImage("Options.png"))
defineProperty("Img_OpOK", loadImage("OpOK.png"))

local RR = 0

dref_i("startup_running",      "sim/operation/prefs/startup_running")
dref_f("GenLiteSwitch53",      "sim/cockpit2/switches/generic_lights_switch[53]")
dref_f("FieldOfView",          "sim/graphics/view/field_of_view_deg")
dref_s("note0",                "sim/aircraft/view/acf_notes[0]")
dref_s("auth0",                "sim/aircraft/view/acf_author[0]")
Cdref("InternalSound",         "FJS/727/Options/InternalSound")
Cdref("ExternalSound",         "FJS/727/Options/ExternalSound")
Cdref("ShowDefaultFMC",        "FJS/727/Options/ShowDefaultFMC")
Cdref("HideYoke",              "FJS/727/Options/HideYoke")

Cdref("GndDeIce",              "FJS/727/Options/GndDeIce")
dref_f("AirframeIce",          "sim/flightmodel/failures/frm_ice")
dref_f("AoAIce",               "sim/flightmodel/failures/aoa_ice")
dref_f("inlet_ice",            "sim/flightmodel/failures/inlet_ice")
dref_f("PitotIce",             "sim/flightmodel/failures/pitot_ice")
dref_f("Pitot2Ice",            "sim/flightmodel/failures/pitot_ice2")
dref_f("window_ice",           "sim/flightmodel/failures/window_ice")

set(ExternalSound, 0.75)

local Lucida = loadFont('LucidaFax12.fnt')
local color2 = 0.10
local color3 = 0.10
local color4 = 0.10
local color5 = 0.10
local color6 = 0.10
local color7 = 0.10
local color8 = 0.10


components = {

    textureLit {
        position = { 0, 0, 600, 200},
        image = get(Img_Options),
        
    },
    
    textureLit { position = { 14, 160, 11, 11},image = get(Img_OpOK), visible = function() return 0 == get(startup_running) end,},
    clickable {
        position = {14, 160, 11, 11},
        
    onMouseClick = function()
                    if get(startup_running) == 1 then
                        set(startup_running, 0)
                    else
                        set(startup_running, 1)
                    end
    end
    },
    textureLit { position = { 14, 145, 11, 11},image = get(Img_OpOK), visible = function() return 1 == get(startup_running) end,},
    clickable {
        position = {14, 145, 11, 11},
        
    onMouseClick = function()
                    if get(startup_running) == 1 then
                        set(startup_running, 0)
                    else
                        set(startup_running, 1)
                    end
    end
    },
    clickable {
        position = {14, 130, 11, 11},
        
    onMouseClick = function()
                    set(FieldOfView, get(FieldOfView)+1)
    end
    },
    clickable {
        position = {3, 130, 11, 11},
        
    onMouseClick = function()
                    set(FieldOfView, get(FieldOfView)-1)
    end
    },
    clickable {
        position = {14, 115, 11, 11},
        
    onMouseClick = function()
        if get(ExternalSound) < 100 then
            set(ExternalSound, get(ExternalSound)+0.01)
        end
    end
    },
    clickable {
        position = {3, 115, 11, 11},
        
    onMouseClick = function()
        if get(ExternalSound) > 0 then
            set(ExternalSound, get(ExternalSound)-0.01)
        end
    end
    },
    textureLit { position = { 14, 100, 11, 11},image = get(Img_OpOK), visible = function() return 1 == get(TimeIsZulu) end,},
    clickable {
        position = {14, 100, 11, 11},
        
    onMouseClick = function()
                    if get(TimeIsZulu) == 1 then
                        set(TimeIsZulu, 0)
                    else
                        set(TimeIsZulu, 1)
                    end
    end
    },
    textureLit { position = { 14, 85, 11, 11},image = get(Img_OpOK), visible = function() return 1 == get(ShowDefaultFMC) end,},
    clickable {
        position = {14, 85, 11, 11},
        
    onMouseClick = function()
                    if get(ShowDefaultFMC) == 1 then
                        set(ShowDefaultFMC, 0)
                    else
                        set(ShowDefaultFMC, 1)
                    end
    end
    },
    textureLit { position = { 14, 70, 11, 11},image = get(Img_OpOK), visible = function() return 1 == get(HideYoke) end,},
    clickable {
        position = {14, 70, 11, 11},
        
    onMouseClick = function()
                    if get(HideYoke) == 1 then
                        set(HideYoke, 0)
                    else
                        set(HideYoke, 1)
                    end
    end
    },
    --textureLit { position = { 14, 55, 11, 11},image = get(Img_OpOK), visible = function() return 1 == get(GndDeIce) end,},
    --clickable {
    --    position = {14, 55, 11, 11},
    --    
    --onMouseClick = function()
    --                if get(GndDeIce) == 1 then
    --                    set(GndDeIce, 0)
    --                else
    --                    set(GndDeIce, 1)
    --                end
    --end
    --},
    clickable {
        position = {0, 0, 14, 14}, onMouseClick = function() set(Cdref_OptionsToggle, 0)
    end
    },
    clickable {
        position = {586, 0, 14, 14}, onMouseClick = function() set(Cdref_OptionsToggle, 0)
    end
    },clickable {
        position = {586, 185, 14, 14}, onMouseClick = function() set(Cdref_OptionsToggle, 0)
    end
    },clickable {
        position = {0, 185, 14, 14}, onMouseClick = function() set(Cdref_OptionsToggle, 0)
    end
    },
}


function update()
    RR = get(frameRate)
    set(InternalSound, 1)
    
    --set(ExternalSound, 1)
    
    set(AoAIce, 0)
    
    

end


function draw()
    drawAll(components)
    drawText(Lucida, 30, 132, math.ceil(get(FieldOfView)), 0.10,0.10,0.10)
    drawText(Lucida, 30, 117, math.ceil(get(ExternalSound)*100), 0.10,0.10,0.10)
    
    drawText(Lucida, 500, 33, get(note0), 0.10,0.10,0.10)
    drawText(Lucida, 440, 18, get(auth0), 0.10,0.10,0.10)

end