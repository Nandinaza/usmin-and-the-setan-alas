extends KinematicBody

var pergerakan = Vector3.ZERO
var gravitasi = 0.2
var kec_jatuh = 0
onready var joystick = get_parent().get_node("control/Sprite/TouchScreenButton")
onready var raycast = $SpringArm/RayCast
onready var mesh1 = get_parent().get_node("kayu1")
onready var mesh2 = get_parent().get_node("kayu2")
onready var mesh3 = get_parent().get_node("kayu3")

var search_kayu = 0

func _physics_process(delta):
	if(raycast.is_colliding() and Input.is_action_just_pressed("ui_accept")):
		var ray = raycast.get_collider()
		mesh1.delete_it()
		mesh2.delete_it()
		mesh3.delete_it()
		print(mesh1.get_name())
		search_kayu += 1
		print(search_kayu)
	
	rotate_y(joystick.rotate.x)
	$SpringArm.rotate_x(joystick.rotate.y)
#	rotation_degrees.z = 0
#	$SpringArm.rotation.x = clamp($SpringArm.rotation.x,deg2rad(45),deg2rad(-45))
	
	pergerakan.x = joystick.get_value().x
	pergerakan.z = joystick.get_value().y
	
	if(!is_on_floor()):
		kec_jatuh -= gravitasi
	elif(is_on_floor()):
		kec_jatuh = 0
	pergerakan.y += kec_jatuh
	
	pergerakan = (pergerakan.x * transform.basis.x) + (pergerakan.z * transform.basis.z)
	var kecepatan = pergerakan * 13
	
	move_and_slide(kecepatan,Vector3.UP)
	joystick.rotate = Vector2.ZERO
	
func _input(event):
	if(event is InputEventScreenDrag):
		$SpringArm.rotation.x = clamp($SpringArm.rotation.x,deg2rad(-45),deg2rad(45))
