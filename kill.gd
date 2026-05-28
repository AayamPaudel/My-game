extends Area2D

var player
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#checkpoint_manager = get_parent().get_child("Checkpoint Manager")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		killPlayer()
func killPlayer():
	pass
	#reload_current_scene()
	#Global.add()
	#player.global_position = checkpoint_manager.last_location
