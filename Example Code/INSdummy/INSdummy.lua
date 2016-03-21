size = { 512 , 528}

defineProperty("Img_INSdummy", loadImage("CIVAdummy.png"))

components = {

    textureLit {
        position = { 0, 0, 512 , 528},
        image = get(Img_INSdummy),
        
    },
    
}

function update()
    
end

function draw()
    drawAll(components)
end
    
    
