if (stun <= 0) {
	mask_index = sEnemyAtkHB;
	var prev_image = image_index;
	mask_index = 3;
	if (instance_position(x + (100 * sign(image_xscale)), y, oPlayer) != noone) {
		state = ENEMYSTATE.ATTACK;
	}
	mask_index = sEnemyIdle;
	image_index = prev_image;
	
	switch (state)
	{
		case ENEMYSTATE.FREE: EnemyState_Free(); break;
		case ENEMYSTATE.ATTACK: EnemyState_Atk(); break;
	}
}
else {
	vsp = vsp + grv;
	if (place_meeting(x,y+1,oBlock) && vsp > 0) {
		hsp = 0;
		vsp = 0;
	}
	stun -= 1;
	x += hsp;
	y += vsp;
}