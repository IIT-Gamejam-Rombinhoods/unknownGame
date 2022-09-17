// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyHit(argument0, argument1){
	var _damage = argument0;
	var _direction = argument1;
	
	hp -= _damage;
	hitFrom = _direction;
	flash = flash_length;
	stun = stun_length;
	hsp = knockback * _direction;
	vsp = knockback * -1;
	image_xscale = 2 * _direction;
	image_speed = 0;
}