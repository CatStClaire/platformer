local Renderer = require "tools/renderer"
local GameLoop = require "tools/gameLoop"

local rect     = require "objects/rect"
local entity   = require "objects/entity"

renderer = Renderer:create()
gameLoop = GameLoop:create()

g_Width  = love.graphics.getWidth()
g_Height = love.graphics.getHeight()

g_GameTime = 0

local ent = entity:new(32,32,64,64, "player")

function ent:load()
	gameLoop:addLoop(self)
end

function ent:tick(dt)
	print(self.id)
end



function love.load()
	ent:load()
end

function love.update(dt)
	g_GameTime = g_GameTime + dt

	gameLoop:update(dt)
end

function love.draw()
	renderer:draw()
end