extends KinematicBody2D

var speed = 150
var velocity = Vector2()
var attack_speed = 0.15
var can_fire = true


var bullet = preload("res://bullet.tscn")

func _ready():
	Global.player = self

func _exit_tree():
	Global.player = null

func _process(delta):
	Global.velocity.x = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
	Global.velocity.y = int(Input.is_action_pressed("move_down")) - int(Input.is_action_pressed("move_up"))
	Global.velocity = Global.velocity.normalized()
	
	global_position += speed * Global.velocity * delta
	
	if Input.is_action_pressed("shoot") and Global.node_creation_parent != null and can_fire:
		Global.instance_node(bullet, global_position, Global.node_creation_parent)
		can_fire = false
		yield(get_tree().create_timer(attack_speed),"timeout")
		can_fire = true




func _on_hitbox_area_entered(area):
	if area.is_in_group("Enemy"):
		if Global.Player_hp <= 0:
			visible = false 




