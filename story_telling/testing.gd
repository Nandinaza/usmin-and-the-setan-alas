extends Node2D

onready var label = $Label
var a = 0

func _process(delta):
	a += 1
	label.text = str(a)
