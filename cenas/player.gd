extends CharacterBody2D

var dir;
# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if !is_on_floor():
		velocity.y +=5
	   
	if Input.is_action_pressed('ui_right'):
		dir = 1
	if Input.is_action_pressed('ui_left'):
		dir = -1
	if !Input.is_action_pressed("ui_right") and !Input.is_action_pressed("ui_left"):
		dir = 0;
	
	if Input.is_action_just_pressed('ui_accept') and is_on_floor():
		velocity.y -= 300;
	velocity.x = 100 * dir
	if velocity.x < 0:
		$Sprite2D.flip_h = true 
	if velocity.x > 0:
		$Sprite2D.flip_h = false 
		  
	move_and_slide()
	pass
