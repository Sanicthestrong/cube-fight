extends Sprite

var speed = 100
var hp = 1

var blood = preload("res://blood.tscn")

var velocity = Vector2()

var stun = false

func _process(delta):
	if Global.player != null and stun == false:
		velocity = global_position.direction_to(Global.player.global_position)
	elif stun:
		velocity = lerp(velocity, Vector2(0,0), 0.3)
	global_position += velocity * delta * speed
	if Global.Player_hp <= 0:
		Global.Ded = true

	
	if hp <= 0:
		if Global.node_creation_parent != null:
			Global.instance_node(blood, global_position, Global.node_creation_parent)
		Global.score += 10
		queue_free()

func _on_hitbox_area_entered(area):
	if area.is_in_group("bullet"):
		velocity -= velocity * 2 * 4
		modulate = Color.white
		stun = false
		$StunTimer.start()
		hp -= 1
		area.get_parent().queue_free()
	if area.is_in_group("player"):
		Global.Player_hp -= 1
		


func _on_StunTimer_timeout():
	modulate = Color("e42525")
	stun = false
