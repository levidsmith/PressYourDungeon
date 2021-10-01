/// @description Insert description here
// You can write your code in this editor


iPrizeSpins[0] = 0
iPrizePoints[0] = 0
iColor[0] = c_gray

iPrizeSpins[1] = 0
iPrizePoints[1] = 0
iColor[1] = c_gray

iPrizeSpins[2] = 0
iPrizePoints[2] = 0
iColor[2] = c_gray




i = 0

while (i < 3) {

	iPrizeSpins[i] = irandom(1)
	iPrizePoints[i] =  (1 + irandom(4)) * 1000
	switch(irandom(5)) {
		case 0:
			iColor[i] = c_red
			break;
		case 1:
			iColor[i] = c_orange
			break;
		case 2:
			iColor[i] = c_green
			break;
		case 3:
			iColor[i] = c_yellow
			break;
		case 4:
			iColor[i] = c_blue
			break;
		
	}
	i++
}