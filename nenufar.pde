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

	void print(){

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