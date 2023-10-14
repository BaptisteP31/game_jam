extends Area2D




func _on_body_entered(body):
	if body.name == "Player":
		
		Global.isPicking = true
		
		queue_free()


func _process(delta):
	position = Vector2(position[0]- 3, position[1])
