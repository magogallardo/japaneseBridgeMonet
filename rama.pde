

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

		
		thickness = int(random(1, 3));
		
		//____________________________________ Asignando el color aleatorio de las hojas
		int aux = int(random(1, 6));


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

	void generarHoja(){

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

	void print(){
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