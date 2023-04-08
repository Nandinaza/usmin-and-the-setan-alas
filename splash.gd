extends CanvasLayer

onready var animation = $AnimationPlayer
onready var sprite = $Sprite
var tahap = 0

func _ready():
	animation.play("jalan")


func _on_Timer_timeout():
	print("sampe")
	sprite.set_texture(null)
	
	get_tree().change_scene("res://scene_action/hutan.tscn")

