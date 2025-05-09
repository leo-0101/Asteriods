// se não deixar o 'other', a pedra será destruída e não a bala
// ele entende que o 'other' é a bala pois é com ela que está tendo a colisão
instance_destroy(other);

effect_create_above(ef_explosion, x, y, 1, c_white);

direction = random(360);

if sprite_index == spr_rock_big {
	sprite_index = spr_rock_small;
	
	// Cria uma cópia da instância na exata mesma posição da que foi destruída
	// 2x pedras
	instance_copy(true);
}

else if instance_number(obj_rock) < 12 {
	sprite_index = spr_rock_big;
	
	// spawna fora da tela e aparece como uma "nova" pedra
	x = -100;
}

else {
	instance_destroy();
}