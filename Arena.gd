extends Node2D

var enemy_1 = preload("res://Enemy.tscn")
var enemy_2 = preload("res://Enemy_2.tscn")

func _enter_tree():
	Global.node_creation_parent = self


	
func _exit_tree():
	Global.node_creation_parent = null


func _on_Enemy_spawn_Timer_timeout():
	var enemy_position = Vector2(rand_range(-160, 670), rand_range(-90,390))
	var enemy_2_position = Vector2(rand_range(-160, 670), rand_range(-90,390))
	
	while enemy_position.x < 640 and enemy_position.x > -80 and enemy_position.y < 360 and enemy_position.y > -45:
		enemy_position = Vector2(rand_range(-160, 670), rand_range(-90, 390))
	Global.instance_node(enemy_1, enemy_position , self)

	
func _process(delta):
	if Global.Ded:
		if Global.score > Global.high_score:
			Global.high_score = Global.score
		get_tree().change_scene("res://Death screen.tscn")


