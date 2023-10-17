extends Sprite2D



func _process(delta):
	if Input.is_action_just_released("A") :
		get_tree().change_scene_to_file("res://main.tscn")
	if Input.is_action_just_released("B"):
		get_tree().quit()
	if Input.is_action_just_released("X"):
		get_node("../Timer").start()
	
func _on_timer_timeout():
	get_tree().change_scene_to_file("res://sceneCredit.tscn")

