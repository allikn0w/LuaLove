local start_x, start_y
local draw_line = false

function love.load()
	love.window.setMode(600, 600)
	love.graphics.setBackgroundColor(255, 255, 255)
	background = love.graphics.newCanvas()
	
	love.graphics.setCanvas(background)
		for y = 0, 600 / 50 do
			for x = 0, 600 / 50 do
				love.graphics.setColor(0, 0, 0)
				love.graphics.setLineWidth(y == math.floor(600 / 50 / 2) and 2 or 1)
				love.graphics.line(0, y * 50, 600, y * 50)
				
				love.graphics.setLineWidth(x == math.floor(600 / 50 / 2) and 2 or 1)
				love.graphics.line(x * 50, 0, x * 50, 600)
			end
		end
	love.graphics.setCanvas()
end

function love.update(dt)
	if love.mouse.isDown(1) then
		if start_x and start_y then
			draw_line = true
		end
	else
		draw_line = false
	end
end

function love.draw()
	love.graphics.setColor(255, 255, 255)
	love.graphics.draw(background)
	
	if draw_line then
		local end_x, end_y = love.mouse.getPosition()
		
		love.graphics.setColor(0, 0, 0)
		love.graphics.circle("fill", end_x, end_y, 5)
		love.graphics.line(start_x, start_y, end_x, end_y)
	end
end

function love.mousepressed(x, y, button)
	if button == 1 then
		love.graphics.setCanvas(background)
			love.graphics.setColor(0, 0, 0)
			love.graphics.circle("fill", x, y, 5)
		love.graphics.setCanvas()
		
		start_x, start_y = x, y
	end
end

function love.mousereleased(x, y, button)
	if button == 1 then
		love.graphics.setCanvas(background)
			love.graphics.setColor(0, 0, 0)
			love.graphics.circle("fill", x, y, 5)
			love.graphics.line(start_x, start_y, x, y)
		love.graphics.setCanvas()
		
		start_x, start_y = nil, nil
	end
end
