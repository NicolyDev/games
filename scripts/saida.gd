extends Area2D

@onready var transition = $"../transition"
@export var fase2 : String = ""




func _on_body_entered(body):
	if body.name == "player" and !fase2 == "":
		transition.change_scene(fase2)
	else:
		print("sem cena viu")
	pass # Replace with function body.
