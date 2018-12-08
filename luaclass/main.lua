function love.load()
  Object = require "classic"
  require "rectangle"

  r1 = Rectangle()
  r2 = Rectangle()

  print(r1.test,r2.test)
end
