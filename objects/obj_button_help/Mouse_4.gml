event_inherited();

if (instance_exists(obj_controls)) {
	instance_destroy(obj_controls)
}

else {
	                    // No meio da sala | -100px da borda inferior
						// Cria na layer "Instances", onde o objeto será desenhado automaticamente
	instance_create_layer(room_width / 2, room_height - 100, "Instances", obj_controls )
}