extends Spatial

var sentuh = false
var can_hover = true

func delete_it():
	if(sentuh):
		self.visible = false
		self.translation = Vector3(0,0,0)

func get_name():
#	emit_signal("kena",name)
	return self.name


func _on_Area_body_entered(body):
	if body.name == "Spatial":
		sentuh = true
