size = { 600 , 330}


defineProperty("Img_Balance", loadImage("WNB200F.png"))
--defineProperty("Img_Seats", loadImage("Seats.png"))

--defineProperty("Img_Seats0", loadImage("Seats.png",104,0,16,41))
defineProperty("Img_Seats1", loadImage("Carg1.png"))
defineProperty("Img_Seats2", loadImage("Carg2.png"))
defineProperty("Img_Seats3", loadImage("Carg3.png"))
defineProperty("Img_Seats4", loadImage("Carg4.png"))
defineProperty("Img_Seats5", loadImage("Carg5.png"))
defineProperty("Img_Seats6", loadImage("Carg6.png"))

defineProperty("Img_CargCan", loadImage("CargCan.png"))
defineProperty("Img_CGmarker", loadImage("CGmarker.png"))

local Lucida = loadFont('LucidaFax12.fnt')
local color2 = 0.10
local color3 = 0.10
local color4 = 0.10
local color5 = 0.10
local color6 = 0.10
local color7 = 0.10
local color8 = 0.10
defineProperty("CGplace")
local CGvalue = 0

--Set Default loads
--Fuel
set(dref_Fuel1, 3779.93642)
set(dref_Fuel2, 3779.93642)
set(dref_Fuel3, 3779.93642)


Cdref("WB_Eco_01",   "FJS/B727/WNB/Eco01")
Cdref("WB_Eco_02",   "FJS/B727/WNB/Eco02")
Cdref("WB_Eco_03",   "FJS/B727/WNB/Eco03")
Cdref("WB_Eco_04",   "FJS/B727/WNB/Eco04")
Cdref("WB_Eco_05",   "FJS/B727/WNB/Eco05")
Cdref("WB_Eco_06",   "FJS/B727/WNB/Eco06")
Cdref("WB_Eco_07",   "FJS/B727/WNB/Eco07")
Cdref("WB_Eco_08",   "FJS/B727/WNB/Eco08")
Cdref("WB_Eco_09",   "FJS/B727/WNB/Eco09")
Cdref("WB_Eco_10",   "FJS/B727/WNB/Eco10")
Cdref("WB_Eco_11",   "FJS/B727/WNB/Eco11")
Cdref("WB_Eco_12",   "FJS/B727/WNB/Eco12")


Cdref("WB_ForCarg_01", "FJS/B727/WNB/ForCarg1")
Cdref("WB_ForCarg_02", "FJS/B727/WNB/ForCarg2")
Cdref("WB_ForCarg_03", "FJS/B727/WNB/ForCarg3")
Cdref("WB_ForCarg_04", "FJS/B727/WNB/ForCarg4")
Cdref("WB_ForCarg_05", "FJS/B727/WNB/ForCarg5")
Cdref("WB_ForCarg_06", "FJS/B727/WNB/ForCarg6")
Cdref("WB_ForCarg_07", "FJS/B727/WNB/ForCarg7")

Cdref("WB_AftCarg_01", "FJS/B727/WNB/AftCarg1")
Cdref("WB_AftCarg_02", "FJS/B727/WNB/AftCarg2")
Cdref("WB_AftCarg_03", "FJS/B727/WNB/AftCarg3")
Cdref("WB_AftCarg_04", "FJS/B727/WNB/AftCarg4")

    set(WB_Eco_01, math.random(1,6))
    set(WB_Eco_02, math.random(1,6))
    set(WB_Eco_03, math.random(1,6))
    set(WB_Eco_04, math.random(1,6))
    set(WB_Eco_05, math.random(1,6))
    set(WB_Eco_06, math.random(1,6))
    set(WB_Eco_07, math.random(1,6))
    set(WB_Eco_08, math.random(1,6))
    set(WB_Eco_09, math.random(1,6))
    set(WB_Eco_10, math.random(1,6))
    set(WB_Eco_11, math.random(1,6))
    set(WB_Eco_12, math.random(1,6))

        
    set(WB_ForCarg_01, math.random(0,1))
    set(WB_ForCarg_02, math.random(0,1))
    set(WB_ForCarg_03, math.random(0,1))
    set(WB_ForCarg_04, math.random(0,1))
    set(WB_ForCarg_05, math.random(0,1))
    set(WB_ForCarg_06, math.random(0,1))
    set(WB_ForCarg_07, math.random(0,1))
  
        
    set(WB_AftCarg_01, math.random(0,1))
    set(WB_AftCarg_02, math.random(0,1))
    set(WB_AftCarg_03, math.random(0,1))
    set(WB_AftCarg_04, math.random(0,1))


