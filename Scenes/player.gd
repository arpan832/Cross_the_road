extends CharacterBody2D


var direction: Vector2 = Vector2(1,0)
var speed: int = 400

func _physics_process(_delta: float) -> void: ## My Charecter a
	direction = Input.get_vector("Left","Right","UP","Down")
	velocity = direction * speed
	animation()
	move_and_slide()

	
func animation(): 
	if direction:	 
		$AnimatedSprite2D.flip_h = direction.x>0
		if direction.x != 0:
			$AnimatedSprite2D.animation = "Left"
		else:
			$AnimatedSprite2D.animation = "Up" if direction.y <0 else "Down"
	else:
		$AnimatedSprite2D.frame = 0 
		
   
