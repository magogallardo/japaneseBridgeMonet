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
	Proyecto final de Geometría Computacional


*/


PShape s;
float rotateDog = 0;

//Configuración

//_____________________________ Mostrar perimetro
boolean showPerimeter = true;
boolean showPond = true;


//________________ Definición de ventana
public void setup() {
	
	s = loadShape("model.obj");
}


//_____________ Función principal de dibujado
public void draw(){

	//_______________________ Color de fondo
	background(0xffB2C899);
	
	//________________ Actualiza la cámara
	moveCamera();

	//________________ Dibuja el perímetro	
	if(showPerimeter)
		drawPerimeter();

	if(showPond)
		drawPond();
	


	

	System.out.println(cameraXPos + ", " + cameraYPos + ", " + cameraZPos + "\nLooking at: " + lookAtX + ", " + lookAtY + ", " + lookAtZ);

}


/*
	Configuración de cámara

*/


//________________________ Variables globales iniciales
float cameraXPos = 150;
float cameraYPos = 150;
float cameraZPos = 900;

float lookAtX = 0;
float lookAtY = 0;
float lookAtZ = 0;

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
float profundidadEstanque = 100;

public void drawPond(){
	
	fill(0, 166, 181);

	pushMatrix();
		translate(0, perimeterSize, 0);
		rotateX(radians(90));
		rect(0, 0, perimeterSize, perimeterSize*2);
		translate(0,0, profundidadEstanque);
		rect(0, 0, perimeterSize, perimeterSize*2);
	popMatrix();



}

class model{

	boolean showBBox = false;

	//ArrayList<Point3D> BoundingBox = new ArrayList<Point3D>();

	model(){

	}


}


	float sphereSize = 5;
	float perimeterSize = 300;

	
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
