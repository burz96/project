--defineProperty("mainPanel_subpanel", globalPropertyi("FJS/B727/mainMenuToggle"))
Cdref("Cdref_mainMenuToggle", "FJS/B727/mainMenuToggle")
Cdref("Cdref_VcardsToggle", "FJS/B727/VcardsToggle")
Cdref("Cdref_WNBToggle", "FJS/B727/WNBToggle")
Cdref("Cdref_OptionsToggle", "FJS/B727/OptionsToggle")
Cdref("Cdref_InitToggle", "FJS/B727/InitToggle")
Cdref("INS_toggle",   "FJS/B727/INS_toggle")



defineProperty("panel_1") 
defineProperty("panel_2") 
defineProperty("panel_3") 
defineProperty("panel_4") 
defineProperty("panel_5")
defineProperty("panel_6")

local p1 = get(panel_1)
local p2 = get(panel_2)
local p3 = get(panel_3)
local p4 = get(panel_4)
local p5 = get(panel_5)
local p6 = get(panel_6)
 
-- logic of show/hide menu
function update()

 -- set visible property
 p1.visible = get(Cdref_mainMenuToggle) == 1
 p2.visible = get(Cdref_VcardsToggle) == 1
 p3.visible = get(Cdref_WNBToggle) == 1
 p4.visible = get(Cdref_OptionsToggle) == 1
 p5.visible = get(Cdref_InitToggle) == 1
 p6.visible = get(INS_toggle) == 1
 
end