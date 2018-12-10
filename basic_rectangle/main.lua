function love.load()
	listOfRectangles = {}
end

function love.update(dt)
	for i,v in ipairs(listOfRectangles) do
		v.x = v.x + v.speed * dt
	end
end

function love.keypressed(key)
	if key == "space" then
		createRect()
	end
end

function createRect()
	rect = {}
	rect.x = 100
	rect.y = 100
	rect.width = 70
	rect.height = 90
	rect.speed = 100
	table.insert(listOfRectangles, rect)
end

function love.draw()
    love.graphics.circle("line", circle.x, circle.y, circle.radius)
    love.graphics.line(circle.x, circle.y, mouse_x, mouse_y)
    love.graphics.line(circle.x, circle.y, mouse_x, circle.y)
    love.graphics.line(mouse_x, mouse_y, mouse_x, circle.y)

    local distance = getDistance(circle.x, circle.y, mouse_x, mouse_y)
    love.graphics.circle("line", circle.x, circle.y, distance)
end