components = {

    textureLit {
        position = { 0, 0, 600, 330},
        image = get(Img_Balance),
        
    },
    --textureLit {
    --    position = { get(CGplace), 11, 2, 28},
    --    image = get(Img_CGmarker),
    --    
    --},
    
    textureLit { position = { 114, 130, 38, 41},image = get(Img_Seats1), visible = function() return 1 == get(WB_Eco_01) end,},
    textureLit { position = { 114, 130, 38, 41},image = get(Img_Seats2), visible = function() return 2 == get(WB_Eco_01) end,},
    textureLit { position = { 114, 130, 38, 41},image = get(Img_Seats3), visible = function() return 3 == get(WB_Eco_01) end,},
    textureLit { position = { 114, 130, 38, 41},image = get(Img_Seats4), visible = function() return 4 == get(WB_Eco_01) end,},
    textureLit { position = { 114, 130, 38, 41},image = get(Img_Seats5), visible = function() return 5 == get(WB_Eco_01) end,},
    textureLit { position = { 114, 130, 38, 41},image = get(Img_Seats6), visible = function() return 6 == get(WB_Eco_01) end,},
    
    clickable {
        position = {114, 130, 38, 41},
        
    onMouseClick = function()
                    set(WB_Eco_01, get(WB_Eco_01) + 1)                
    end
   },
   
    textureLit { position = { 153, 130, 38, 41},image = get(Img_Seats1), visible = function() return 1 == get(WB_Eco_02) end,},
    textureLit { position = { 153, 130, 38, 41},image = get(Img_Seats2), visible = function() return 2 == get(WB_Eco_02) end,},
    textureLit { position = { 153, 130, 38, 41},image = get(Img_Seats3), visible = function() return 3 == get(WB_Eco_02) end,},
    textureLit { position = { 153, 130, 38, 41},image = get(Img_Seats4), visible = function() return 4 == get(WB_Eco_02) end,},
    textureLit { position = { 153, 130, 38, 41},image = get(Img_Seats5), visible = function() return 5 == get(WB_Eco_02) end,},
    textureLit { position = { 153, 130, 38, 41},image = get(Img_Seats6), visible = function() return 6 == get(WB_Eco_02) end,},
    
    clickable {
        position = {153, 130, 38, 41},
        
    onMouseClick = function()
                    set(WB_Eco_02, get(WB_Eco_02) + 1)                
    end
   },
   
    textureLit { position = { 192, 130, 38, 41},image = get(Img_Seats1), visible = function() return 1 == get(WB_Eco_03) end,},
    textureLit { position = { 192, 130, 38, 41},image = get(Img_Seats2), visible = function() return 2 == get(WB_Eco_03) end,},
    textureLit { position = { 192, 130, 38, 41},image = get(Img_Seats3), visible = function() return 3 == get(WB_Eco_03) end,},
    textureLit { position = { 192, 130, 38, 41},image = get(Img_Seats4), visible = function() return 4 == get(WB_Eco_03) end,},
    textureLit { position = { 192, 130, 38, 41},image = get(Img_Seats5), visible = function() return 5 == get(WB_Eco_03) end,},
    textureLit { position = { 192, 130, 38, 41},image = get(Img_Seats6), visible = function() return 6 == get(WB_Eco_03) end,},
    
    clickable {
        position = {192, 130, 38, 41},
        
    onMouseClick = function()
                    set(WB_Eco_03, get(WB_Eco_03) + 1)                
    end
   },
   
   textureLit { position = { 231, 130, 38, 41},image = get(Img_Seats1), visible = function() return 1 == get(WB_Eco_04) end,},
    textureLit { position = { 231, 130, 38, 41},image = get(Img_Seats2), visible = function() return 2 == get(WB_Eco_04) end,},
    textureLit { position = { 231, 130, 38, 41},image = get(Img_Seats3), visible = function() return 3 == get(WB_Eco_04) end,},
    textureLit { position = { 231, 130, 38, 41},image = get(Img_Seats4), visible = function() return 4 == get(WB_Eco_04) end,},
    textureLit { position = { 231, 130, 38, 41},image = get(Img_Seats5), visible = function() return 5 == get(WB_Eco_04) end,},
    textureLit { position = { 231, 130, 38, 41},image = get(Img_Seats6), visible = function() return 6 == get(WB_Eco_04) end,},
    
    clickable {
        position = {231, 130, 38, 41},
        
    onMouseClick = function()
                    set(WB_Eco_04, get(WB_Eco_04) + 1)                
    end
   },
   
   textureLit { position = { 270, 130, 38, 41},image = get(Img_Seats1), visible = function() return 1 == get(WB_Eco_05) end,},
    textureLit { position = { 270, 130, 38, 41},image = get(Img_Seats2), visible = function() return 2 == get(WB_Eco_05) end,},
    textureLit { position = { 270, 130, 38, 41},image = get(Img_Seats3), visible = function() return 3 == get(WB_Eco_05) end,},
    textureLit { position = { 270, 130, 38, 41},image = get(Img_Seats4), visible = function() return 4 == get(WB_Eco_05) end,},
    textureLit { position = { 270, 130, 38, 41},image = get(Img_Seats5), visible = function() return 5 == get(WB_Eco_05) end,},
    textureLit { position = { 270, 130, 38, 41},image = get(Img_Seats6), visible = function() return 6 == get(WB_Eco_05) end,},
    
    clickable {
        position = {270, 130, 38, 41},
        
    onMouseClick = function()
                    set(WB_Eco_05, get(WB_Eco_05) + 1)                
    end
   },
   
   textureLit { position = { 309, 130, 38, 41},image = get(Img_Seats1), visible = function() return 1 == get(WB_Eco_06) end,},
    textureLit { position = { 309, 130, 38, 41},image = get(Img_Seats2), visible = function() return 2 == get(WB_Eco_06) end,},
    textureLit { position = { 309, 130, 38, 41},image = get(Img_Seats3), visible = function() return 3 == get(WB_Eco_06) end,},
    textureLit { position = { 309, 130, 38, 41},image = get(Img_Seats4), visible = function() return 4 == get(WB_Eco_06) end,},
    textureLit { position = { 309, 130, 38, 41},image = get(Img_Seats5), visible = function() return 5 == get(WB_Eco_06) end,},
    textureLit { position = { 309, 130, 38, 41},image = get(Img_Seats6), visible = function() return 6 == get(WB_Eco_06) end,},
    
    clickable { position = {309, 130, 38, 41}, onMouseClick = function() set(WB_Eco_06, get(WB_Eco_06) + 1) end },
    
    textureLit { position = { 348, 130, 38, 41},image = get(Img_Seats1), visible = function() return 1 == get(WB_Eco_07) end,},
    textureLit { position = { 348, 130, 38, 41},image = get(Img_Seats2), visible = function() return 2 == get(WB_Eco_07) end,},
    textureLit { position = { 348, 130, 38, 41},image = get(Img_Seats3), visible = function() return 3 == get(WB_Eco_07) end,},
    textureLit { position = { 348, 130, 38, 41},image = get(Img_Seats4), visible = function() return 4 == get(WB_Eco_07) end,},
    textureLit { position = { 348, 130, 38, 41},image = get(Img_Seats5), visible = function() return 5 == get(WB_Eco_07) end,},
    textureLit { position = { 348, 130, 38, 41},image = get(Img_Seats6), visible = function() return 6 == get(WB_Eco_07) end,},
    
    clickable { position = {348, 130, 38, 41}, onMouseClick = function() set(WB_Eco_07, get(WB_Eco_07) + 1) end },
    
    textureLit { position = { 387, 130, 38, 41},image = get(Img_Seats1), visible = function() return 1 == get(WB_Eco_08) end,},
    textureLit { position = { 387, 130, 38, 41},image = get(Img_Seats2), visible = function() return 2 == get(WB_Eco_08) end,},
    textureLit { position = { 387, 130, 38, 41},image = get(Img_Seats3), visible = function() return 3 == get(WB_Eco_08) end,},
    textureLit { position = { 387, 130, 38, 41},image = get(Img_Seats4), visible = function() return 4 == get(WB_Eco_08) end,},
    textureLit { position = { 387, 130, 38, 41},image = get(Img_Seats5), visible = function() return 5 == get(WB_Eco_08) end,},
    textureLit { position = { 387, 130, 38, 41},image = get(Img_Seats6), visible = function() return 6 == get(WB_Eco_08) end,},
    
    clickable { position = {387, 130, 38, 41}, onMouseClick = function() set(WB_Eco_08, get(WB_Eco_08) + 1) end },
    
    textureLit { position = { 426, 130, 38, 41},image = get(Img_Seats1), visible = function() return 1 == get(WB_Eco_09) end,},
    textureLit { position = { 426, 130, 38, 41},image = get(Img_Seats2), visible = function() return 2 == get(WB_Eco_09) end,},
    textureLit { position = { 426, 130, 38, 41},image = get(Img_Seats3), visible = function() return 3 == get(WB_Eco_09) end,},
    textureLit { position = { 426, 130, 38, 41},image = get(Img_Seats4), visible = function() return 4 == get(WB_Eco_09) end,},
    textureLit { position = { 426, 130, 38, 41},image = get(Img_Seats5), visible = function() return 5 == get(WB_Eco_09) end,},
    textureLit { position = { 426, 130, 38, 41},image = get(Img_Seats6), visible = function() return 6 == get(WB_Eco_09) end,},
    
    clickable { position = {426, 130, 38, 41}, onMouseClick = function() set(WB_Eco_09, get(WB_Eco_09) + 1) end },
    
    textureLit { position = { 465, 130, 38, 41},image = get(Img_Seats1), visible = function() return 1 == get(WB_Eco_10) end,},
    textureLit { position = { 465, 130, 38, 41},image = get(Img_Seats2), visible = function() return 2 == get(WB_Eco_10) end,},
    textureLit { position = { 465, 130, 38, 41},image = get(Img_Seats3), visible = function() return 3 == get(WB_Eco_10) end,},
    textureLit { position = { 465, 130, 38, 41},image = get(Img_Seats4), visible = function() return 4 == get(WB_Eco_10) end,},
    textureLit { position = { 465, 130, 38, 41},image = get(Img_Seats5), visible = function() return 5 == get(WB_Eco_10) end,},
    textureLit { position = { 465, 130, 38, 41},image = get(Img_Seats6), visible = function() return 6 == get(WB_Eco_10) end,},
    
    clickable { position = {465, 130, 38, 41}, onMouseClick = function() set(WB_Eco_10, get(WB_Eco_10) + 1) end },
    
    textureLit { position = { 504, 130, 38, 41},image = get(Img_Seats1), visible = function() return 1 == get(WB_Eco_11) end,},
    textureLit { position = { 504, 130, 38, 41},image = get(Img_Seats2), visible = function() return 2 == get(WB_Eco_11) end,},
    textureLit { position = { 504, 130, 38, 41},image = get(Img_Seats3), visible = function() return 3 == get(WB_Eco_11) end,},
    textureLit { position = { 504, 130, 38, 41},image = get(Img_Seats4), visible = function() return 4 == get(WB_Eco_11) end,},
    textureLit { position = { 504, 130, 38, 41},image = get(Img_Seats5), visible = function() return 5 == get(WB_Eco_11) end,},
    textureLit { position = { 504, 130, 38, 41},image = get(Img_Seats6), visible = function() return 6 == get(WB_Eco_11) end,},
    
    clickable { position = {504, 130, 38, 41}, onMouseClick = function() set(WB_Eco_11, get(WB_Eco_11) + 1) end },
    
    textureLit { position = { 543, 130, 38, 41},image = get(Img_Seats1), visible = function() return 1 == get(WB_Eco_12) end,},
    textureLit { position = { 543, 130, 38, 41},image = get(Img_Seats2), visible = function() return 2 == get(WB_Eco_12) end,},
    textureLit { position = { 543, 130, 38, 41},image = get(Img_Seats3), visible = function() return 3 == get(WB_Eco_12) end,},
    textureLit { position = { 543, 130, 38, 41},image = get(Img_Seats4), visible = function() return 4 == get(WB_Eco_12) end,},
    textureLit { position = { 543, 130, 38, 41},image = get(Img_Seats5), visible = function() return 5 == get(WB_Eco_12) end,},
    textureLit { position = { 543, 130, 38, 41},image = get(Img_Seats6), visible = function() return 6 == get(WB_Eco_12) end,},
    
    clickable { position = {543, 130, 38, 41}, onMouseClick = function() set(WB_Eco_12, get(WB_Eco_12) + 1) end },
    
    
    
    
    textureLit { position = { 178, 102, 20, 20},image = get(Img_CargCan), visible = function() return 1 == get(WB_ForCarg_01) end,},
    clickable { position = {178, 102, 20, 20}, onMouseClick = function() if get(WB_ForCarg_01) == 0 then set(WB_ForCarg_01, 1) else set(WB_ForCarg_01, 0) end end },

    textureLit { position = { 199, 102, 20, 20},image = get(Img_CargCan), visible = function() return 1 == get(WB_ForCarg_02) end,},
    clickable { position = {199, 102, 20, 20}, onMouseClick = function() if get(WB_ForCarg_02) == 0 then set(WB_ForCarg_02, 1) else set(WB_ForCarg_02, 0) end end },

    textureLit { position = { 220, 102, 20, 20},image = get(Img_CargCan), visible = function() return 1 == get(WB_ForCarg_03) end,},
    clickable { position = {220, 102, 20, 20}, onMouseClick = function() if get(WB_ForCarg_03) == 0 then set(WB_ForCarg_03, 1) else set(WB_ForCarg_03, 0) end end },

    textureLit { position = { 241, 102, 20, 20},image = get(Img_CargCan), visible = function() return 1 == get(WB_ForCarg_04) end,},
    clickable { position = {241, 102, 20, 20}, onMouseClick = function() if get(WB_ForCarg_04) == 0 then set(WB_ForCarg_04, 1) else set(WB_ForCarg_04, 0) end end },

    textureLit { position = { 262, 102, 20, 20},image = get(Img_CargCan), visible = function() return 1 == get(WB_ForCarg_05) end,},
    clickable { position = {262, 102, 20, 20}, onMouseClick = function() if get(WB_ForCarg_05) == 0 then set(WB_ForCarg_05, 1) else set(WB_ForCarg_05, 0) end end },

    textureLit { position = { 283, 102, 20, 20},image = get(Img_CargCan), visible = function() return 1 == get(WB_ForCarg_06) end,},
    clickable { position = {283, 102, 20, 20}, onMouseClick = function() if get(WB_ForCarg_06) == 0 then set(WB_ForCarg_06, 1) else set(WB_ForCarg_06, 0) end end },

    textureLit { position = { 304, 102, 20, 20},image = get(Img_CargCan), visible = function() return 1 == get(WB_ForCarg_07) end,},
    clickable { position = {304, 102, 20, 20}, onMouseClick = function() if get(WB_ForCarg_07) == 0 then set(WB_ForCarg_07, 1) else set(WB_ForCarg_07, 0) end end },




    textureLit { position = { 463, 99, 20, 20},image = get(Img_CargCan), visible = function() return 1 == get(WB_AftCarg_01) end,},
    clickable { position = {463, 99, 20, 20}, onMouseClick = function() if get(WB_AftCarg_01) == 0 then set(WB_AftCarg_01, 1) else set(WB_AftCarg_01, 0) end end },

    textureLit { position = { 484, 99, 20, 20},image = get(Img_CargCan), visible = function() return 1 == get(WB_AftCarg_02) end,},
    clickable { position = {484, 99, 20, 20}, onMouseClick = function() if get(WB_AftCarg_02) == 0 then set(WB_AftCarg_02, 1) else set(WB_AftCarg_02, 0) end end },

    textureLit { position = { 505, 99, 20, 20},image = get(Img_CargCan), visible = function() return 1 == get(WB_AftCarg_03) end,},
    clickable { position = {505, 99, 20, 20}, onMouseClick = function() if get(WB_AftCarg_03) == 0 then set(WB_AftCarg_03, 1) else set(WB_AftCarg_03, 0) end end },

    textureLit { position = { 526, 99, 20, 20},image = get(Img_CargCan), visible = function() return 1 == get(WB_AftCarg_04) end,},
    clickable { position = {526, 99, 20, 20}, onMouseClick = function() if get(WB_AftCarg_04) == 0 then set(WB_AftCarg_04, 1) else set(WB_AftCarg_04, 0) end end },




    --clickable { position = {13, 236, 11, 11}, onMouseClick = fuelTotalPlus() },
    
    clickable {
        position = {13, 236, 11, 11},
        
    onMouseClick = function()
        set(dref_Fuel1, get(dref_Fuel1)+75.5987283)
        set(dref_Fuel3, get(dref_Fuel3)+75.5987283)
        set(dref_Fuel2, get(dref_Fuel2)+75.5987283)           
    end
    },
    clickable {
        position = {2, 236, 11, 11},
        
    onMouseClick = function()
        set(dref_Fuel1, get(dref_Fuel1)-75.5987283)
        set(dref_Fuel3, get(dref_Fuel3)-75.5987283)
        set(dref_Fuel2, get(dref_Fuel2)-75.5987283)      
    end
    },
    clickable {
        position = {300, 196, 11, 11}, onMouseClick = function() set(dref_Fuel1, get(dref_Fuel1)-45.359237)         
    end
    },
    clickable {
        position = {337, 196, 11, 11}, onMouseClick = function() set(dref_Fuel1, get(dref_Fuel1)+45.359237)         
    end
    },
    clickable {
        position = {350, 196, 11, 11}, onMouseClick = function() set(dref_Fuel2, get(dref_Fuel2)-45.359237)         
    end
    },
    clickable {
        position = {388, 196, 11, 11}, onMouseClick = function() set(dref_Fuel2, get(dref_Fuel2)+45.359237)         
    end
    },
    clickable {
        position = {401, 196, 11, 11}, onMouseClick = function() set(dref_Fuel3, get(dref_Fuel3)-45.359237)         
    end
    },
    clickable {
        position = {439, 196, 11, 11}, onMouseClick = function() set(dref_Fuel3, get(dref_Fuel3)+45.359237)         
    end
    },
    
    
    
    clickable {
        position = {581, 209, 15, 14}, onMouseClick = function()
        set(WB_ForCarg_01, math.random(0,1))
        set(WB_ForCarg_02, math.random(0,1))
        set(WB_ForCarg_03, math.random(0,1))
        set(WB_ForCarg_04, math.random(0,1))
        set(WB_ForCarg_05, math.random(0,1))
        set(WB_ForCarg_06, math.random(0,1))
        set(WB_ForCarg_07, math.random(0,1))
        
        
        set(WB_AftCarg_01, math.random(0,1))
        set(WB_AftCarg_02, math.random(0,1))
        set(WB_AftCarg_03, math.random(0,1))
        set(WB_AftCarg_04, math.random(0,1))
        
    end
    },
    clickable {
        position = {564, 209, 15, 14}, onMouseClick = function()
        set(WB_ForCarg_01, 0)
        set(WB_ForCarg_02, 0)
        set(WB_ForCarg_03, 0)
        set(WB_ForCarg_04, 0)
        set(WB_ForCarg_05, 0)
        set(WB_ForCarg_06, 0)
        set(WB_ForCarg_07, 0)
        
        
        set(WB_AftCarg_01, 0)
        set(WB_AftCarg_02, 0)
        set(WB_AftCarg_03, 0)
        set(WB_AftCarg_04, 0)
    end
    },
    clickable {
        position = {547, 209, 15, 14}, onMouseClick = function()
        set(WB_ForCarg_01, 1)
        set(WB_ForCarg_02, 1)
        set(WB_ForCarg_03, 1)
        set(WB_ForCarg_04, 1)
        set(WB_ForCarg_05, 1)
        set(WB_ForCarg_06, 1)
        set(WB_ForCarg_07, 1)
        
        
        set(WB_AftCarg_01, 1)
        set(WB_AftCarg_02, 1)
        set(WB_AftCarg_03, 1)
        set(WB_AftCarg_04, 1)
    end
    },
    clickable {
        position = {581, 241, 15, 14}, onMouseClick = function()
        local random = math.random(1511,4966)
        set(dref_Fuel1, random)
        set(dref_Fuel3, random)
        set(dref_Fuel2, math.random(1511,14627))
    end
    },
    clickable {
        position = {564, 241, 15, 14}, onMouseClick = function()
        set(dref_Fuel1, 1511.9733)
        set(dref_Fuel3, 1511.9733)
        set(dref_Fuel2, 1511.9733)
    end
    },
    clickable {
        position = {547, 241, 15, 14}, onMouseClick = function()
        set(dref_Fuel1, 4966.1)
        set(dref_Fuel3, 4966.1)
        set(dref_Fuel2, 14627.66)
    end
    },
    clickable {
        position = {547, 225, 15, 14}, onMouseClick = function()
        
        set(WB_Eco_01, 6)
        set(WB_Eco_02, 6)
        set(WB_Eco_03, 6)
        set(WB_Eco_04, 6)
        set(WB_Eco_05, 6)
        set(WB_Eco_06, 6)
        set(WB_Eco_07, 6)
        set(WB_Eco_08, 6)
        set(WB_Eco_09, 6)
        set(WB_Eco_10, 6)
        set(WB_Eco_11, 6)
        set(WB_Eco_12, 6)
    end
    },
    clickable {
        position = {564, 225, 15, 14}, onMouseClick = function()
        
        set(WB_Eco_01, 0)
        set(WB_Eco_02, 0)
        set(WB_Eco_03, 0)
        set(WB_Eco_04, 0)
        set(WB_Eco_05, 0)
        set(WB_Eco_06, 0)
        set(WB_Eco_07, 0)
        set(WB_Eco_08, 0)
        set(WB_Eco_09, 0)
        set(WB_Eco_10, 0)
        set(WB_Eco_11, 0)
        set(WB_Eco_12, 0)
    end
    },
    clickable {
        position = {581, 225, 15, 14}, onMouseClick = function()
        local Ranlow = math.random(1,5)
        set(WB_Eco_01, math.random(Ranlow,6))
        set(WB_Eco_02, math.random(Ranlow,6))
        set(WB_Eco_03, math.random(Ranlow,6))
        set(WB_Eco_04, math.random(Ranlow,6))
        set(WB_Eco_05, math.random(Ranlow,6))
        set(WB_Eco_06, math.random(Ranlow,6))
        set(WB_Eco_07, math.random(Ranlow,6))
        set(WB_Eco_08, math.random(Ranlow,6))
        set(WB_Eco_09, math.random(Ranlow,6))
        set(WB_Eco_10, math.random(Ranlow,6))
        set(WB_Eco_11, math.random(Ranlow,6))
        set(WB_Eco_12, math.random(Ranlow,6))
    end
    },
    clickable {
        position = {0, 0, 14, 14}, onMouseClick = function() set(Cdref_WNBToggle, 0)         
    end
    },
    clickable {
        position = {586, 0, 14, 14}, onMouseClick = function() set(Cdref_WNBToggle, 0)         
    end
    },clickable {
        position = {586, 316, 14, 14}, onMouseClick = function() set(Cdref_WNBToggle, 0)         
    end
    },clickable {
        position = {0, 316, 14, 14}, onMouseClick = function() set(Cdref_WNBToggle, 0)         
    end
    },

}


