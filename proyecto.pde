/*
	Proyecto final de Geometría Computacional


*/


PShape s;
float rotateDog = 0;

//Configuración

//_____________________________ Mostrar perimetro
boolean showPerimeter = true;



//________________ Definición de ventana
void setup() {
	size(680, 680, P3D);
	s = loadShape("13463_Australian_Cattle_Dog_v3.obj");
}


//_____________ Función principal de dibujado
void draw(){

	//_______________________ Color de fondo
	background(#B2C899);
	
	//________________ Actualiza la cámara
	moveCamera();

	//________________ Dibuja el perímetro	
	if(showPerimeter)
	drawPerimeter();
	//____________________DEBUGG

	if(keyPressed){

		if (key == 'r' || key == 'R'){
			rotateDog+=30;
		}
	}


	pushMatrix();
	//hint(DISABLE_DEPTH_TEST);
	//hint(ENABLE_DEPTH_SORT);
		translate(width/2, height/2, width/2);
		rotateX(radians(rotateDog));
		shape(s);
	popMatrix();

	System.out.println(cameraXPos + ", " + cameraYPos + ", " + cameraZPos + "\nLooking at: " + lookAtX + ", " + lookAtY + ", " + lookAtZ);

}


