draw_self();

draw_set_font(fnt_menu);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y, button_text);

// recentraliza o texto após ele ser desenhado no objeto, assim evitando a ficar torto
draw_set_halign(fa_left);
draw_set_valign(fa_top);