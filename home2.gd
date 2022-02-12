extends Node2D

func _process(delta):
	if MusicController.play_music() == false:
		MusicController.play_music()

func _on_Button_pressed():
	get_tree().change_scene("res://Arena.tscn")
