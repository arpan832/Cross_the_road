extends Node2D

var car_scene: PackedScene = preload("res://Scenes/car.tscn")


# Called when the node enters the scene tree for the first time.




func _on_area_2d_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	print("you enteredsss")


func _on_car_timer_timeout() -> void:
	var car = car_scene.instantiate() as Area2D
	$Objectsss.add_child(car) 
	var pos_marker = $CarPosition.get_children().pick_random() as Marker2D
	car.position = pos_marker.position
	
	
	
