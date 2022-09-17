// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Free(){
	//Set Variables
	vsp = vsp + grv;
	image_speed = 1;
	
	//Animation
	if (place_meeting(x,y+1,oBlock)){
		image_speed = 1;
		if(hsp == 0){
			sprite_index = sEnemyIdle;
		}
		else{
			sprite_index = sEnemyRun;
		}
	}
	else {
		sprite_index = sEnemyInAir;
		image_speed = 0;
		if (sign(vsp) > 0) image_index = 1; else image_index = 0;
	}
	
	//Handle Collisions
	if (place_meeting(x+hsp,y,oBlock))
	{
		while(!place_meeting(x+sign(hsp),y,oBlock))
		{
			x = x + sign(hsp);	
		}
		hsp = -hsp;
	}
	if (place_meeting(x,y+vsp,oBlock))
	{
		while(!place_meeting(x,y+sign(vsp),oBlock))
		{
			y = y + sign(vsp);	
		}
		vsp = 0;
	}

	//Move
	x = x + hsp;
	y = y + vsp;
}