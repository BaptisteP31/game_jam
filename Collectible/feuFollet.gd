extends Area2D


var speed:int = 10

func _on_body_entered(body):
	if body.name == "Player":
		
		Global.isPicking = true
		
		queue_free()


func _process(delta):
	position.x -= speed
	if position.x <= 0:
		queue_free()
		Global.currentFeu -= 1
