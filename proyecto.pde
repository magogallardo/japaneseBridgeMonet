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
planta planta9 = new planta(60,80,3);

planta planta10 = new planta(60,80,1);
planta planta11 = new planta(50,80,3);
planta planta12 = new planta(60,80,2);


planta planta13 = new planta(40,75,4);
planta planta14 = new planta(40,70,3);
planta planta15 = new planta(40,90,2);

planta planta16 = new planta(80,60,4);
planta planta17 = new planta(70,60,3);
planta planta18 = new planta(60,60,2);
planta planta19 = new planta(90,60,4);
planta planta20 = new planta(70,60,4);

planta planta21 = new planta(90,80,3);
planta planta22 = new planta(80,80,4);
planta planta23 = new planta(100,80,4);

planta planta24 = new planta(80,90,3);

planta planta25 = new planta(100, 90, 1);
planta planta26	= new planta(100, 90, 2);
planta planta27 = new planta(100, 90, 3);
planta planta28 = new planta(100, 90, 4);


ramal ramal1 = new ramal(250, 50);
ramal ramal2 = new ramal(100, 50);
ramal ramal3 = new ramal(150, 50);


ramal ramal4 = new ramal(100, 90, 1);
ramal ramal5 = new ramal(100, 90, 2);
ramal ramal6 = new ramal(100, 90, 3);

//_____________________________ Mostrar perimetro
boolean showPerimeter = false;
boolean showPond = true;
boolean showBridge = true;
boolean showPlantas = false;
boolean showArboles = true;

//________________ Definición de ventana
void setup() {
	size(680, 680, P3D);
	inicializarEstanque();
}

		//TENER CUIDADO CON EL ORDEN DE DIBUJADO


