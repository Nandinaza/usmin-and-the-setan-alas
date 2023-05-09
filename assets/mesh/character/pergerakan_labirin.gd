extends KinematicBody

var pergerakan = Vector3.ZERO
var gravitasi = 0.2
var kec_jatuh = 0
onready var joystick = get_parent().get_node("control/Sprite/TouchScreenButton")
onready var raycast = $SpringArm/RayCast

func _physics_process(_delta):

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
	var kecepatan = pergerakan * 10
	
	move_and_slide(kecepatan,Vector3.UP)
	joystick.rotate = Vector2.ZERO
#	mesh1.get_name()
	
func _input(event):
	if(event is InputEventScreenDrag):
		$SpringArm.rotation.x = clamp($SpringArm.rotation.x,deg2rad(-45),deg2rad(45))
