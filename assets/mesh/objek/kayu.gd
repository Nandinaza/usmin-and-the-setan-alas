extends Spatial

signal kena(tea)

func delete_it():
	self.queue_free()
func get_name():
#	emit_signal("kena",name)
	return self.name


func _on_Area_body_entered(body):
	pass # Replace with function body.
