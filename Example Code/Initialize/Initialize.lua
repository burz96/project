size = { 250 ,200}

defineProperty("Img_Init", loadImage("Initialize.png"))

local Lucida = loadFont('LucidaFax12.fnt')

local timeleft = 0

--dref_i("SmokeEffect",         "sim/flightmodel/failures/smoking")

components = {

    textureLit {
        position = { 0, 0, 250, 200},
        image = get(Img_Init),
        
    },
}


function update()
    if get(flighttime) < 5 then
        set(Cdref_InitToggle, 1)
    else
        set(Cdref_InitToggle, 0)
    end
    timeleft = myLerp(0,5,5,0,get(flighttime))
    
    --initialize.
    if get(BatterOn) == 1 and get(flighttime) < 5 then
        --set(SmokeEffect, 1)
    end
    if get(BatterOn) == 0 and get(flighttime) < 5 then
        --set(SmokeEffect, 1)
    end

end

function draw()
    drawAll(components)
    drawText(Lucida, 15, 180, "Initializing, please wait......." .. math.ceil(timeleft), 1,1,1)
    

end