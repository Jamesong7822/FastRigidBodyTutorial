extends RigidBody2D

var speed: float

func setup(impulse: float, enableRaycast: bool, enableShapecast: bool) -> void:
	if enableRaycast:
		continuous_cd = RigidBody2D.CCD_MODE_CAST_RAY
	elif enableShapecast:
		continuous_cd = RigidBody2D.CCD_MODE_CAST_SHAPE
	else:
		continuous_cd = RigidBody2D.CCD_MODE_DISABLED
		
	# set speed
	speed = impulse
	print ("Firing bullet at speed: %s, raycast: %s, shapecast: %s" %[impulse, enableRaycast, enableShapecast])
	fire()
	
	
func _ready() -> void:
	yield(get_tree().create_timer(3), "timeout")
	queue_free()

func fire() -> void:
	apply_central_impulse(Vector2(1, 0)*speed)
