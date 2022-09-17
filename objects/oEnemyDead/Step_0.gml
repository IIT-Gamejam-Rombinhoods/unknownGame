
//Set Variables
vsp = vsp + grv;

//Handle Collisions
if (place_meeting(x+hsp,y,oBlock))
{
	while(!place_meeting(x+sign(hsp),y,oBlock))
	{
		x = x + sign(hsp);	
	}
	hsp = 0;
}
if (place_meeting(x,y+vsp,oBlock))
{
	while(!place_meeting(x,y+sign(vsp),oBlock))
	{
		y = y + sign(vsp);	
	}
	vsp = 0;
}
	
if (image_index >= 3) {
	instance_destroy();	
}

//Move
x = x + hsp;
y = y + vsp;

