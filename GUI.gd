extends Control

export (float) var maxFireSpeed = 5000

onready var speedSlider = $MarginContainer/VBoxContainer/SpeedContainer/HSlider
onready var speedSliderValue = $MarginContainer/VBoxContainer/SpeedContainer/SliderValue

signal speedChanged(newSpeed)
signal raycastEnabled(state)
signal shapeCastEnabled(state)

func _ready() -> void:
	pass
	
func _initHslider(initValue: float) -> void:
	speedSlider.value = initValue
	speedSlider.max_value = maxFireSpeed


func _on_HSlider_value_changed(value: float) -> void:
	print ("Set speed to: ", value)
	speedSliderValue.text = str(value)
	emit_signal("speedChanged", value)


func _on_RaycastEnabled_toggled(button_pressed: bool) -> void:
	pass # Replace with function body.
	emit_signal("raycastEnabled", button_pressed)
	$MarginContainer/VBoxContainer/RaycastEnabled.release_focus()


func _on_ShapeCastEnabled_toggled(button_pressed: bool) -> void:
	pass # Replace with function body.
	emit_signal("shapeCastEnabled", button_pressed)
	$MarginContainer/VBoxContainer/HBoxContainer/ShapeCastEnabled.release_focus()




func _on_LinkButton_pressed() -> void:
	pass # Replace with function body.
	OS.shell_open("https://github.com/godotengine/godot/issues/9071")
