// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Atk(){
	vsp = vsp + grv;
	
	//Make Enemy Stop Moving
	if (place_meeting(x,y+1,oBlock)) {
		hsp = 0;
		vsp = 0;
	}
	
	//Change animation to attack animation
	if (sprite_index != sEnemyAtk) {
		sprite_index = sEnemyAtk;	
		image_index = 0;
		ds_list_clear(hitByAttack);
	}
	
	//Use attack hitbox & check for hits
	mask_index = sEnemyAtkHB;
	hitID = instance_position(x,y,oPlayer);
	with (hitID) {
		if (other.hitID != noone && !other.player_hit) {
			PlayerHit(1);
			other.player_hit = true;
		}
	}
	mask_index = sEnemyIdle;
	
	if (animationEnd()) {
		sprite_index = sEnemyIdle;
		state = ENEMYSTATE.FREE;
	}
}