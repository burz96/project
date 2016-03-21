size = { 25 , 150}

Cdref("Cdref_mainMenuSlide", "FJS/B727/slide/mainMenuSlide")
defineProperty("Img_mainMenu", loadImage("MainMenu2.png"))

--local fontA = loadFont('fontA.fnt')
local menuLeft = -200
local menuRight = 0
local MenuAtNow = 0
local color1 = 0.17

--function slideMenu()
--    if get(Cdref_mainMenuSlide) == 1 then
--        set(Cdref_mainMenuSlide, 0)
--    else
--        set(Cdref_mainMenuSlide, 1)
--    end
--end



components = {

    textureLit {
        position = function() return pos_1 end,
        image = get(Img_mainMenu),
        
    },
   -- 
   -- clickable {
   --     position = function() return pos_2 end,
   --     
   -- onMouseClick = function()
   --                 slideMenu()
   --                 
   -- end
   --},
   --
   clickable {
        position = {0, 125, 25, 25},
        
    onMouseClick = function()
                    if get(Cdref_VcardsToggle) == 0 then
                        set(Cdref_VcardsToggle, 1)
                    else
                        set(Cdref_VcardsToggle, 0)
                    end
                    
    end
   },
   
   clickable {
        position = function() return {0, 100, 25, 25} end,
        
    onMouseClick = function()
                    if get(Cdref_WNBToggle) == 0 then
                        set(Cdref_WNBToggle, 1)
                    else
                        set(Cdref_WNBToggle, 0)
                    end
                    
    end
   },
   clickable {
        position = function() return {0, 75, 25, 25} end,
        
    onMouseClick = function()
                    if get(Cdref_OptionsToggle) == 0 then
                        set(Cdref_OptionsToggle, 1)
                    else
                        set(Cdref_OptionsToggle, 0)
                    end
                    
    end
   },
   clickable {
        position = function() return {0, 50, 25, 25} end,
        
    onMouseClick = function()
                if get(CIVAinstalled) < 99 then
                    if get(INS_toggle) == 0 then
                        set(INS_toggle, 1)
                    else
                        set(INS_toggle, 0)
                    end
                else
                    if get(CIVA_toggle) == 0 then
                        set(CIVA_toggle, 1)
                    else
                        set(CIVA_toggle, 0)
                    end
                end
                    
    end
   },
   
}
--
--
--
--
function update()

    pos_1 = {0, 0, 25, 150}
    --pos_2 = {MenuAtNow, 402, 220, 55}
    --pos_3 = 
    --
    --
    set(Cdref_mainMenuToggle, 1)
    --
    --if get(Cdref_mainMenuSlide) == 0 then
    --    MenuAtNow = menuLeft
    --elseif get(Cdref_mainMenuSlide) == 1 then
    --    MenuAtNow = menuRight
    --end
    

end



function draw()
drawAll(components)

--drawRectangle(0, 0, 384, 105, 0, 0, 0, .4)
--drawText(fontA, pos_1[1]+35, 365, "v cards",  color1,color1,color1)

end