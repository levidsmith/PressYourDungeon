/// @description Insert description here
// You can write your code in this editor


//draw_sprite(sprBoardSquare, 0, x, y)

draw_sprite_ext(sprBoardSquare, 0, x, y, 1, 1, 0, iColor[Board.iSet], 1)


strPrize = ""
if (iPrizeSpins[Board.iSet] > 0) {
	strPrize += "Spins " + string(iPrizeSpins[Board.iSet]) + "\n"
}

if (iPrizePoints[Board.iSet] > 0) {
	strPrize += "Points " + string(iPrizePoints[Board.iSet]) + "\n"
}


draw_text(x + 8, y + 8, strPrize)


//draw_text(x, y + 100, "index: " + string(square_index))
if (Board.iCurrentSquare == square_index) {
draw_sprite_ext(sprBoardSquareHighlight, 0, x, y, 1, 1, 0, c_white, 1)
	
}


