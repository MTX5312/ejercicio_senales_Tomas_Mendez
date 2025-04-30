extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias: "
# Variable para contar cantidad de instancias
var instancesCount = 0

func _ready():
	actualizar_texto()
	pass

func count_new_instance():
	instancesCount += 1
	actualizar_texto()

func actualizar_texto():
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)

func _on_button_down() -> void:
	count_new_instance()

func delete():
	instancesCount == 0
	actualizar_texto()
