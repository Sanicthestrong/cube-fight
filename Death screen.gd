extends Node2D

func _enter_tree():
	Global.Ded = true

func _on_home_pressed():
	get_tree().change_scene("res://home.tscn")

