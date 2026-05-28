extends Timer

@onready var timer: Timer = $"."
@onready var label: Label = $CanvasLayer/Label
var time

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	time = int(time_left)
	label.text = "Time left: " + str(time)

func _on_timeout() -> void:
	pass
