extends TextureButton

func _on_button_down() -> void:
	get_tree().call_group("blocks","delete()")
