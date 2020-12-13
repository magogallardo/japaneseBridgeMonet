/*

		Clase que gestiona las ramas de una planta

*/

class ramal extends objeto{

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

	void generarramas(){

		for (int i = 0; i < numRamas; ++i) {

			float aux = int(random(1, maxTipo+1));
				
			
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

	void print(){

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