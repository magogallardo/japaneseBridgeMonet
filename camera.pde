/*
	Configuración de cámara

*/


//________________________ Variables globales iniciales
float cameraXPos = width/2;
float cameraYPos = height/2;
float cameraZPos = width/2;

float lookAtX = 0;
float lookAtY = 0;
float lookAtZ = 0;

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


		if(key == CODED){
			if (keyCode == SHIFT)
				cameraYPos+=speed;
				
		}
	}

	lookAtX = cameraXPos + mouseX - width/2;
	lookAtY = cameraYPos + mouseY - height/2;
	lookAtZ = cameraZPos - 100;

}
