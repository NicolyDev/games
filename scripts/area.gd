extends Area2D


# Called when the node enters the scene tree for the first time.


func _on_body_entered(body):
	if (body.name == "player"):
		$Label.visible = true
	pass # Replace with function body.


func _on_body_exited(body):
	if (body.name == "player"):
		$Label.visible = false
	pass # Replace with function body.
