/// @description Insert description here
// You can write your code in this editor

if (iAttackTime > 0) {
	iAttackTime -= 1 / room_speed	

inst = collision_rectangle(x, y, x + 32, y + 32, Enemy, false, true)

	if (inst != noone) {
		with (inst) {
			instance_destroy();	
		}
	}

}


if (StopButton.buttonReady && iAttackTime > 0) {

	inst = collision_rectangle(x, y, x + 32, y + 32, StopButton, false, true)

	if (inst != noone) {
		Board.doStop = true
		StopButton.buttonReady = false
		
	}
}

