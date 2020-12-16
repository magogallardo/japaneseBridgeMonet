import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class proyecto extends PApplet {

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


//_____________________________ Mostrar perimetro
boolean showPerimeter = false;
boolean showPond = true;
boolean showBridge = true;
boolean showPlantas = true;
boolean showArboles = true;

//________________ Definición de ventana
public void setup() {
	
	inicializarEstanque();
}

		//TENER CUIDADO CON EL ORDEN DE DIBUJADO


//_____________ Función principal de dibujado
public void draw(){


	//_______________________ Color de fondo
	background(0xff071507);
	//_____________________ Luces
	//lights();
	
	//________________ Actualiza la cámara
	moveCamera();


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



}
class Punto2D{
	
	public float x, y;

	Punto2D(float x, float y){
		this.x = x;
		this.y = y;
	}

	public void setPoints(float x, float y){
		this.x = x;
		this.y = y;
	}



}

class Punto3D{

	public float x, y, z;

	Punto3D(float x, float y, float z){
		this.x = x;
		this.y = y;
		this.z = z;
	}


}
/*
	Configuración de cámara

*/


//________________________ Variables globales iniciales
float cameraXPos = 146;
float cameraYPos = 134;
float cameraZPos = 624;

float lookAtX = 0;
float lookAtY = 0;
float lookAtZ = 0;

//______________________ camara auxiliar
//float cameraXPos = 0;
//float cameraYPos = -30;
//float cameraZPos = 150;


float speed = 2;




public void moveCamera(){

	camera(cameraXPos, cameraYPos, cameraZPos, lookAtX, lookAtY, lookAtZ, 
       0.0f, 1.0f, 0.0f);


	if(keyPressed){

		if (key == 'w' || key == 'W'){
			cameraZPos-=speed;
		}

		if (key == 's' || key == 'S'){
			cameraZPos+=speed;
		}

		if (key == 'd' || key == 'D'){
			cameraXPos+=speed;
		}

		if (key == 'a' || key == 'A'){
			cameraXPos-=speed;
		}

		if (key == 32)
			cameraYPos-=speed;


		if(key == 'c' || key == 'C')
			cameraYPos+=speed;
	}

	lookAtX = cameraXPos + mouseX - width/2;
	lookAtY = cameraYPos + mouseY - height/2;
	lookAtZ = cameraZPos - 100;

}
/*

		Clase para la gestión del estanque así como los nenúfares


*/



float profundidadEstanque = 80;
float xoff = 0.0f; 
float increment = 0.02f;
float[] puntosRuido;

//___________________________ Probabilidad de que un 
//___________________________ nenufar tenga flor
int probabilidadFlor = 20;


//_________________________________ Control de nenufares existentes
int numeroMaximoNenufares = 500;
int numeroNenufares = 0;

//_____________________ Opacidad minima que debe tener el verde
//_____________________ para que se genere un nenufar
int brilloMinimo = 145;

//_______________________ Lista de posiciones de cada nenúfar
ArrayList<Punto2D> nenufaresPos = new ArrayList<Punto2D>();
ArrayList<Punto2D> nenufaresFlower = new ArrayList<Punto2D>();

//_________ imagen de ruido
PImage img;


//_____________________________ Función que inicia el estanque:

public void inicializarEstanque(){

	//______________________ Limpia variables
	numeroNenufares = 0;
	nenufaresPos.clear();
	nenufaresFlower.clear();

	//__________________________ Crea la imagen de ruido

	img = createImage(PApplet.parseInt(perimeterSize), PApplet.parseInt(perimeterSize*2), ARGB);
	
	//_________________________Guarda los puntos de ruido en otra parte

	puntosRuido = new float[PApplet.parseInt(perimeterSize*perimeterSize*2)];
	
	//________________ Precarga los pixeles de la imagen
	img.loadPixels();

	//_______________ Generando los puntos de ruido

	for (int x = 0; x < perimeterSize; x++) {
	    xoff += increment;    
	    float yoff = 0.0f;   
	    for (int y = 0; y < perimeterSize*2; y++) {
	      yoff += increment; 
	      float bright = noise(xoff, yoff) * 255;
	      
		

		//___________________ Los guarda

	      puntosRuido[PApplet.parseInt(x+y*perimeterSize)] = bright;
	  	  img.pixels[PApplet.parseInt(x+y*perimeterSize)] = color(147, 160, 45, bright); 
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
				int xaux = PApplet.parseInt(random(0,perimeterSize));
				int yaux = PApplet.parseInt(random(0,perimeterSize*2));


				//______________________________ Verifica si el punto seleccionado
				//______________________________ por el rango tiene la opacidad
				//______________________________ minima para agregarlo

				if(puntosRuido[PApplet.parseInt(xaux+yaux*perimeterSize)] > brilloMinimo){
					//Guardando los puntos generados en su propio arreglo

					nenufaresPos.add(new Punto2D(xaux, yaux));


					int flower;
					int colorFlower = 1;
					//__________ Auxiliar para generar la flor
					int auxGen = PApplet.parseInt(random(0, 100));
					//_____________ Si auxGen es menor que la
					//_____________ probabilidad de flor lo genera
					if(auxGen <= probabilidadFlor){
						flower = 1;
						//___________________ Y si es par, le pone el
						//___________________ segundo color
						if (auxGen%2 == 0) {
							colorFlower = 2;
						}
					}else{
						flower = 0;
					}
					
					//_______________ Se añade un nenufar, con, o sin flor
					//_______________ de color 1 o 2
					nenufaresFlower.add(new Punto2D(flower, colorFlower));
					numeroNenufares++;
				}

			
		}

	popMatrix();




}

//________________ Función dinámica para imprimir el estanque
public void drawPond(){
	
	fill(45, 62, 29);
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


		

		for (int i = 0; i < nenufaresPos.size(); ++i) {
			Punto2D aux = nenufaresPos.get(i);
			Punto2D aux2 = nenufaresFlower.get(i);
			nenufar nuevo = new nenufar(PApplet.parseInt(aux2.x), PApplet.parseInt(aux2.y));

			//______________________ Imprimiendo nenufares
			pushMatrix();
			translate(aux.x, aux.y);
			nuevo.print();   //____________________ Cambiar por clase nenufares
			popMatrix();

		}

	popMatrix();






	

}
/*

		Clase que gestiona los parámetros de la creacion
		de una Hojas

*/




enum colorHojas{ 	Color1, Color2, Color3, Color4, Color5; }
enum Tipo{     Tipo1, Tipo2, Tipo3, Tipo4; }



class hoja{
	
	colorHojas colorhoja;
	float altura;
	float maxX;
	float minYp1;
	float minYp2;

	float thickness; 

	ArrayList<Punto3D> puntos = new ArrayList<Punto3D>();


	hoja(Tipo tipo, float altura){

		
		thickness = PApplet.parseInt(random(1, 3));
		
		//____________________________________ Asignando el color aleatorio de las hojas
		int aux = PApplet.parseInt(random(1, 6));


		if (aux == 1){
			this.colorhoja = colorHojas.Color1;
		}
		if (aux == 2) {
			this.colorhoja = colorHojas.Color2;
		}
		if (aux == 3) {
			this.colorhoja = colorHojas.Color3;
		}
		if (aux == 4) {
			this.colorhoja = colorHojas.Color4;
		}
		if (aux == 5) {
			this.colorhoja = colorHojas.Color5;
		}

		if(tipo == Tipo.Tipo1){
			//__________________ Altura
			this.altura = altura - random(0, altura/7); //Rango de crecimiento
			
			maxX = 10;
			minYp1 = altura/3;
			minYp2 = 2*(altura/3);

			generarHoja();
		}

		if(tipo == Tipo.Tipo2){	

			this.altura = 3*(altura/4) - random(0, altura/7);
			
			maxX = 20;

			minYp2 = 2*this.altura/3 - random(0, altura/4);
			minYp1 = altura/3 - random(0, altura/10);

			generarHoja();

			
		}

		if(tipo == Tipo.Tipo3){
			this.altura = (altura/2) - random(0, altura/7);
			
			maxX = 25;

			minYp2 = this.altura - random(0, altura/4);
			minYp1 = altura/3;

			generarHoja();

		}

		if(tipo == Tipo.Tipo4){

			this.altura = (altura/4) - random(0, altura/7);
			
			maxX = 10;

			minYp2 = this.altura - random(0, altura/4);
			minYp1 = altura/4;

			generarHoja();

		}

	}

	public void generarHoja(){

		//____________________________________ Generando la hoja en base a 
		//____________________________________ sus valores predefinidos por el tipo

		float yp2 = -random(minYp2, - altura);
		float yp1 = -random(minYp1, yp2);
		float xp3 = random(0, maxX);
		float xp2 =	random(0, xp3);
		float xp1 =	random(0, xp2);

		float compZ = random(-maxX, maxX); // Añadir componente en z para profundidad

		float aux = random(-2, 2);
		if (aux>0) {
			aux=1;
		}else {
			aux=-1;
		}


		puntos.add(new Punto3D(0, 0, 0));
		puntos.add(new Punto3D(aux*xp1, yp1, 0));
		puntos.add(new Punto3D(aux*xp2, yp2, 0));
		puntos.add(new Punto3D(aux*xp3, -altura, compZ));
	}

	public void print(){
		strokeWeight(thickness);
		noFill();


		if (this.colorhoja == colorHojas.Color1){
			stroke(61, 82, 55);
		} 

		if (this.colorhoja == colorHojas.Color2){
			stroke(181, 195, 109);
		} 
		if (this.colorhoja == colorHojas.Color3){
			stroke(110, 138, 111);
		} 
		if (this.colorhoja == colorHojas.Color4){
			stroke(98, 118, 48);
		} 
		if (this.colorhoja == colorHojas.Color5) {
			stroke(31, 65, 13);
		}

		bezier(puntos.get(0).x, puntos.get(0).y, puntos.get(0).z, 
			   puntos.get(1).x, puntos.get(1).y, puntos.get(1).z,
			   puntos.get(2).x, puntos.get(2).y, puntos.get(2).z,
			   puntos.get(3).x, puntos.get(3).y, puntos.get(3).z);
		



		strokeWeight(1);
	}





}
class nenufar{

	float flowerSize = 5;

	boolean flower = false;
	Punto3D flowerColor =  new Punto3D(186, 134, 111);

	nenufar(int flowerInt, int flowerCo){

			if(flowerInt == 1){
				flower = true;
			}

			if(flowerCo == 2){
				Punto3D nuevo = new Punto3D(229, 213, 173);
				flowerColor = nuevo;
				//System.out.println("color2");
			}

		


	}

	public void print(){

		noStroke();
		fill(93, 122, 142);
		circle(0, 0, 10);
		if (flower){

			pushMatrix();

				
				fill(flowerColor.x, flowerColor.y, flowerColor.z);
				pushMatrix();
					translate(0, flowerSize/4, flowerSize/4);
					rotateX(radians(45));
					circle(0, 0, flowerSize);
				popMatrix();
	
				fill(flowerColor.x, flowerColor.y, flowerColor.z);
				pushMatrix();
					translate(0, -flowerSize/4, flowerSize/4);
					rotateX(radians(-45));
					circle(0, 0, flowerSize);
				popMatrix();

				rotateZ(radians(90));

				fill(flowerColor.x, flowerColor.y, flowerColor.z);
				pushMatrix();
					translate(0, flowerSize/4, flowerSize/4);
					rotateX(radians(45));
					circle(0, 0, flowerSize);
				popMatrix();
	
				fill(flowerColor.x, flowerColor.y, flowerColor.z);
				pushMatrix();
					translate(0, -flowerSize/4, flowerSize/4);
					rotateX(radians(-45));
					circle(0, 0, flowerSize);
				popMatrix();



			popMatrix();
		}


	}


}

	float sphereSize = 5;
	float perimeterSize = 300;  //__________ Hasta el momento solo funciona con 300

	
//______________________ Dibuja el perímetro donde se dibujará
public void drawPerimeter(){

	lights();
	smooth();
	noStroke();
	fill(255,0,0);
	pushMatrix();
		
		//_______________________________ Vértices
		sphere(sphereSize);
		translate(perimeterSize, 0, 0);
		sphere(sphereSize);
		translate(0, perimeterSize, 0);
		sphere(sphereSize);
		translate(-perimeterSize, 0, 0);
		sphere(sphereSize);
		translate(0, 0, 2*perimeterSize);
		sphere(sphereSize);
		translate(perimeterSize, 0, 0);
		sphere(sphereSize);
		translate(0, -perimeterSize, 0);
		sphere(sphereSize);
		translate(-perimeterSize, 0, 0);
		sphere(sphereSize);

	popMatrix();
	//_________________________________ Lineas


		float linesNumber = 10;
		float distanceBtwLines = perimeterSize/linesNumber;



	pushMatrix();
		//_________________ Azul
		stroke(0,0,255);

		pushMatrix();
			for (int j = 0; j < 2; ++j) {
				
				for (int i = 0; i <= linesNumber; ++i){ 
					line(distanceBtwLines*i, 0, 0, distanceBtwLines*i, perimeterSize, 0);
					line(0, distanceBtwLines*i, 0, perimeterSize, distanceBtwLines*i, 0);
				}
				translate(0, 0, 2*perimeterSize);	
			}
		popMatrix();

			

		pushMatrix();
		for (int k = 0; k < 2; ++k) {
		//_____________ Verde
		stroke(0, 255, 0);
			pushMatrix();
				for (int j = 0; j < 2; ++j) {
					
					for (int i = 0; i <= linesNumber; ++i){ 
						line(0, distanceBtwLines*i, 0, 0, distanceBtwLines*i, perimeterSize);
						line(0, 0, distanceBtwLines*i, 0, perimeterSize, distanceBtwLines*i);
					}
					translate(perimeterSize, 0, 0);	
				}
			popMatrix();
			translate(0, 0, perimeterSize);
			}
		popMatrix();

		pushMatrix();
		for (int k = 0; k < 2; ++k) {
			
		//_____________ Rojo
		stroke(255, 0, 0);
			pushMatrix();
				for (int j = 0; j < 2; ++j) {
					
					for (int i = 0; i <= linesNumber; ++i){ 
						line(distanceBtwLines*i, 0, 0, distanceBtwLines*i, 0, perimeterSize);
						line(0, 0, distanceBtwLines*i, perimeterSize, 0, distanceBtwLines*i);
					}
					translate(0, perimeterSize, 0);	
				}
			popMatrix();
			translate(0, 0, perimeterSize);
		}
		popMatrix();

	popMatrix();
		

}	
/*

		Clase que gestiona las hojas de una planta

*/

class planta {

	int numHojas;
	float altura;
	int maxTipo;


	ArrayList<hoja> Hojas = new ArrayList<hoja>();

	planta(float altura, int numHojas, int tipo){
		this.maxTipo=tipo;
		this.altura = altura;
		this.numHojas = numHojas;
		generarHojas();

	}

	planta(float altura, int numHojas){
		this.altura = altura;
		this.numHojas = numHojas;
		this.maxTipo = 4;
		generarHojas();
	}

	public void generarHojas(){

		for (int i = 0; i < numHojas; ++i) {

			float aux = PApplet.parseInt(random(1, maxTipo+1));
				
			
			if (aux == 1) {
				
				Hojas.add(new hoja(Tipo.Tipo1, altura));
			}

			if (aux == 2) {
				
				Hojas.add(new hoja(Tipo.Tipo2, altura));

			}
			if (aux == 3) {

				Hojas.add(new hoja(Tipo.Tipo3, altura));
			
			}
			if (aux == 4) {

				Hojas.add(new hoja(Tipo.Tipo4, altura));
			
			}
		}



	}

	public void print(){

		for (int i = 0; i < numHojas; ++i) {
			hoja aux = Hojas.get(i);
			pushMatrix();
			aux.print();
			popMatrix();
		}
	}



}
int r = PApplet.parseInt(random(0, 255));
int g = PApplet.parseInt(random(0, 255));
int b = PApplet.parseInt(random(0, 255));

public void drawBridge(){

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


class rama{
	
	colorHojas colorhoja;
	float altura;
	float maxX;
	float minYp1;
	float minYp2;
	float xp3;
	float aux;
	float compZ;

	float thickness; 

	ArrayList<Punto3D> puntos = new ArrayList<Punto3D>();


	rama(Tipo tipo, float altura){

		
		thickness = PApplet.parseInt(random(1, 3));
		
		//____________________________________ Asignando el color aleatorio de las hojas
		int aux = PApplet.parseInt(random(1, 6));


		if (aux == 1){
			this.colorhoja = colorHojas.Color1;
		}
		if (aux == 2) {
			this.colorhoja = colorHojas.Color2;
		}
		if (aux == 3) {
			this.colorhoja = colorHojas.Color3;
		}
		if (aux == 4) {
			this.colorhoja = colorHojas.Color4;
		}
		if (aux == 5) {
			this.colorhoja = colorHojas.Color5;
		}

		if(tipo == Tipo.Tipo1){
			//__________________ Altura
			this.altura = altura - random(0, altura/7); //Rango de crecimiento
			
			maxX = 15;
			minYp1 = altura/3;
			minYp2 = 2*(altura/3);



			generarHoja();
		}

		if(tipo == Tipo.Tipo2){	

			this.altura = 3*(altura/4) - random(0, altura/7);
			
			maxX = 25;

			minYp2 = 2*this.altura/3 - random(0, altura/4);
			minYp1 = altura/3 - random(0, altura/10);

			generarHoja();

			
		}

		if(tipo == Tipo.Tipo3){
			this.altura = (altura/2) - random(0, altura/7);
			
			maxX = 30;

			minYp2 = this.altura - random(0, altura/4);
			minYp1 = altura/3;

			generarHoja();

		}

		if(tipo == Tipo.Tipo4){

			this.altura = (altura/4) - random(0, altura/7);
			
			maxX = 15;

			minYp2 = this.altura - random(0, altura/4);
			minYp1 = altura/4;

			generarHoja();

		}

	}

	public void generarHoja(){

		//____________________________________ Generando la hoja en base a 
		//____________________________________ sus valores predefinidos por el tipo

		float yp2 = random(minYp2, altura);
		float yp1 = random(minYp1, yp2);
		this.xp3 = random(0, maxX);
		float xp2 =	random(0, xp3);
		float xp1 =	random(0, xp2);

		this.compZ = random(-maxX, maxX); // Añadir componente en z para profundidad

		this.aux = random(-2, 2);
		if (aux>0) {
			aux=1;
		}else {
			aux=-1;
		}


		puntos.add(new Punto3D(aux*xp3, altura, compZ));
		puntos.add(new Punto3D(aux*xp2, yp2, 0));
		puntos.add(new Punto3D(aux*xp1, yp1, 0));
		puntos.add(new Punto3D(0, 0, 0));
	}

	public void print(){
		strokeWeight(thickness);
		noFill();


		if (this.colorhoja == colorHojas.Color1){
			stroke(8, 45, 15);
		} 

		if (this.colorhoja == colorHojas.Color2){
			stroke(46, 85, 68);
		} 
		if (this.colorhoja == colorHojas.Color3){
			stroke(114, 158, 98);
		} 
		if (this.colorhoja == colorHojas.Color4){
			stroke(40, 67, 28);
		} 
		if (this.colorhoja == colorHojas.Color5) {
			stroke(45, 87, 43);
		}

		pushMatrix();
		translate(-aux*xp3, altura, compZ);
		rotateX(radians(180));
			bezier(puntos.get(0).x, puntos.get(0).y, puntos.get(0).z, 
				   puntos.get(1).x, puntos.get(1).y, puntos.get(1).z,
				   puntos.get(2).x, puntos.get(2).y, puntos.get(2).z,
				   puntos.get(3).x, puntos.get(3).y, puntos.get(3).z);
		popMatrix();

		strokeWeight(1);
	}





}
/*

		Clase que gestiona las ramas de una planta

*/

class ramal {

	int numRamas;
	float altura;
	int maxTipo;


	ArrayList<rama> ramas = new ArrayList<rama>();

	ramal(float altura, int numRamas, int tipo){
		this.maxTipo=tipo;
		this.altura = altura;
		this.numRamas = numRamas;
		generarramas();

	}

	ramal(float altura, int numRamas){
		this.altura = altura;
		this.numRamas = numRamas;
		this.maxTipo = 4;
		generarramas();
	}

	public void generarramas(){

		for (int i = 0; i < numRamas; ++i) {

			float aux = PApplet.parseInt(random(1, maxTipo+1));
				
			
			if (aux == 1) {
				
				ramas.add(new rama(Tipo.Tipo1, altura));
			}

			if (aux == 2) {
				
				ramas.add(new rama(Tipo.Tipo2, altura));

			}
			if (aux == 3) {

				ramas.add(new rama(Tipo.Tipo3, altura));
			
			}
			if (aux == 4) {

				ramas.add(new rama(Tipo.Tipo4, altura));
			
			}
		}



	}

	public void print(){

		strokeWeight(2);
		for (int i = 0; i < numRamas; ++i) {
			rama aux = ramas.get(i);
			pushMatrix();
			aux.print();
			popMatrix();
		}
		strokeWeight(1);
	}



}
  public void settings() { 	size(680, 680, P3D); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "proyecto" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
