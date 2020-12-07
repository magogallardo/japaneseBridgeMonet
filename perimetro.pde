//______________________ Dibuja el perímetro donde se dibujará
void drawPerimeter(){

	float sphereSize = 5;
	float perimeterSize = 500;

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
		translate(0, 0, perimeterSize);
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
				translate(0, 0, perimeterSize);	
			}
		popMatrix();

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

	popMatrix();
		

}	