/// @description Insert description here
// You can write your code in this editor

if (fStopDelay <= 0 && Player.iSpins > 0) {

fSetChangeCountdown -= 1/room_speed

if (fSetChangeCountdown <= 0) {
	iSet++
	if (iSet > 2) {
		iSet = 0	
	}
	
	fSetChangeCountdown += BOARD_CHANGE_DELAY
}

fCurrentSquareChangeCountdown -= 1/room_speed
if (fCurrentSquareChangeCountdown <= 0) {

	if (array_length(iSquareSequence) == 0) {
		//iSquareSequence = [2, 4, 6, 8]
		i = 0
		while (i < instance_number(BoardSquare)) {
			array_insert(iSquareSequence, random(array_length(iSquareSequence)), i)
			i += 1	
		}
	}


	iCurrentSquare = array_pop(iSquareSequence)
	fCurrentSquareChangeCountdown = CURRENT_SQUARE_DELAY
	
}


if (doStop) {
	squareCurrent = noone
	
	
	
	i = 0
	while (i < instance_number(BoardSquare)) {
		tmpSquare = instance_find(BoardSquare, i)
		if (tmpSquare.square_index == iCurrentSquare) {
			squareCurrent = tmpSquare	
		}
		i += 1	
	}
	
	
	
	if (squareCurrent != noone) {
//		Player.iPoints = squareCurrent.iPrizePoints[iSet]
		Player.iPoints += squareCurrent.iPrizePoints[iSet]
		Player.iSpins += squareCurrent.iPrizeSpins[iSet]
	}
	
	Player.iSpins -= 1

	doStop = false
	fStopDelay = BOARD_STOP_DELAY
}

} else {
	fStopDelay -= 1/room_speed
	if (fStopDelay <= 0 and Player.iSpins > 0) {
		StopButton.buttonReady = true
		
	}
}