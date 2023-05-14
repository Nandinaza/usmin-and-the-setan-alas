extends Area

func _on_Area_body_entered(body):
	if(body.name == "Spatial"):
		print("detected")
		queue_free()
func _ready():
	$AnimationPlayer.play("idle")
