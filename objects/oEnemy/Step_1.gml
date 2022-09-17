if (hp <= 0) {
	with(instance_create_layer(x,y,layer,oEnemyDead)) {
		hsp = other.knockback * other.hitFrom;
		vsp = other.knockback * -1;
		image_xscale = other.hitFrom;
	}
	instance_destroy();
}
