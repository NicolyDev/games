extends CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	velocity.x += 5
	print(velocity.x)
	move_and_slide()
	pass
