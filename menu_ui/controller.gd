extends TouchScreenButton

# Gonkee's joystick script for Godot 3 - full tutorial https://youtu.be/uGyEP2LUFPg
# If you use this script, I would prefer if you gave credit to me and my channel

# Change these based on the size of your button and outer sprite
var radius = Vector2(32, 32)
var boundary = 64

var ongoing_drag = -1

var return_accel = 20

var threshold = 10

#onready var parent = get_parent().get_node("Spatial")3
var rotate = Vector2(0,0)

func _process(delta):
	if ongoing_drag == -1:
		var pos_difference = (Vector2(0, 0) - radius) - position
		position += pos_difference * return_accel * delta

func get_button_pos():
	return position + radius

func _input(event):
	if event is InputEventScreenDrag or (event is InputEventScreenTouch and event.is_pressed()):
		var event_dist_from_centre = (event.position - get_parent().global_position).length()

		if event_dist_from_centre <= boundary * global_scale.x or event.get_index() == ongoing_drag:
			set_global_position(event.position - radius * global_scale)

			if get_button_pos().length() > boundary:
				set_position( get_button_pos().normalized() * boundary - radius)

			ongoing_drag = event.get_index()
	if event is InputEventScreenDrag and event.position.x > 400: 
		var offset_x = event.relative.x
		var offset_y = event.relative.y
#		get_rotate(offset_x * 0.01 , offset_y * 0.001)
		rotate = Vector2(offset_x * -0.01 ,offset_y * -0.01)
#		$SpringArm.rotation.x = clamp($SpringArm.rotation.x,deg2rad(-45),deg2rad(45))
		
	if event is InputEventScreenTouch and !event.is_pressed() and event.get_index() == ongoing_drag:
		ongoing_drag = -1

func get_value():
	if get_button_pos().length() > threshold:
		return get_button_pos().normalized()
	return Vector2(0, 0)
	
func get_rotate(a,b):
	return Vector2(a,b)
	
func set_rotate():
#	return0get_rotate()
	pass
