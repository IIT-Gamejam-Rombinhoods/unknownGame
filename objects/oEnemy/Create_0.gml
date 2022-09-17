//hyperparameters
hsp = 4;
vsp = 8;
grv = 0.3;
walksp = 4;
hp_max = 3;
flash_length = 3;
stun_length = 30;
knockback = 5;

image_speed = 1;

player_hit = false;
stun = 0;
flash = 0;
hp = hp_max;
hitFrom = 0;
hitByAttack = ds_list_create();
state = ENEMYSTATE.FREE;

enum ENEMYSTATE{
	FREE,
	ATTACK,
}
