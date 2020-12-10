float profundidadEstanque = 80;
float xoff = 0.0; 
float increment = 0.02;
float[] puntosRuido;
PImage img;

void inicializarEstanque(){

	img = createImage(int(perimeterSize), int(perimeterSize*2), ARGB);
	puntosRuido = new float[int(perimeterSize*perimeterSize*2)];
	img.loadPixels();

	for (int x = 0; x < perimeterSize; x++) {
	    xoff += increment;   // Increment xoff 
	    float yoff = 0.0;   // For every xoff, start yoff at 0
	    for (int y = 0; y < perimeterSize*2; y++) {
	      yoff += increment; // Increment yoff
	      float bright = noise(xoff, yoff) * 255;
		
	      puntosRuido[int(x+y*perimeterSize)] = bright;
	  	  img.pixels[int(x+y*perimeterSize)] = color(75, 132, 54, bright); 
	    }
	  }

	img.updatePixels();

}


void drawPond(){
	
	fill(0, 166, 181);
	

	pushMatrix();
		rotateY(radians(-90));
		rect(0, perimeterSize - profundidadEstanque, perimeterSize*2, profundidadEstanque);

		translate(0, 0, -perimeterSize);
		
		rect(0, perimeterSize - profundidadEstanque, perimeterSize*2, profundidadEstanque);
	popMatrix();
	
	pushMatrix();

		rect(0, perimeterSize - profundidadEstanque, perimeterSize, profundidadEstanque);
		translate(0, perimeterSize, 0);
		rotateX(radians(90));
		rect(0, 0, perimeterSize, perimeterSize*2);
		translate(0,0, profundidadEstanque);
		//rect(0, 0, perimeterSize, perimeterSize*2);
		image(img,0,0);
		//for (int x = 0; x < perimeterSize; x++){
		//	for (int y = 0; y < perimeterSize*2; y++){
		//		stroke(puntosRuido[int(x+y*perimeterSize)]);
      	//		point(x,y);
      	//	}
		//}



	popMatrix();





	

}