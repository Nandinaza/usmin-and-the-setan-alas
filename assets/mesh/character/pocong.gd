extends KinematicBody

onready var path = []
onready var path_node = 0
var win = false
var speed = 5
var kejar = false

onready var navigation = get_parent()
onready var player = $"../../Spatial"
onready var result = $"../../result" 
onready var Audio = $"../../Audio"
onready var Scream = $"../../Scream"


func _physics_process(delta):
	var player_position = player.transform.origin
	look_at(player_position,Vector3(0,1,0))
	if(path_node < path.size()):
		var direction = (path[path_node] - global_transform.origin)
		if direction.length() < 1:
			path_node += 1
		else:
			move_and_slide(direction.normalized() * speed,Vector3.UP)
#	print(path)
func move_to(target):
	path = navigation.get_simple_path(global_transform.origin,target)
	path_node = 0

func _on_Timer_timeout():
	move_to(player.global_transform.origin)


func _on_Area_body_entered(body):
	if body.name == "Spatial" :
		result.visible = true
		Scream.play()


func _on_next_pressed():
	if(win == true):
		pass
	else:
		get_tree().reload_current_scene()


func _on_speed_change_timeout():
	if(kejar == true):
		speed = 12
		kejar = !kejar
	else:
		speed = 5
		kejar = !kejar
