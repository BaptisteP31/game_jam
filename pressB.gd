extends AnimatedSprite2D



func _process(delta):
	if self.visible==true and Input.is_action_just_released("button_A"):
		get_tree().change_scene_to_file("res://main.tscn")
		get_tree().paused=false
