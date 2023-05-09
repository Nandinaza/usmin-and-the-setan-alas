extends Node2D

var music_background
var sound_click
var camera

func _ready():
	music_background = $KinematicBody2D/Camera2D/bgm
	sound_click = $KinematicBody2D/Camera2D/sound_click
#	sound_click.set_loop(false)
	music_background.play()


func _on_play_pressed():
	sound_click.play()
#	get_tree().change_scene()
#	LoadingData.load_scene("res://scene_action/hutan.tscn")
#	get_tree().change_scene("res://scene_action/hutan.tscn")
	$loading.z_index = 1
	$Timer.start()

func _on_about_pressed():
	sound_click.play()
	$KinematicBody2D.move_and_slide(Vector2(12800 * 7,0))
#	$AnimationPlayer.play("clice


func _on_settings_pressed():
	sound_click.play()
	get_tree().change_scene("res://scene_action/labirin.tscn")



func _on_TouchScreenButton_pressed():
	pass
	


func _on_Timer_timeout():
#	get_tree().change_scene("res://scene_action/hutan.tscn")
	get_tree().change_scene("res://story_telling/preparation_to_go.tscn")
