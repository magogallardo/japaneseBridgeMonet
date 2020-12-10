/*

		Clase para la gestión del estanque así como los nenúfares


*/



float profundidadEstanque = 80;
float xoff = 0.0; 
float increment = 0.02;
float[] puntosRuido;

int numeroMaximoNenufares = 500;
int numeroNenufares = 0;

int brilloMinimo = 145;

ArrayList<Punto2D> nenufaresPos = new ArrayList<Punto2D>();

PImage img;

void inicializarEstanque(){

	numeroNenufares = 0;
	nenufaresPos.clear();

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

	pushMatrix();
		
		translate(0, perimeterSize -profundidadEstanque, 0);
		rotateX(radians(90));

		img.loadPixels();

		while (numeroNenufares<numeroMaximoNenufares){
		
				int xaux = int(random(0,perimeterSize));
				int yaux = int(random(0,perimeterSize*2));

				if(puntosRuido[int(xaux+yaux*perimeterSize)] > brilloMinimo){
					nenufaresPos.add(new Punto2D(xaux, yaux));
					numeroNenufares++;
					System.out.println(numeroNenufares);
				}

			
		}

	popMatrix();
	img.updatePixels();



}


void drawPond(){
	
	fill(0, 166, 181);
	noStroke();

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


		fill(91, 120, 149);

		for (int i = 0; i < nenufaresPos.size(); ++i) {
			Punto2D aux = nenufaresPos.get(i);
			circle(aux.x, aux.y, 7);
		}

	popMatrix();


	pushMatrix();



	popMatrix();







	

}