int r = int(random(0, 255));
int g = int(random(0, 255));
int b = int(random(0, 255));

void drawBridge(){

	noFill();
	//______________ Grosor de linea de puente
	strokeWeight(9);

	if (r > 255) {
		r = 0;
	}

	if (g > 255) {
		g = 0;
	}
	if (b > 255) {
		b = 0;
	}



	stroke(r++, g++, b++);

	float alturaPuente = 55;
	float anchuraPuente = 35;

	//______________________________________________________________________________ Configuración de puntos
	Punto3D inicioPuente = new Punto3D(-50, perimeterSize/2+50, perimeterSize);
	Punto3D finPuente = new Punto3D(perimeterSize+50, perimeterSize/2+50, perimeterSize);
	Punto3D PControl = new Punto3D(0, 120, perimeterSize);
	Punto3D PControl2 = new Punto3D(perimeterSize, 120, perimeterSize);

	pushMatrix();

	for (int i = 0; i < 2; ++i) {
		
		pushMatrix();
		//_______________________________________________________ Curva frontal inferior
			bezier(inicioPuente.x, inicioPuente.y, inicioPuente.z, 
				PControl.x, PControl.y, PControl.z,
				 PControl2.x, PControl2.y, PControl2.z,
				  finPuente.x, finPuente.y, finPuente.z);	
	
				translate(0, -alturaPuente/2, 0);
		//________________________________________________________ Curva frontal media
				bezier(inicioPuente.x, inicioPuente.y, inicioPuente.z, 
					PControl.x, PControl.y, PControl.z,
					 PControl2.x, PControl2.y, PControl2.z,
					  finPuente.x, finPuente.y, finPuente.z);
				translate(0, -alturaPuente/2, 0);
		//_______________________________________________________ Curva frontal superior
				bezier(inicioPuente.x, inicioPuente.y, inicioPuente.z, 
					PControl.x, PControl.y, PControl.z,
					 PControl2.x, PControl2.y, PControl2.z,
					  finPuente.x, finPuente.y, finPuente.z);
		popMatrix();
		translate(0, 0, -anchuraPuente);
	}

	popMatrix();


	//___________________________________________ Pilares

	float distanceBtwPostes = 80;

	pushMatrix();

		for (int i = 0; i < 2; ++i) {
			
			line(inicioPuente.x, inicioPuente.y, inicioPuente.z, inicioPuente.x, inicioPuente.y - alturaPuente, inicioPuente.z);
			line(inicioPuente.x+distanceBtwPostes, inicioPuente.y - 46, inicioPuente.z, inicioPuente.x+distanceBtwPostes, inicioPuente.y - alturaPuente - 46, inicioPuente.z);
			line(inicioPuente.x+distanceBtwPostes*2, inicioPuente.y - 58, inicioPuente.z, inicioPuente.x+distanceBtwPostes*2, inicioPuente.y - alturaPuente - 58, inicioPuente.z);

			line(finPuente.x-distanceBtwPostes*2, finPuente.y - 58, finPuente.z, finPuente.x-distanceBtwPostes*2, finPuente.y-alturaPuente - 58, finPuente.z);
			line(finPuente.x-distanceBtwPostes, finPuente.y - 46, finPuente.z, finPuente.x-distanceBtwPostes, finPuente.y-alturaPuente - 46, finPuente.z);
			line(finPuente.x, finPuente.y, finPuente.z, finPuente.x, finPuente.y-alturaPuente, finPuente.z);

			translate(0, 0, -anchuraPuente);		
		}

	popMatrix();


	pushMatrix();
		for (int i = 0; i < anchuraPuente; ++i) {
			bezier(inicioPuente.x, inicioPuente.y, inicioPuente.z, 
				PControl.x, PControl.y, PControl.z,
				 PControl2.x, PControl2.y, PControl2.z,
				  finPuente.x, finPuente.y, finPuente.z);
			translate(0, 0, -1);
		}
	popMatrix();


	strokeWeight(1);
}