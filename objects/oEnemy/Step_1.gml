if (hp <= 0) {
	with(instance_create_layer(x,y,layer,oEnemyDead)) {
		hsp = 0;
		vsp = 0;
		image_xscale = other.scale * other.hitFrom;
		image_yscale = other.scale;
	}
	instance_destroy();
}
