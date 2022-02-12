extends Node2D

var music = preload("res://musicController.tscn")


func _process(delta):
	Global.Ded = 0
	Global.Player_hp = 5
	Global.score = 0
	Global.time = 0


func _on_Button_pressed():
	get_tree().change_scene("res://Arena.tscn")
	
