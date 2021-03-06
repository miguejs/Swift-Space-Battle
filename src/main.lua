--[[
--------------------------------------------------------------------------------
This is a free game developed by Luan Orlandi in project of scientific research
at ICMC-USP, guided by Leandro Fiorini Aurichi and supported by CNPq

For more information, access https://github.com/luanorlandi/Swift-Space-Battle 
--------------------------------------------------------------------------------
]]

MOAILogMgr.setLogLevel(MOAILogMgr.LOG_NONE)

require "file/saveLocation"
require "file/strings"
require "math/area"
require "math/util"
require "window/window"

window = Window:new()

require "interface/priority"
require "loop/ingame"
require "loop/inmenu"
require "loop/inintro"

require "input/input"

input = Input:new()

input:tryEnableKeyboard()
input:tryEnableMouse()
input:tryEnableTouch()

local timeThread = MOAICoroutine.new()
timeThread:run(getTime)

local introThread = MOAICoroutine.new()
introThread:run(introLoop)

--local menuThread = MOAICoroutine.new()
--menuThread:run(menuLoop)

--local mainThread = MOAICoroutine.new()
--mainThread:run(gameLoop)