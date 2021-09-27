extends Node2D

func _ready() -> void:
	$CanvasLayer/GUI._initHslider($Canon.fireSpeed)


func _on_GUI_speedChanged(newSpeed) -> void:
	pass # Replace with function body.
	$Canon.fireSpeed = newSpeed


func _on_GUI_shapeCastEnabled(state) -> void:
	pass # Replace with function body.
	$Canon.shapeCastEnabled = state


func _on_GUI_raycastEnabled(state) -> void:
	pass # Replace with function body.
	$Canon.raycastEnabled = state
