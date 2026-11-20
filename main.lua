BALL_SIZE = 20
PADLE_HEIGHT = 100
ball_x = 100
ball_y = 100
ball_dx = 1000
ball_dy = 1000

function love.draw()
	love.graphics.clear(0x18 / 255, 0x18 / 255, 0x18 / 255, 1)
	love.graphics.rectangle("fill", ball_x, ball_y, BALL_SIZE, BALL_SIZE)
	love.graphics.rectangle("fill", 20, 20, PADLE_HEIGHT, PADLE_HEIGHT)
end

function love.update(dt)
	w = love.graphics.getWidth()
	h = love.graphics.getHeight()

	local ball_nx = ball_x + ball_dx * dt
	if ball_nx < 0 or ball_nx + BALL_SIZE >= w then
		ball_dx = -ball_nx
	else
		ball_x = ball_nx
	end

	local ball_ny = ball_y + ball_dy * dt
	if ball_ny < 0 or ball_ny + BALL_SIZE >= h then
		ball_dy = -ball_ny
	else
		ball_y = ball_ny
	end
end
