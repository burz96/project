size = { 400, 425 }

Cdref("Cdref_cardTug", "FJS/B727/cardTug")
defineProperty("Img_VcardTakeoff", loadImage("VcardsTakeoff.png"))
defineProperty("Img_VcardLanding", loadImage("VcardsLanding.png"))

Cdref("IASBugSetL1",                     "FJS/727/num/AltBugSetL1")
Cdref("IASBugSetL2",                     "FJS/727/num/AltBugSetL2")
Cdref("IASBugSetL3",                     "FJS/727/num/AltBugSetL3")



local fontB = loadFont('fontB.fnt')
local fontC = loadFont('fontC.fnt')
local color1 = 0.17

function LandingFlapSet()
    set(landingFlaps, get(landingFlaps) + 1)
    if get(landingFlaps) == 4 then
        set(landingFlaps, 0)
    end
end

function TakeoffFlapsSet()
    set(takeoffFlaps, get(takeoffFlaps) + 1)
    if get(takeoffFlaps) == 3 then
        set(takeoffFlaps, 0)
    end
end




components = {

    textureLit {
        position = { 0, 0, 400, 425},
        image = get(Img_VcardTakeoff),
        visible = function() return 1 ~= get(Cdref_cardTug) end,
    },
    
    textureLit {
        position = { 0, 0, 400, 425},
        image = get(Img_VcardLanding),
        visible = function() return 0 ~= get(Cdref_cardTug) end,
        
    },
    
    clickable {
        position = {0, 400, 150, 25},
        
    onMouseClick = function()
                    set(Cdref_cardTug, 0)                
    end
   },
   clickable {
        position = {150, 400, 150, 25},
        
    onMouseClick = function()
                    set(Cdref_cardTug, 1)                
    end
   },
   clickable {
        position = {17, 171, 110, 40},
        visible = function() return 1 ~= get(Cdref_cardTug) end,
        
    onMouseClick = function()
                    TakeoffFlapsSet()
                                   
    end
   },
   clickable {
        position = {30, 242, 120, 30},
        visible = function() return 0 ~= get(Cdref_cardTug) end,
        
    onMouseClick = function()
                         LandingFlapSet()           
    end
   }, 
}


function update()

    if get(takeoffFlaps) == 0 then
        set(takeoffFlapsShow, 5)
    end
    if get(takeoffFlaps) == 1 then
        set(takeoffFlapsShow, 15)
    end
    if get(takeoffFlaps) == 2 then
        set(takeoffFlapsShow, 20)
    end
    
    if get(landingFlaps) == 0 then
        set(landingFlapsShow, 30)
    end
    if get(landingFlaps) == 1 then
        set(landingFlapsShow, 15)
    end
    if get(landingFlaps) == 2 then
        set(landingFlapsShow, 5)
    end
    if get(landingFlaps) == 3 then
        set(landingFlapsShow, 0)
    end

    set(GrossWeightLBSShow, math.ceil(get(GrossWeightLBS)))
    set(FuelTotalLBSShow, math.ceil(get(FuelTotalLBS)))
    set(ZFWLBSShow, math.ceil(get(ZFWLBS)))
    set(dref_OATShow, math.ceil(get(dref_OAT)))
    set(dref_QNHShow, (math.ceil(get(dref_QNH)*100)/100))
    if get(GrossWeightLBSShow) < 200000 then
        set(flapRetract0Show, 235)    
        set(flapRetract2Show, 225)    
    end
    if get(GrossWeightLBSShow) < 191000 then
        set(flapRetract0Show, 220)    
        set(flapRetract2Show, 210)    
    end
    if get(GrossWeightLBSShow) < 176000 then
        set(flapRetract0Show, 210)    
        set(flapRetract2Show, 200)    
    end
    if get(GrossWeightLBSShow) < 154500 then
        set(flapRetract0Show, 200)    
        set(flapRetract2Show, 190)    
    end
    set(flapRetract2015Show, get(V2) + 10)
    set(flapRetract5Show, get(V2) + 30)
    
    if get(Cdref_cardTug) == 0 then
        set(IASBugSetL1, get(V1))
        set(IASBugSetL2, get(flapRetract2015Show))
        set(IASBugSetL3, get(flapRetract0Show))
    else
        set(IASBugSetL1, get(Vref))
        set(IASBugSetL2, get(flapRetract2015Show))
        set(IASBugSetL3, get(flapRetract0Show))
    end

end


function draw()
drawAll(components)
if get(Cdref_cardTug) == 0 then
    drawText(fontB, 69, 175, get(takeoffFlapsShow),  color1,color1,color1)
    drawText(fontB, 50, 285, "96.6",  color1,color1,color1)
    drawText(fontB, 50, 325, "2.19",  color1,color1,color1)
    drawText(fontC, 196, 206, get(V1),  color1,color1,color1)
    drawText(fontC, 193, 151, get(VR),  color1,color1,color1)
    drawText(fontC, 195, 100, get(V2),  color1,color1,color1)
    drawText(fontB, 295, 49, get(GrossWeightLBSShow),  color1,color1,color1)
    drawText(fontB, 165, 49, get(FuelTotalLBSShow),  color1,color1,color1)
    drawText(fontB, 35, 49, get(ZFWLBSShow),  color1,color1,color1)
    drawText(fontB, 50, 30, get(dref_OATShow),  color1,color1,color1)
    drawText(fontB, 145, 30, get(dref_QNHShow),  color1,color1,color1)
    drawText(fontB, 311, 155, get(flapRetract2015Show),  color1,color1,color1)
    drawText(fontB, 314, 130, get(flapRetract5Show),  color1,color1,color1)
    drawText(fontB, 314, 102, get(flapRetract2Show),  color1,color1,color1)
    drawText(fontB, 313, 75, get(flapRetract0Show),  color1,color1,color1)
    
    
end
if get(Cdref_cardTug) == 1 then
    drawText(fontB, 69, 245, get(landingFlapsShow),  color1,color1,color1)
    drawText(fontC, 300, 300, get(Vref),  color1,color1,color1)
    drawText(fontB, 50, 40, get(GrossWeightLBSShow),  color1,color1,color1)
    drawText(fontB, 250, 40, get(FuelTotalLBSShow),  color1,color1,color1)
    drawText(fontB, 60, 65, get(dref_OATShow),  color1,color1,color1)
    drawText(fontB, 320, 65, get(dref_QNHShow),  color1,color1,color1)
end

end