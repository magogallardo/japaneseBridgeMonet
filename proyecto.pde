/*
	Proyecto final de Geometría Computacional


*/


PShape s;
float rotateDog = 0;

//Configuración

//_____________________________ Mostrar perimetro
boolean showPerimeter = true;
boolean showPond = true;
boolean showBridge = true;

//________________ Definición de ventana
void setup() {
	size(680, 680, P3D);
	s = loadShape("model.obj");
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

	if(showPond)
		drawPond();
	


	

	System.out.println(cameraXPos + ", " + cameraYPos + ", " + cameraZPos + "\nLooking at: " + lookAtX + ", " + lookAtY + ", " + lookAtZ);

}


