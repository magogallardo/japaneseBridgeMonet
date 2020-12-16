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

	void generarHojas(){

		for (int i = 0; i < numHojas; ++i) {

			float aux = int(random(1, maxTipo+1));
				
			
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

	void print(){

		for (int i = 0; i < numHojas; ++i) {
			hoja aux = Hojas.get(i);
			pushMatrix();
			aux.print();
			popMatrix();
		}
	}



}