/// @description Insert description here
// You can write your code in this editor


SPEED = 5 * 32

	if (keyboard_check(vk_left)) {
		x_vel = -SPEED
		x_facing = -1
		y_facing = 0
	} else if (keyboard_check(vk_right)) {
		x_vel = SPEED	
		x_facing = 1
		y_facing = 0
	} else {
		x_vel = 0	
	}

	if (keyboard_check(vk_up)) {
		y_vel = -SPEED	
		y_facing = -1
		x_facing = 0
	} else if (keyboard_check(vk_down)) {
		y_vel = SPEED	
		y_facing = 1
		x_facing = 0
	} else {
  		y_vel = 0	
	}


if (keyboard_check(vk_space)) {
	Sword.iAttackTime = Sword.iMaxAttackTime
	
	if (x_facing == 1) {
		Sword.x = x + 32
		Sword.y = y
	} else if (x_facing == -1) {
		Sword.x = x - 32
		Sword.y = y
	}

	if (y_facing == 1) {
		Sword.x = x
		Sword.y = y + 32
	} else if (y_facing == -1) {
		Sword.x = x
		Sword.y = y - 32
	}

}

if (Sword.iAttackTime > 0) {
	x_vel = 0
	y_vel = 0
}

x += x_vel / room_speed
y += y_vel / room_speed
