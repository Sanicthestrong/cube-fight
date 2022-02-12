extends Label

func _process(delta):
	if Global.score > Global.high_score:
		Global.high_score = Global.score
	text = str(Global.high_score)
