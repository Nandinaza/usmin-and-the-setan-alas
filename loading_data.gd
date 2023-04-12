extends CanvasLayer

var c_scene

func _ready():
	$Sprite.visible = false

func load_scene(path):
	get_tree().change_scene("res://loading_data.tscn")
	c_scene = path
	print(c_scene)
	$Sprite.visible = true
	$Timer.start()


func _on_Timer_timeout():
#	load_scene(c_scene)
	get_tree().change_scene(c_scene)
	print("entek")
	$Sprite.visible = false
