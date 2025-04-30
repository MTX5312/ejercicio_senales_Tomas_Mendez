extends TextureButton

var scene = preload ("res://scenes/Blocks/Violet/BlockViolet.tscn")

func generate_block():
	var instance = scene.instantiate()
	add_child(instance)

func _on_button_down() -> void:
	generate_block()
