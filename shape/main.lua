--! file: main.lua

function love.load()
  Object = require "classic"

  require "shape"
  require "rectangle"

  require "circle"

  r1 = Rectangle(100,100,200,50)
  -- r1.super.hello(r1) = r1:hello() Obs: esa igualdad vale si y solo sí
  -- no definís hello en rectangle ni circle, si la definís la va a pisar.
  r1:hello()

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
