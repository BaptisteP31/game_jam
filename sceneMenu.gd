extends Sprite2D

func _process(delta):
	if Input.is_action_pressed("A"):
		get_node("../pressA").play("Apressed")
	if Input.is_action_just_released("A") :
		get_tree().change_scene_to_file("res://main.tscn")
	if Input.is_action_pressed("B"):
		get_node("../pressB").play("Bpressed")
	if Input.is_action_just_released("B"):
		get_tree().quit()
	if Input.is_action_pressed("X"):
		get_node("../pressX").play("Xpressed")
	if Input.is_action_just_released("X"):
		get_tree().change_scene_to_file("res://sceneCredit.tscn")
