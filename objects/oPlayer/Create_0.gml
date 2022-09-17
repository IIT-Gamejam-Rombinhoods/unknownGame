//hyperparameters
grv = 0.6;
walksp = 8;
jump_height = 20;
flash_length = 3;
hp_max = 4;
hp_bar_width = 100;
hp_bar_height = 10;
hp_bar_x = (display_get_gui_width()/2) - (hp_bar_width/2);
hp_bar_y = ystart - 100;

in_air = false;
is_dying = false;
image_speed = 1;
hp = hp_max;
flash = 0;
hsp = 0;
vsp = 0;
state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();

enum PLAYERSTATE{
	FREE,
	ATTACK_SLASH,
	DYING,
}