function Calc(value,arm,type)
    local weight = 0
    if type == 1 then
        weight = value*paxBaseWeight
        paxCount = paxCount + value
        payload = payload + weight
        paxWeight = paxWeight + weight
    end
    if type == 2 then
        weight = value*baseCargoCanWeight
        CargoWeight = CargoWeight + weight
        payload = payload + weight
    end
    if type == 3 then
        weight = value*2.20462262
    end
    moment = (moment+(weight*arm))
    
end

function update()

    if get(WB_Eco_01) > 6 then set(WB_Eco_01, 0) end
    if get(WB_Eco_02) > 6 then set(WB_Eco_02, 0) end
    if get(WB_Eco_03) > 6 then set(WB_Eco_03, 0) end
    if get(WB_Eco_04) > 6 then set(WB_Eco_04, 0) end
    if get(WB_Eco_05) > 6 then set(WB_Eco_05, 0) end
    if get(WB_Eco_06) > 6 then set(WB_Eco_06, 0) end
    if get(WB_Eco_07) > 6 then set(WB_Eco_07, 0) end
    if get(WB_Eco_08) > 6 then set(WB_Eco_08, 0) end
    if get(WB_Eco_09) > 6 then set(WB_Eco_09, 0) end
    if get(WB_Eco_10) > 6 then set(WB_Eco_10, 0) end
    if get(WB_Eco_11) > 6 then set(WB_Eco_11, 0) end
    if get(WB_Eco_12) > 6 then set(WB_Eco_12, 0) end





