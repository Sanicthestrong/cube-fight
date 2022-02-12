extends Node

var node_creation_parent = null
var player = null
var score = 0
var Player_hp = 5
var Ded = false
var high_score = 0
var velocity = Vector2()
var In_Zone = false
var zone_timer = false
var time = 0
var upgrade = false
var die = false

func instance_node(node, location, parent):
	var node_instance = node.instance()
	parent.add_child(node_instance)
	node_instance.global_position = location
	return node_instance
