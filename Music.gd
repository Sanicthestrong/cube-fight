extends Node

var music = load("res://ello.mp3")
var deathsfx = preload("res://zapsplat_warfare_spear_land_ground_002_43626.mp3")

func _ready():
	$MusicTimer.start()

func play_music():
	$Music.stream = music
	$Music.play()

func _process(delta):
	if Global.die:
		$sfx.play()

func _on_MusicTimer_timeout():
	play_music()