--Run Weight And Balance Calc
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    moment = 0
    paxWeight = 0
    paxCount = 0
    payload = 0
    paxBaseWeight = 780
    baseCargoCanWeight = 1250
    CargoWeight = 0
    largeArm = 0
    --local paxWeight = 0
    --local baseLoad = 772.921398 -- in kgs or in 1704 lb -- porters LQB for full crew and catering
    local baseArm = 942
    local baseMoment = (get(dref_emptyWeight)*2.20462262*baseArm)
    
    --fuelArm1 = myLerp(500,874.7,24362,930.0,(get(dref_Fuel1)*2.20462262))
    --fuelArm2 = myLerp(500,821.2,30485,812.2,(get(dref_Fuel2)*2.20462262))
    --fuelArm3 = myLerp(500,874.7,24362,930.0,(get(dref_Fuel3)*2.20462262))
    
    Calc(get(dref_Fuel1),902.35,3)
    Calc(get(dref_Fuel2),816.7,3)
    Calc(get(dref_Fuel3),902.35,3)
    
    Calc(get(WB_Eco_01),271,1)
    Calc(get(WB_Eco_02),360,1)
    Calc(get(WB_Eco_03),449,1)
    Calc(get(WB_Eco_04),538,1)
    Calc(get(WB_Eco_05),627,1)
    Calc(get(WB_Eco_06),716,1)
    Calc(get(WB_Eco_07),805,1)
    Calc(get(WB_Eco_08),894,1)
    Calc(get(WB_Eco_09),983,1)
    Calc(get(WB_Eco_10),1072,1)
    Calc(get(WB_Eco_11),1161,1)
    Calc(get(WB_Eco_12),1250,1)

    
    Calc(get(WB_ForCarg_01),396.5,2)
    Calc(get(WB_ForCarg_02),441.94,2)
    Calc(get(WB_ForCarg_03),487.39,2)
    Calc(get(WB_ForCarg_04),532.83,2)
    Calc(get(WB_ForCarg_05),578.28,2)
    Calc(get(WB_ForCarg_06),623.72,2)
    Calc(get(WB_ForCarg_07),669.16,2)
    
    Calc(get(WB_AftCarg_01),1003.98,2)
    Calc(get(WB_AftCarg_02),1049.42,2)
    Calc(get(WB_AftCarg_03),1094.42,2)
    Calc(get(WB_AftCarg_04),1140.31,2)


    
    LargeArm = (baseMoment+moment)/(get(dref_grossWeight)*2.20462262)
    set(dref_payloadWeight, payload/2.20462262)
    
    set(CGplace, myLerp(872.849,62.5,936.094,272.5,LargeArm))
    CGvalue = (LargeArm-860.2)/1.807
    
    set(dref_takeoffTrim, myLerp(7,0.5,42,-0.3,CGvalue))
    
    
    set(dref_ceeOfGee, (LargeArm - 904.4715)*0.0254)
    
    if get(ZFWLBSShow) > 148000 then
        color3 = 1.0
    else
        color3 = 0.10
    end
    if get(GrossWeightLBSShow) > 184500 then
        color4 = 1.0
    else
        color4 = 0.10
    end
    if get(GrossWeightLBSShow) > 158000 then
        color5 = 1.0
    else
        color5 = 0.10
    end
    if get(FuelTotalLBSShow) < 5000 then
        color6 = 0.5
        color7 = 0.25
    else
        color6 = 0.1
        color7 = 0.1
    end
    
    if CGvalue > 42 or CGvalue < 7 then
        color8 = 1.0
    else
        color8 = 0.1
    end


