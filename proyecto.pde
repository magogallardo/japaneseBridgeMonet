/*
	Proyecto final de Geometría Computacional


*/

//Configuración

planta planta1 = new planta(90, 100, 4);
planta planta2 = new planta(150, 150, 3);
planta planta3 = new planta(50, 80, 4);

planta planta4 = new planta(120, 90, 4);

planta planta5 = new planta(70, 80, 4);
planta planta6 = new planta(50, 80, 3);
planta planta7 = new planta(50, 80, 4);

//_____________________________ Mostrar perimetro
boolean showPerimeter = true;
boolean showPond = true;
boolean showBridge = true;

//________________ Definición de ventana
void setup() {
	size(680, 680, P3D);
}



//_____________ Función principal de dibujado
void draw(){


	//_______________________ Color de fondo
	background(#B2C899);
	//_____________________ Luces
	//lights();
	
	//________________ Actualiza la cámara
	moveCamera();





	//________________ Dibuja el perímetro	}
	hint(DISABLE_DEPTH_TEST);
	//hint(ENABLE_DEPTH_SORT);
	if(showPerimeter)
		drawPerimeter();
	//________________ Dibuja el estanque
	if(showPond)
		drawPond();
	//________________ Dibuja el puente
	if(showBridge)
		drawBridge();

	pushMatrix();
	translate(0, perimeterSize-70, perimeterSize+30);
	planta1.print();
	translate(-30, 0, -15);
	planta2.print();
	translate(15, 0, 10);
	planta3.print();
	translate(0, 0, 15);
	planta3.print();

	popMatrix();




	pushMatrix();
	translate(perimeterSize-30, perimeterSize-70, perimeterSize-50);
	planta4.print();
	translate(0, 0, -15);
	planta5.print();
	rotateY(radians(90));
	translate(0, 0, -15);
	planta5.print();
	popMatrix();

	

	//System.out.println(cameraXPos + ", " + cameraYPos + ", " + cameraZPos + "\nLooking at: " + lookAtX + ", " + lookAtY + ", " + lookAtZ);

}


