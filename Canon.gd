extends Node2D

export (PackedScene) var Bullet = preload("res://FastRB.tscn")
export (float) var fireSpeed = 100

var raycastEnabled = false
var shapeCastEnabled = false


func _handleInput() -> void:
	if Input.is_action_just_pressed("ui_accept"):
		# space is pressed!
		fire()
		
func fire() -> void:
	var a = Bullet.instance()
	a.setup(fireSpeed, raycastEnabled, shapeCastEnabled)
	get_tree().get_root().add_child(a)
	a.position = $FireAt.global_position

func _process(delta: float) -> void:
	_handleInput()


func _on_GUI_speedChanged(newFireSpeed: float) -> void:
	pass # Replace with function body.
	fireSpeed = newFireSpeed
