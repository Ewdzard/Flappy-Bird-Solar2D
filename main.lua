local physics = require("physics")
physics.start()
physics.setGravity(10, 0)
local x = display.contentCenterX
local y = display.contentCenterY





local bolinha = display.newCircle(x-50, 480, 20);
bolinha:setFillColor(245/255,242/255,66/255)
physics.addBody(bolinha, "dynamic", {radius=20, bounce=0},{friction=1.0})
--bolinha.isSensor = true

--local bolinha2 = display.newCircle(x+50, y-100, 45);
--bolinha2:setFillColor(90/255,240/255,90/255)
--physics.addBody(bolinha2, "dynamic", {radius=45, bounce=0})

local cano = display.newRect(240, -110, 100, 50)
physics.addBody(cano,"dynamic")
cano:setFillColor(255/255,0,0)
cano:applyForce(0,15,cano.x,cano.y)
cano.isSensor = true
cano.gravityScale = 0


local cano2 = display.newRect(10, -110, 100, 50)
physics.addBody(cano2,"dynamic")
cano2:setFillColor(255/255,0,0)
cano2:applyForce(0,15,cano2.x,cano2.y)
cano2.isSensor = true
cano2.gravityScale = 0
---local botao = display.newRect(x,y,1500,1500)
--.alpha = 0.1

local cano3 = display.newRect(240, -410, 100, 50)
physics.addBody(cano3,"dynamic")
cano3:setFillColor(255/255,0,0)
cano3:applyForce(0,15,cano3.x,cano3.y)
cano3.isSensor = true
cano3.gravityScale = 0

local cano4 = display.newRect(10, -410, 100, 50)
physics.addBody(cano4,"dynamic")
cano4:setFillColor(255/255,0,0)
cano4:applyForce(0,15,cano4.x,cano4.y)
cano4.isSensor = true
cano4.gravityScale = 0

local cano5 = display.newRect(240, -710, 100, 50)
physics.addBody(cano5,"dynamic")
cano5:setFillColor(255/255,0,0)
cano5:applyForce(0,15,cano5.x,cano5.y)
cano5.isSensor = true
cano5.gravityScale = 0

local cano6 = display.newRect(10, -710, 100, 50)
physics.addBody(cano6,"dynamic")
cano6:setFillColor(255/255,0,0)
cano6:applyForce(0,15,cano6.x,cano6.y)
cano6.isSensor = true
cano6.gravityScale = 0


--local bola2 = display.newCircle(x,450,30)
--bola2:setFillColor(1,0,0)
--physics.addBody(bola2, "static", {radius=30, bounce=0})

local xb = 310
local yb = display.contentCenterY
local base = display.newRect(xb, yb, 3200, 40)
base:setFillColor(80/255,245/255,66/255)
physics.addBody(base,"static", {bounce=0}, {friction=1});
base:rotate(90)

local function impulsoLinear(event)
    bolinha:applyLinearImpulse(-0.1, 0, bolinha.x, bolinha.y)
    
    
end


bolinha.myName = "Bola"

cano.myName = "Cano"

local function onLocalCollision(event)
    if (event.phase == "began")
       then print ("began: " .. event.bolinha.myName .. " and " .. event.cano.myName)
       end
    
end




Runtime:addEventListener("tap", impulsoLinear)

