extends Node2D

var music_background
var sound_click
var camera

func _ready():
	music_background = $KinematicBody2D/Camera2D/bgm
	sound_click = $KinematicBody2D/Camera2D/sound_click
	music_background.play()


func _on_play_pressed():
	sound_click.play()
	$loading.z_index = 1
	$Timer.start()

func _on_about_pressed():
	sound_click.play()
	$AnimationPlayer.play("about_go")


func _on_settings_pressed():
	sound_click.play()
	$AnimationPlayer.play("settings_go")



func _on_TouchScreenButton_pressed():
	pass
	


func _on_Timer_timeout():
#	get_tree().change_scene("res://scene_action/hutan.tscn")
	get_tree().change_scene("res://story_telling/preparation_to_go.tscn")


#Tombol kembali

func _on_back1_pressed():
	sound_click.play()
	$AnimationPlayer.play("about_back")


func _on_back2_pressed():
	sound_click.play()
	$AnimationPlayer.play("settings_back")
