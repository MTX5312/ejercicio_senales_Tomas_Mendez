extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias: "
# Variable para contar cantidad de instancias
var instancesCount = 0
var redScene = preload ("res://scenes/Blocks/Red/BlockRed.tscn")
var violetScene = preload ("res://scenes/Blocks/Violet/BlockViolet.tscn")

func _ready():
	# Inicializa el texto de "CountLabel" usando el texto
	# Constante "INSTANCES_TEXT" más el valor de "instancesCount" como Texto
	actualizar_texto()
	pass

func count_new_instance():
	instancesCount += 1
	actualizar_texto()

func actualizar_texto():
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)

func _on_red_generator_button_down() -> void:
	generate_red_block()

func generate_red_block():
	var instance = redScene.instantiate()
	add_child(instance)

func _on_violet_generator_button_down() -> void:
	generate_violet_block()

func generate_violet_block():
	var instance = violetScene.instantiate()
	add_child(instance)
