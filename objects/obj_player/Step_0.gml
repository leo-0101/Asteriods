// MOVIMENTO DA NAVE

// adiciona velocidade ao sprite
if keyboard_check(vk_up) {
	motion_add(image_angle, 0.1);
}

// vira o sprite para a esquerda
if keyboard_check(vk_left) {
	image_angle += 4;
}

// vira o sprite para a direita
if keyboard_check(vk_right) {
	image_angle -= 4;
}

// pode ir para cima e baixo, direita e esquerda e o 0 indica uma margem onde o objeto ainda pode desaparecer
move_wrap(true, true, 0);

/* -------------------------------------- */

// TIROS

// o tiro é criado na posição da nave
if mouse_check_button_pressed(mb_left) {
	instance_create_layer(x, y, "Instances", obj_bullet);
}

