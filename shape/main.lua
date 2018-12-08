--! file: main.lua

function love.load()
  Object = require "classic"

  require "shape"
  require "rectangle"

  require "circle"

  r1 = Rectangle(100,100,200,50)

  c2 = Circle(180,300,500)
end

function love.update(dt)
  r1:update(dt)
  c2:update(dt)
end

function love.draw()
  r1:draw()
  c2:draw()
end
