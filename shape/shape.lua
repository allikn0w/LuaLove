--! file: shape.lua
Shape = Object:extend()

function Shape:new(x,y)
  self.x = x
  self.y = y
  self.speed = 100
end

function Shape:hello()
  print('esto es solo una prueba sencilla')
  print('a este mensaje se puede acceder con Object:hello()')
end
function Shape:update(dt)
  self.x = self.x + self.speed * dt
end



