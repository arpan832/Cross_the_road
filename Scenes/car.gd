extends Area2D


# Called when the node enters the scene tree for the first time.
var direction = Vector2.RIGHT
var speed = 2

func _process(delta: float) -> void:
	position += direction * speed
	


func _on_body_shape_exited(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	pass # Replace with function body.


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
