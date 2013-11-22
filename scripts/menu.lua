--------------------------------------------------------------------
-- menu.lua
--------------------------------------------------------------------

local storyboard = require( "storyboard" )
local scene = storyboard.newScene()

--------------------------------------------------------------------
-- funciones de la esena
--------------------------------------------------------------------

function scene:createScene( event )
  local group = self.view
end


-- Called BEFORE scene has moved onscreen:
function scene:willEnterScene( event )
  local group = self.view
end


-- Called immediately after scene has moved onscreen:
function scene:enterScene( event )
  local group = self.view
end


-- Called when scene is about to move offscreen:
function scene:exitScene( event )
  local group = self.view
end


-- Called AFTER scene has finished moving offscreen:
function scene:didExitScene( event )
  local group = self.view
end


-- Called prior to the removal of scene's "view" (display group)
function scene:destroyScene( event )
  local group = self.view
end


-- Called if/when overlay scene is displayed via storyboard.showOverlay()
function scene:overlayBegan( event )
  local group = self.view
  local overlay_name = event.sceneName
end


-- Called if/when overlay scene is hidden/removed via storyboard.hideOverlay()
function scene:overlayEnded( event )
  local group = self.view
  local overlay_name = event.sceneName
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

---------------------------------------------------------------------------------

return scene