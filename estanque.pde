/*

		Clase para la gestión del estanque así como los nenúfares


*/



float profundidadEstanque = 80;
float xoff = 0.0; 
float increment = 0.02;
float[] puntosRuido;

//_________________________________ Control de nenufares existentes
int numeroMaximoNenufares = 500;
int numeroNenufares = 0;

//_____________________ Opacidad minima que debe tener el verde
//_____________________ para que se genere un nenufar
int brilloMinimo = 145;

//_______________________ Lista de posiciones de cada nenúfar
ArrayList<Punto2D> nenufaresPos = new ArrayList<Punto2D>();

//_________ imagen de ruido
PImage img;


//_____________________________ Función que inicia el estanque:

void inicializarEstanque(){

	//______________________ Limpia variables
	numeroNenufares = 0;
	nenufaresPos.clear();

	//__________________________ Crea la imagen de ruido

	img = createImage(int(perimeterSize), int(perimeterSize*2), ARGB);
	
	//_________________________Guarda los puntos de ruido en otra parte

	puntosRuido = new float[int(perimeterSize*perimeterSize*2)];
	
	//________________ Precarga los pixeles de la imagen
	img.loadPixels();

	//_______________ Generando los puntos de ruido

	for (int x = 0; x < perimeterSize; x++) {
	    xoff += increment;    
	    float yoff = 0.0;   
	    for (int y = 0; y < perimeterSize*2; y++) {
	      yoff += increment; 
	      float bright = noise(xoff, yoff) * 255;
	      
		

		//___________________ Los guarda

	      puntosRuido[int(x+y*perimeterSize)] = bright;
	  	  img.pixels[int(x+y*perimeterSize)] = color(75, 132, 54, bright); 
	    }
	  }

	img.updatePixels();

	//_________________________ Creando la posición de los nenúfares
	pushMatrix();
		
		translate(0, perimeterSize -profundidadEstanque, 0);
		rotateX(radians(90));

		while (numeroNenufares<numeroMaximoNenufares){
				
				//_____________________________________ Generando variables
				//_____________________________________ x, y aleatorias
				//_____________________________________
				int xaux = int(random(0,perimeterSize));
				int yaux = int(random(0,perimeterSize*2));


				//______________________________ Verifica si el punto seleccionado
				//______________________________ por el rango tiene la opacidad
				//______________________________ minima para agregarlo

				if(puntosRuido[int(xaux+yaux*perimeterSize)] > brilloMinimo){
					//Guardando los puntos generados en su propio arreglo

					nenufaresPos.add(new Punto2D(xaux, yaux));
					numeroNenufares++;
					System.out.println(numeroNenufares);
				}

			
		}

	popMatrix();




}

//________________ Función dinámica para imprimir el estanque
void drawPond(){
	
	fill(0, 166, 181);
	noStroke();

	//______________________ Imprimiendo paredes laterales

	pushMatrix();

		rotateY(radians(-90));
		rect(0, perimeterSize - profundidadEstanque, perimeterSize*2, profundidadEstanque);
		translate(0, 0, -perimeterSize);	
		rect(0, perimeterSize - profundidadEstanque, perimeterSize*2, profundidadEstanque);

	popMatrix();
	

	pushMatrix();

		// Imprimiendo pared frontal
		rect(0, perimeterSize - profundidadEstanque, perimeterSize, profundidadEstanque);
		translate(0, perimeterSize, 0);
		
		rotateX(radians(90));
		
		//______________ Imprimiendo fondo estanque

		rect(0, 0, perimeterSize, perimeterSize*2);
		translate(0,0, profundidadEstanque);
		
		///_____________ Imprimiendo capa de verde
		image(img,0,0);


		fill(91, 120, 149);

		for (int i = 0; i < nenufaresPos.size(); ++i) {
			Punto2D aux = nenufaresPos.get(i);

			//______________________ Imprimiendo nenufares
			circle(aux.x, aux.y, 7);   //____________________ Cambiar por clase nenufares
		}

	popMatrix();






	

}