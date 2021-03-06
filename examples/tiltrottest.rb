require_relative '../ruby3d.rb'

set height: 800
set width: 800

space = Space3d.new(r:20,t:20,x_dim:(get :width),y_dim:(get :height))
cube = Cube3d.new(size:200,space:space)
axis = Axis3d.new(space:space)

tick = 0
speed = 5
acc = true
update do
	clear
	cube.draw()
	cube.drawAxis()
	#axis.draw()
	cube.rotate(x_rot:0,y_rot:1,z_rot:speed)
	cube.move(x:0)
	space.r += 1
=begin
	if tick % 60 == 0 then
		if acc then
			speed += 1
		else
			speed -= 1
		end
		acc = true if speed < -5
		acc = false if speed > 5
	end
=end

	tick += 1

	STDOUT.write "x_rot: #{cube.x_rot}\ty_rot: #{cube.y_rot}\tz_rot: #{cube.z_rot}\r"
end

show