//_____________ Función principal de dibujado
void draw(){


	//_______________________ Color de fondo
	background(#071507);
	//_____________________ Luces
	//lights();
	
	//________________ Actualiza la cámara
	moveCamera();

	
	//__________- Mostrando hojas para reporte
	pushMatrix();
	translate(0, -700, 0);
	ramal4.print();
	translate(80, 0, 0);
	ramal5.print();
	translate(80, 0, 0);
	ramal6.print();
	translate(50, 0, 0);
	
	
	popMatrix();


	//________________ Dibuja el perímetro	
		if(showPerimeter)
		drawPerimeter();

	//_________________________ Comandos para profundidad del sketch

	//hint(DISABLE_DEPTH_TEST);  // Irrelevante

	//hint(ENABLE_DEPTH_SORT);   // No lo actives si no quieres 
								 // que tu computadora explote




	if (showArboles == true) {
		
pushMatrix();

      translate(50, 0, 70);
      ramal1.print();
      //resetMatrix();
      translate(20,20,0);
      ramal1.print();
      translate(20,10,0);
      ramal1.print();
      translate(20,-20,0);
      ramal1.print();
      translate(-80,40,0);
      ramal1.print();
      translate(-20,20,0);
      ramal1.print();
      translate(10,20,0);
      ramal1.print();
      translate(-30,-50,0);
      ramal1.print();
      translate(10,-60,0);
      ramal1.print();
      translate(20,-20,0);
      ramal1.print();
      translate(20,-5,0);
      ramal1.print();
      translate(10,30,0);
      ramal1.print();
      translate(10,-20,0);
      ramal1.print();
      translate(10,15,0);
      ramal1.print();
      translate(10,-10,0);
      ramal1.print();
      translate(10,-5,0);
      ramal1.print();
      translate(-20,-5,0);
      ramal1.print();
      translate(-50,10,0);
      ramal1.print();
      translate(-50,0,0);
      ramal1.print();
      translate(10,-5,0);
      ramal1.print();
      translate(120,-5,0);
      ramal1.print();
      translate(120,-5,0);
      ramal1.print();
      translate(15,5,0);
      ramal1.print();
      translate(15,-10,0);
      ramal1.print();
      translate(15,15,0);
      ramal1.print();
      translate(15,-20,0);
      ramal1.print();
      translate(15,25,0);
      ramal1.print();
      translate(-75,25,0);
      ramal1.print();
      translate(15,0,0);
      ramal1.print();
      translate(15,0,0);
      ramal1.print();
      translate(15,0,0);
      ramal1.print();
      translate(15,0,0);
      ramal1.print();
      translate(-80,0,-25);
      ramal1.print();
      translate(0,0,15);
      ramal3.print();
      translate(0,0,10);
      ramal3.print();
      translate(0,0,5);
      ramal3.print();
      translate(0,10,5);
      ramal3.print();
      
      

    
    popMatrix();
    //cambia posicion en Y
    pushMatrix();
      translate(150,-40,0);
      ramal3.print();
      translate(50,-10,1);
      ramal1.print();
      translate(-25,70,1);
      ramal1.print();
      translate(-160,-25,1);
      ramal1.print();
    popMatrix();
//Las de hasta arriba 
    pushMatrix();

      translate(50, 0, 70);
      ramal1.print();
      translate(-50, 20, 70);
      ramal2.print();
      translate(25, 0, -30);
      ramal3.print();
      translate(0, -50, 50);
      ramal3.print();
      translate(0, -50, 50);
      ramal3.print();
      translate(-25, 0, 0);
      ramal2.print();
      translate(-25, 0, 0);
      ramal3.print();
      translate(-55, 0, -40);
      ramal1.print();
      translate(20, 0, -40);
      ramal3.print();
      translate(50, 0, -40);
      ramal3.print();
      translate(80, 0, 80);
      ramal3.print();
      translate(90, 40, 20);
      ramal3.print();
      translate(-20, -60, -30);
      ramal3.print();
      translate(-10, 80, 60);
      ramal3.print();
      translate(40, 60, -80);
      ramal3.print();
      translate(-120, 20, 90);
      ramal3.print();
      translate(-20, -35, -5);
      ramal3.print();
      translate(-20, 15, -10);
      ramal3.print();
      translate(-20,-20, 10);
      ramal3.print();
      translate(-20, 45, -30);
      ramal3.print();
      translate(-20, -20, -30);
      ramal3.print();
      translate(135, 0, 0);
      ramal3.print();
      translate(50, 30, 0);
      ramal3.print();
      translate(30, -40, 0);
      ramal3.print();
      translate(10, -10, 0);
      ramal3.print();
      translate(10, 30, -10);
      ramal3.print();
      translate(10, 30, -10);
      ramal3.print();
      translate(-30, 30, -20);
      ramal3.print();
      translate(0, -250, 0);
      ramal3.print();
      translate(-20, 10, 0);
      ramal3.print();
      translate(-20, -15, 0);
      ramal3.print();
      translate(-20, 30, 0);
      ramal3.print();
      translate(-20, -25, 0);
      ramal3.print();
      translate(-20, 15, 0);
      ramal3.print();
      translate(-20, -20, 0);
      ramal3.print();
      translate(-20, 35, 0);
      ramal3.print();
      translate(-20, 0, 0);
      ramal3.print();
      translate(-20, 0, 0);
      ramal3.print();
      translate(200, 0, 0);
      ramal3.print();
      translate(20, 35, 0);
      ramal3.print();
      translate(20, -40, 0);
      ramal3.print();
      translate(20, 55, 0);
      ramal3.print();
      translate(20, -60, 0);
      ramal3.print();
      translate(20, 80, 0);
      ramal3.print();
      translate(20, -40, 0);
      ramal3.print();
      translate(20, 60, 0);
      ramal3.print();
      translate(20, -60, 0);
      ramal3.print();
      translate(0, 100, 0);
      ramal3.print();
      translate(-20, 0, 0);
      ramal3.print();
      translate(-20, 0, 0);
      ramal3.print();
      translate(-20, 0, 0);
      ramal3.print();
      translate(-20, 0, 0);
      ramal3.print();
      translate(-20, 0, 0);
      ramal3.print();
      translate(-20, 0, 0);
      ramal3.print();
    
    popMatrix();

    







	}


	//________________ Dibuja el estanque
	if(showPond)
		drawPond();
	


	//_________ Plantas traseras (/////////////// Pon aquí las plantas traseras ///)



//_________ Plantas traseras Izquierda
	

	if (showPlantas == true){

		pushMatrix();
	
			translate(5, perimeterSize-70, perimeterSize-50);
			planta2.print();
			translate(0, 0, -15);
			planta5.print();
			rotateY(radians(90));
			translate(0, 0, -15);
			planta5.print();
	
		popMatrix();
	
	  pushMatrix();
	
	    translate(8, perimeterSize-70, perimeterSize-100);
	    planta6.print();
	    translate(0, 0, -15);
	    planta3.print();
	    
	  popMatrix();
	    pushMatrix();
	
	    translate(10, perimeterSize-70, perimeterSize-150);
	    planta6.print();
	    translate(0, 0, -15);
	    planta6.print();
	    rotateY(radians(90));
	    translate(0, 0, -15);
	    planta7.print();
	
	  popMatrix();
	    pushMatrix();
	
	    translate(5, perimeterSize-70, perimeterSize-200);
	    planta6.print();
	    translate(0, 0, -15);
	    planta3.print();
	
	
	  popMatrix();
	    pushMatrix();
	
	    translate(5, perimeterSize-70, perimeterSize-250);
	    planta6.print();
	    translate(0, 0, -15);
	    planta3.print();
	
	
	  popMatrix();
	   pushMatrix();
	
	    translate(150, perimeterSize-70, perimeterSize-255);
	    planta3.print();
	    translate(-30, 0, -15);
	    planta6.print();
	    translate(15, 0, 10);
	    planta7.print();
	    translate(0, 0, 15);
	    planta7.print();
	
	  popMatrix();
	  
	    pushMatrix();
	
	    translate(200, perimeterSize-70, perimeterSize-270);
	    planta3.print();
	    translate(-30, 0, -15);
	    planta6.print();
	    translate(15, 0, 10);
	    planta7.print();
	    translate(0, 0, 15);
	    planta7.print();
	
	  popMatrix();
	     pushMatrix();
	
	    translate(80, perimeterSize-70, perimeterSize-255);
	    planta3.print();
	    translate(-30, 0, -15);
	    planta6.print();
	    translate(15, 0, 10);
	    planta7.print();
	    translate(0, 0, 15);
	    planta7.print();
	
	  popMatrix();
	  
	    pushMatrix();
	
	    translate(280, perimeterSize-70, perimeterSize-270);
	    planta3.print();
	    translate(-30, 0, -15);
	    planta6.print();
	    translate(15, 0, 10);
	    planta7.print();
	    translate(0, 0, 15);
	    planta7.print();
	
	  popMatrix();
	
	//________________________________________ Plantas traseras derechas
	 pushMatrix();
	
	    translate(300, perimeterSize-70, perimeterSize-50);
	    planta1.print();
	    translate(-30, 0, -15);
	    planta2.print();
	    translate(15, 0, 10);
	    planta3.print();
	    translate(0, 0, 15);
	    planta3.print();
	
	  popMatrix();
	  pushMatrix();
	      translate(305, perimeterSize-70, perimeterSize-100);
	    planta6.print();
	    translate(-30, 0, -15);
	    planta7.print();
	    translate(15, 0, 10);
	    planta3.print();
	    translate(0, 0, 15);
	    planta3.print();
	  popMatrix();
	  
	  pushMatrix();
	     translate(305, perimeterSize-70, perimeterSize-150);
	    planta6.print();
	    translate(-30, 0, -15);
	    planta7.print();
	    translate(15, 0, 10);
	    planta3.print();
	    translate(0, 0, 15);
	    planta3.print();
	
	  popMatrix();
	  
	  pushMatrix();
	
	    translate(308, perimeterSize-70, perimeterSize-180);
	    planta3.print();
	    translate(-30, 0, -15);
	    planta6.print();
	    translate(15, 0, 10);
	    planta7.print();
	    translate(0, 0, 15);
	    planta7.print();
	
	  popMatrix();
	  
	
	
	//________________________________________ Plantas carito
	
	  pushMatrix();
	  translate(perimeterSize-100, perimeterSize-70, perimeterSize-50);
	  planta8.print();
	  translate(0,0,-30);
	  planta9.print();
	  translate(0,0,-30);
	  planta10.print();
	  translate(0,0,-30);
	  planta21.print();
	  translate(0,0,-30);
	  planta22.print();
	  translate(10,0,-30);
	  planta23.print();
	  
	  popMatrix();
	
	pushMatrix();
	  translate(perimeterSize-60, perimeterSize-70, perimeterSize-50);
	  planta11.print();
	  translate(0,0,-20);
	  planta12.print();
	  translate(0,0,-20);
	  planta8.print();
	  
	  popMatrix();
		
	pushMatrix();
	  translate(perimeterSize-280, perimeterSize-70, perimeterSize-50);
	  planta14.print();
	  translate(-15,0,-30);
	  planta9.print();
	  translate(-15,0,-30);
	  planta12.print();
	  
	  popMatrix();
	
	pushMatrix();
	  translate(perimeterSize-300, perimeterSize-70, perimeterSize-50);
	  planta13.print();
	  translate(-15,0,-20);
	  planta14.print();
	  translate(-15,0,-20);
	  planta15.print();
	  
	  popMatrix();
	  
	  pushMatrix();
	  translate(perimeterSize-200, perimeterSize-70, perimeterSize-50);
	  planta16.print();
	  translate(-15,0,-30);
	  planta17.print();
	  translate(-15,0,-30);
	  planta18.print();
	  translate(-15,0,-30);
	  planta19.print();
	  translate(-15,0,-30);
	  planta20.print();
	  translate(-15,0,-30);
	  planta16.print();
	  
	  popMatrix();
	
	 pushMatrix();
	  translate(perimeterSize-170, perimeterSize-70, perimeterSize-50);
	  planta24.print();
	  translate(0,0,-30);
	  planta24.print();
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

	}

	//_______________________ Puente
	if(showBridge)
		drawBridge();


	

 //Plantas frontales (//////////// PON AQUI LAS PLANTAS FRONTALES////////)

//_______________________ Plantas frontales IZQUIERDAS
	
	if (showPlantas){

	pushMatrix();
	
			translate(5, perimeterSize-70, perimeterSize+30);
			planta1.print();
			translate(-30, 0, -15);
			planta2.print();
			translate(15, 0, 10);
			planta3.print();
			translate(0, 0, 15);
			planta3.print();
	
		popMatrix();
	  
	  pushMatrix();
	
	    translate(150, perimeterSize-70, perimeterSize+270);
	    planta3.print();
	    translate(-30, 0, -15);
	    planta6.print();
	    translate(15, 0, 10);
	    planta7.print();
	    translate(0, 0, 15);
	    planta7.print();
	
	  popMatrix();
	  
	    pushMatrix();
	
	    translate(200, perimeterSize-70, perimeterSize+270);
	    planta3.print();
	    translate(-30, 0, -15);
	    planta6.print();
	    translate(15, 0, 10);
	    planta7.print();
	    translate(0, 0, 15);
	    planta7.print();
	
	  popMatrix();
	  
	   pushMatrix();
	
	    translate(250, perimeterSize-70, perimeterSize+270);
	    planta3.print();
	    translate(-30, 0, -15);
	    planta6.print();
	    translate(15, 0, 10);
	    planta7.print();
	    translate(0, 0, 15);
	    planta7.print();
	
	  popMatrix();
	  pushMatrix();
	
	    translate(300, perimeterSize-70, perimeterSize+270);
	    planta3.print();
	    translate(-30, 0, -15);
	    planta6.print();
	    translate(15, 0, 10);
	    planta7.print();
	    translate(0, 0, 15);
	    planta7.print();
	
	  popMatrix();
	  pushMatrix();
	
	    translate(100, perimeterSize-70, perimeterSize+270);
	    planta3.print();
	    translate(-30, 0, -15);
	    planta6.print();
	    translate(15, 0, 10);
	    planta7.print();
	    translate(0, 0, 15);
	    planta7.print();
	
	  popMatrix();
	    pushMatrix();
	
	    translate(50, perimeterSize-70, perimeterSize+270);
	    planta3.print();
	    translate(-30, 0, -15);
	    planta6.print();
	    translate(15, 0, 10);
	    planta7.print();
	    translate(0, 0, 15);
	    planta7.print();
	
	  popMatrix();
	  
	  pushMatrix();
	    translate(10, perimeterSize-70, perimeterSize+220);
	    planta3.print();
	    translate(-15, 0, -15);
	    planta6.print();
	  popMatrix();
	  
	  pushMatrix();
	    translate(20, perimeterSize-70, perimeterSize+210);
	    planta8.print();
	    translate(-15, 0, -15);
	    planta9.print();
	  popMatrix();
	  pushMatrix();
	    translate(25, perimeterSize-70, perimeterSize+180);
	    planta8.print();
	    translate(-15, 0, -15);
	    planta9.print();
	  popMatrix();
	    pushMatrix();
	    translate(10, perimeterSize-70, perimeterSize+120);
	    planta8.print();
	    translate(-15, 0, -15);
	    planta9.print();
	  popMatrix();
	  
	   pushMatrix();
	    translate(8, perimeterSize-70, perimeterSize+80);
	    planta3.print();
	    translate(-30, 0, -15);
	    planta6.print();
	    translate(15, 0, 10);
	    planta7.print();
	    translate(0, 0, 15);
	    planta7.print();
	  popMatrix();
	//_______________________ Plantas frontales DERECHAS
	 pushMatrix();
	
	    translate(300, perimeterSize-70, perimeterSize+100);
	    planta1.print();
	    translate(-30, 0, -15);
	    planta2.print();
	    translate(15, 0, 10);
	    planta3.print();
	    translate(0, 0, 15);
	    planta3.print();
	
	  popMatrix();
	  pushMatrix();
	      translate(305, perimeterSize-70, perimeterSize+150);
	    planta6.print();
	    translate(-30, 0, -15);
	    planta7.print();
	    translate(15, 0, 10);
	    planta3.print();
	    translate(0, 0, 15);
	    planta3.print();
	
	  popMatrix();
	  
	  pushMatrix();
	
	    translate(308, perimeterSize-70, perimeterSize+180);
	    planta3.print();
	    translate(-30, 0, -15);
	    planta6.print();
	    translate(15, 0, 10);
	    planta7.print();
	    translate(0, 0, 15);
	    planta7.print();
	
	  popMatrix();
	  
	    pushMatrix();
	
	    translate(310, perimeterSize-70, perimeterSize+200);
	    planta3.print();
	    translate(-30, 0, -15);
	    planta6.print();
	    translate(15, 0, 10);
	    planta7.print();
	    translate(0, 0, 15);
	    planta7.print();
	
	  popMatrix();
	  
	   pushMatrix();
	
	    translate(305, perimeterSize-70, perimeterSize+250);
	    planta3.print();
	    translate(-30, 0, -15);
	    planta6.print();
	    translate(15, 0, 10);
	    planta7.print();
	    translate(0, 0, 15);
	    planta7.print();
	
	  popMatrix();

	}

	//___________________________________ DEBUG
	if(keyPressed){

		if (key == 'e' || key == 'E'){
			inicializarEstanque();
		}

		if (key == 'r' || key == 'R'){
			if (showPond) {
				showPond = false;
			}else{
				showPond = true;
			}
			delay(100);
		}

		if (key == 't' || key == 'T'){
			if (showPlantas) {
				showPlantas = false;
			}else{
				showPlantas = true;
			}
			delay(100);
		}

		if (key == 'y' || key == 'Y'){
			if (showBridge) {
				showBridge = false;
			}else{
				showBridge = true;
			}
			delay(100);
		}


		if (key == 'u' || key == 'U'){
			if (showPerimeter) {
				showPerimeter = false;
			}else{
				showPerimeter = true;
			}
			delay(100);
		}

		if (key == 'i' || key == 'I'){
			if (showArboles) {
				showArboles = false;
			}else{
				showArboles = true;
			}
			delay(100);
		}

	}





	//System.out.println(cameraXPos + ", " + cameraYPos + ", " + cameraZPos + "\nLooking at: " + lookAtX + ", " + lookAtY + ", " + lookAtZ);

}
