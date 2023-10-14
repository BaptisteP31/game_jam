extends Area2D




func _on_body_entered(body):
	if body.name == "Player":
		
		Global.isPicking = true
		
		queue_free()
