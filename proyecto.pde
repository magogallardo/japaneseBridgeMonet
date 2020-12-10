/*
			Universidad de Guanajuato
			  Geometría computacional
				  Proyecto final

			Reinterpretación de una obra
				Nenúefares - Monet

*/

//Configuración

planta planta1 = new planta(90, 100, 4);
planta planta2 = new planta(150, 150, 3);
planta planta3 = new planta(50, 80, 4);

planta planta4 = new planta(120, 90, 4);

planta planta5 = new planta(70, 80, 4);
planta planta6 = new planta(50, 80, 3);
planta planta7 = new planta(50, 80, 4);
planta planta8 = new planta(60,80,4);
planta planta9 = new planta(60,80,4);
planta planta10 = new planta(60,80,3);

planta planta11 = new planta(60,80,4);
planta planta12 = new planta(50,80,3);
planta planta13 = new planta(60,80,2);

planta planta14 = new planta(60,80,4);
planta planta15 = new planta(60,80,3);
planta planta16 = new planta(60,80,2);

planta planta17 = new planta(40,75,4);
planta planta18 = new planta(40,70,3);
planta planta19 = new planta(40,90,2);

planta planta20 = new planta(80,60,4);
planta planta21 = new planta(70,60,3);
planta planta22 = new planta(60,60,2);
planta planta23 = new planta(90,60,4);
planta planta24 = new planta(70,60,4);
planta planta25 = new planta(80,60,4);

planta planta26 = new planta(90,80,3);
planta planta27 = new planta(80,80,4);
planta planta28 = new planta(100,80,4);

planta planta29 = new planta(80,90,3);
planta planta30 = new planta(80,90,3);

planta planta31 = new planta(20,90,3);
planta planta32 = new planta(20,90,3);

planta planta33 = new planta(20,90,3);
planta planta34 = new planta(15,90,3);
planta planta35 = new planta(15,90,3);
planta planta36 = new planta(20,90,3);
planta planta37 = new planta(15,90,3);
planta planta38 = new planta(20,90,3);
planta planta39 = new planta(25,90,3);
planta planta40 = new planta(20,90,3);

planta planta41 = new planta(20,90,3);
planta planta42 = new planta(15,90,3);
planta planta43 = new planta(20,90,3);
planta planta44 = new planta(25,90,3);
planta planta45 = new planta(20,90,3);

