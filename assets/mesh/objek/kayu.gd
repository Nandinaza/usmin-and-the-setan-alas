extends Spatial

func delete_it():
	self.queue_free()
func get_name():
	return self.name
