extends Node2D

onready var orang = $orang
onready var label = $Label
onready var background = $background
var one = 1

var progress = -1
var percakapan = [
	"oh tidak aku terlanjur ngomong kasar tadi",
	"aku harus berusaha keluar dari sini",
	" ",
	" "
]

func _on_TouchScreenButton_pressed():
	progress += one
	label.text = percakapan[progress]
	print(progress)
	if progress > 2:
		$background2.visible = true
		one = 0
		



func _on_ok_pressed():
	get_tree().change_scene("res://scene_action/labirin.tscn")