end



function draw()
drawAll(components)


    drawText(Lucida, 146, 298, math.ceil(get(emptyWeightLBS)) .. " lbs",  color2,color2,color2)
    drawText(Lucida, 146, 283, paxWeight .. " lbs",  color2,color2,color2)
    drawText(Lucida, 146, 268, CargoWeight .. " lbs",  color2,color2,color2)
    drawText(Lucida, 146, 253, get(ZFWLBSShow) .. " lbs",  color3,color2,color2)
    drawText(Lucida, 146, 238, get(FuelTotalLBSShow) .. " lbs (" .. math.ceil((get(dref_TotalFuel)/24600)*100) .. "%)",  color6,color7,color2)
    drawText(Lucida, 146, 223, get(GrossWeightLBSShow) .. " lbs (" .. math.ceil(((get(GrossWeightLBSShow)-97600)/87200)*100) .. "%)",  color4,0,0)
    drawText(Lucida, 146, 208, math.ceil(((get(dref_TotalFuel)*2.20462262)-5000)/20) .. " nm",  color2,color2,color2)
    drawText(Lucida, 146, 193, get(ZFWLBSShow)+5000 .. " lbs",  color2,color2,color2)

    drawText(Lucida, 421, 60, "184500 lbs",  color4,color2,color2)
    drawText(Lucida, 421, 45, "158000 lbs",  color5,color2,color2)
    drawText(Lucida, 421, 30, "148000 lbs",  color3,color2,color2)

    drawText(Lucida, 303, 230, math.ceil(get(dref_Fuel1)*2.20462262),  color2,color2,color2)
    drawText(Lucida, 353, 230, math.ceil(get(dref_Fuel2)*2.20462262),  color2,color2,color2)
    drawText(Lucida, 403, 230, math.ceil(get(dref_Fuel3)*2.20462262),  color2,color2,color2)
    
    drawText(Lucida, 308, 215, math.ceil((get(dref_Fuel1)/4965.92927)*100) .. "%",  color2,color2,color2)
    drawText(Lucida, 358, 215, math.ceil((get(dref_Fuel2)/14627.4467)*100) .. "%",  color2,color2,color2)
    drawText(Lucida, 408, 215, math.ceil((get(dref_Fuel3)/4965.92927)*100) .. "%",  color2,color2,color2)
    
    drawText(Lucida, 150, 55, (math.ceil(CGvalue*100))/100,  color8,color2,color2)
    
    drawTexture(get(Img_CGmarker),get(CGplace),11,2,28)



end

