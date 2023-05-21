extends Area

var label

func _ready():
	$AnimationPlayer.play("idle")
#	immune
#	$"../../Spatial".translate(Vector3(0,4,0))

	label = $"../../control/Label"
	label.text = "0/5"

func _on_Area_body_entered(body):
	if(body.name == "Spatial"):
		if(label.text == "0/5"):
			label.text = "1/5"
		elif(label.text == "1/5"):
			label.text = "2/5"
		elif(label.text == "2/5"):
			label.text = "3/5"
		elif(label.text == "3/5"):
			label.text = "4/5"
		elif(label.text == "4/5"):
			label.text = "5/5"
		else:
			get_tree().quit()
		queue_free()
