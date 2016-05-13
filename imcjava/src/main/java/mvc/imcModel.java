package mvc;

public class imcModel{

	public static String calcular(double peso, double altura, int sexo ){
		double imc=peso/((altura*altura)/10000);
		String resultado = " ";
		if(sexo==0) {
			if(imc<20.7){
				resultado = ("Abaixo do peso ideal!\nIMC: "+imc);
			} else if(imc>20.8&&imc<26.4) {
				resultado = ("Peso normal!\nIMC: "+imc);
			} else if(imc>26.4&&imc<27.8) {
				resultado = ("Marginalmente acima do peso!\nIMC: "+imc);
			} else if(imc>=27.8&&imc<=31.1) {
				resultado = ("Acima do peso ideal!\nIMC: "+imc);
			} else if(imc>31.1) {
				resultado = ("Obeso!\nIMC: "+imc);
			}
		}
		else if(sexo==1) {
			if(imc<19.1){
				resultado = ("Abaixo do peso ideal!\nIMC: "+imc);
			} else if(imc>=19.1&&imc<=25.8) {
				resultado = ("Peso normal!\nIMC: "+imc);
			} else if(imc>=25.9&&imc<=27.3) {
				resultado = ("Marginalmente acima do peso!\nIMC: "+imc);
			} else if(imc>=27.4&&imc<=32.3) {
				resultado = ("Acima do peso ideal!\nIMC: "+imc);
			} else if(imc>32.3) {
				resultado = ("Obeso!\nIMC: "+imc);
			}
		}
		return resultado;
	}
}
