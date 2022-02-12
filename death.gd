extends MeshInstance2D

func _process(delta):
	if Global.Ded  = false:
		visible = false
	if Global.Ded:
		visible = true
		
