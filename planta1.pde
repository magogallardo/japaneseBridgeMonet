Punto3D color1Planta1 = new Punto3D(61, 82, 55);
Punto3D color2Planta1 = new Punto3D(181, 195, 109);
Punto3D color3Planta1 = new Punto3D(110, 138, 111);
Punto3D color4Planta1 = new Punto3D(98, 118, 48);
Punto3D color5Planta1 = new Punto3D(31, 65, 13);

float planta1Altura = 70;

void drawPlant1(){

	stroke(color3Planta1.x, color3Planta1.y, color3Planta1.z);
	strokeWeight(5);


	Punto3D punto1 = new Punto3D(0, 0, 0);
	Punto3D PControl = new Punto3D(0, 0, 0);
	Punto3D PControl2 = new Punto3D(0, 0,0);
	Punto3D punto4 = new Punto3D(0, -planta1Altura, 0);



	bezier(punto1.x, punto1.y, punto1.z, 
				PControl.x, PControl.y, PControl.z,
				 PControl2.x, PControl2.y, PControl2.z,
				  punto4.x, punto4.y, punto4.z);	


	strokeWeight(1);

}