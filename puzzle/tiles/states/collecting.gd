extends State

onready var _tile : TileBase = owner

func enter():
	BoardSignals.emit_signal("TileCollected", _tile)
	_tile.queue_free()