planta planta46 = new planta(20,90,3);
planta planta47 = new planta(15,90,3);
planta planta48 = new planta(20,90,3);
planta planta49 = new planta(25,90,3);
planta planta50 = new planta(20,90,3);

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
	background(#6D8082);
	//_____________________ Luces
	//lights();
	
	//________________ Actualiza la cámara
	moveCamera();




	//________________ Dibuja el estanque
	if(showPond)
		drawPond();

	//________________ Dibuja el perímetro	

	//_________________________ Comandos para profundidad del sketch

	//hint(DISABLE_DEPTH_TEST);  // Irrelevante

	//hint(ENABLE_DEPTH_SORT);   // No lo actives si no quieres 
								 // que tu computadora explote





	//________________ Dibuja el puente
	if(showPerimeter)
		drawPerimeter();
	


	//_________________________ Plantas traseras


	pushMatrix();

		translate(perimeterSize-30, perimeterSize-70, perimeterSize-50);
		planta4.print();
		translate(0, 0, -15);
		planta5.print();
		rotateY(radians(90));
		translate(0, 0, -15);
		planta5.print();

	popMatrix();


	//_______________________ Puente
	if(showBridge)
		drawBridge();


	

//________________________________________ Plantas carito

  pushMatrix();
  translate(perimeterSize-100, perimeterSize-70, perimeterSize-50);
  planta8.print();
  translate(0,0,-30);
  planta9.print();
  translate(0,0,-30);
  planta10.print();
  translate(0,0,-30);
  planta26.print();
  translate(0,0,-30);
  planta27.print();
  translate(10,0,-30);
  planta28.print();
  
  popMatrix();

pushMatrix();
  translate(perimeterSize-60, perimeterSize-70, perimeterSize-50);
  planta11.print();
  translate(0,0,-20);
  planta12.print();
  translate(0,0,-20);
  planta13.print();
  
  popMatrix();
	
pushMatrix();
  translate(perimeterSize-280, perimeterSize-70, perimeterSize-50);
  planta14.print();
  translate(-15,0,-30);
  planta15.print();
  translate(-15,0,-30);
  planta16.print();
  
  popMatrix();

pushMatrix();
  translate(perimeterSize-300, perimeterSize-70, perimeterSize-50);
  planta17.print();
  translate(-15,0,-20);
  planta18.print();
  translate(-15,0,-20);
  planta19.print();
  
  popMatrix();
  
  pushMatrix();
  translate(perimeterSize-200, perimeterSize-70, perimeterSize-50);
  planta20.print();
  translate(-15,0,-30);
  planta21.print();
  translate(-15,0,-30);
  planta22.print();
  translate(-15,0,-30);
  planta23.print();
  translate(-15,0,-30);
  planta24.print();
  translate(-15,0,-30);
  planta25.print();
  
  popMatrix();

 pushMatrix();
  translate(perimeterSize-170, perimeterSize-70, perimeterSize-50);
  planta29.print();
  translate(0,0,-30);
  planta30.print();
 popMatrix();
 

 //Plantas frontales

//_______________________ Plantas frontales
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







/* 
 pushMatrix();
  translate(perimeterSize-200, perimeterSize-70, perimeterSize+120);
  planta31.print();
  translate(0,0,-30);
  planta32.print();
 popMatrix();
 
  pushMatrix();
  translate(perimeterSize-170, perimeterSize-70, perimeterSize+120);
  planta33.print();
  translate(0,0,-30);
  planta34.print();
 popMatrix();
 
  pushMatrix();
  translate(0, perimeterSize-70, perimeterSize+120);
  planta35.print();
  translate(0,0,-30);
  planta36.print();
 popMatrix();
 
 pushMatrix();
  translate( perimeterSize-20, perimeterSize-70, perimeterSize+120);
  planta37.print();
  translate(0,0,-30);
  planta38.print();
 popMatrix();
 
 pushMatrix();
  translate( perimeterSize-50, perimeterSize-70, perimeterSize+120);
  planta39.print();
 popMatrix();
 
 pushMatrix();
  translate( perimeterSize-80, perimeterSize-70, perimeterSize+120);
  planta40.print();
 popMatrix();
 
 pushMatrix();
   translate( perimeterSize-100, perimeterSize-70, perimeterSize+120);
    planta41.print();
 popMatrix();

  pushMatrix();
    translate( perimeterSize-120, perimeterSize-70, perimeterSize+120);
    planta42.print();
 popMatrix();
 
 pushMatrix();
    translate( perimeterSize-150, perimeterSize-70, perimeterSize+120);
    planta43.print();
 popMatrix();
 pushMatrix();
    translate( perimeterSize-180, perimeterSize-70, perimeterSize+120);
    planta44.print();
 popMatrix();
 pushMatrix();
    translate( perimeterSize-200, perimeterSize-70, perimeterSize+120);
    planta45.print();
 popMatrix();
  pushMatrix();
    translate( perimeterSize-220, perimeterSize-70, perimeterSize+120);
    planta46.print();
 popMatrix();
 pushMatrix();
    translate( perimeterSize-250, perimeterSize-70, perimeterSize+120);
    planta47.print();
    translate(0,0,-30);
    planta48.print();
 popMatrix();
  pushMatrix();
  translate(perimeterSize-300, perimeterSize-70, perimeterSize+120);
  planta49.print();
  translate(0,0,-30);
  planta50.print();
 popMatrix();


*/


	

	//System.out.println(cameraXPos + ", " + cameraYPos + ", " + cameraZPos + "\nLooking at: " + lookAtX + ", " + lookAtY + ", " + lookAtZ);

}


