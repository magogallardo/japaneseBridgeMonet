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




void moveCamera(){

	camera(cameraXPos, cameraYPos, cameraZPos, lookAtX, lookAtY, lookAtZ, 
       0.0, 1.0, 0.0);


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
