--------------------------------------------------------------
-- juego.lua
--------------------------------------------------------------

local storyboard = require "storyboard"
local scene = storyboard.newScene()

--------------------------------------------------------------
-- modulos
--------------------------------------------------------------

local physics = require "physics"

--------------------------------------------------------------
-- privado
--------------------------------------------------------------
local _W = display.contentWidth
local _H = display.contentHeight
local centerX = display.contentCenterX
local centerY = display.contentCenterY

local circle = nil
local floor = nil

local collision = function ( event )
	local target = event.target

	target:applyForce( 0, -1000, target.x, target.y )
	print( "impulsando a "..target.name )
end

--------------------------------------------------------------
-- publico
--------------------------------------------------------------

function startGame( grupo )
	circle = display.newCircle( grupo, centerX, centerY, 30 )
	floor = display.newRect( grupo, _W*0.5, 450, _W, 50 )

	circle.name = "Circulo"

	physics.addBody( floor, "static", { friction=0.5 } )
	physics.addBody( circle, "dinamyc", { density=1.0, friction=0.1, bounce=0.1 } )

	circle:addEventListener( "collision", collision )
end

--------------------------------------------------------------
-- funciones de esena
--------------------------------------------------------------

function scene:createScene( event )
	local group = self.view

	physics.start()
	physics.setGravity( 0, 9.8 )

	startGame( group )
end

function scene:willEnterScene( event )
	local group = self.view
end

function scene:enterScene( event )
	local group = self.view
end

function scene:exitScene( event )
	local group = self.view
end

function scene:didExitScene( event )
	local group = self.view
end

function scene:destroyScene( event )
	local group = self.view
end

--------------------------------------------------------------

scene:addEventListener( "createScene", scene )

scene:addEventListener( "willEnterScene", scene )

scene:addEventListener( "enterScene", scene )

scene:addEventListener( "exitScene", scene )

scene:addEventListener( "didExitScene", scene )

scene:addEventListener( "destroyScene", scene )

scene:addEventListener( "overlayBegan", scene )

scene:addEventListener( "overlayEnded", scene )

--------------------------------------------------------------
--------------------------------------------------------------

return scene