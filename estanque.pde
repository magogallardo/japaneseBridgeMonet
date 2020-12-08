float profundidadEstanque = 100;

void drawPond(){
	
	fill(0, 166, 181);

	pushMatrix();
		translate(0, perimeterSize, 0);
		rotateX(radians(90));
		rect(0, 0, perimeterSize, perimeterSize*2);
		translate(0,0, profundidadEstanque);
		rect(0, 0, perimeterSize, perimeterSize*2);
	popMatrix();



}