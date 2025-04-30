extends RigidBody2D

func delete():
	get_parent().remove_child(self)
	queue_free()
