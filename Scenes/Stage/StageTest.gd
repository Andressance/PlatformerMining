extends Node2D



func _on_timer_timeout():
	Singleton.emit_signal("timeOut")
