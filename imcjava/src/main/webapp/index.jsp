<!DOCTYPE html>

<head>
	<title>IMC</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="bots.css"/>
</head>

<body>
<br>
<br>
<div class="col-lg-6">
<div class="well bs-component">	
<form class="form-horizontal">
  <fieldset>
    <legend><h1>IMC</h1></legend>
    
    <div class="form-group">
		<label class="control-label" for="inputSmall">Peso(kg):</label>
		<input class="form-control input-sm" type="text" id="peso" name="peso">
	</div>

	<div class="form-group">
		<label class="control-label" for="inputSmall">Altura(cm):</label>
		<input class="form-control input-sm" type="text" id="altura" name="altura">
	</div>
    
    
    <div class="form-group">
      <label class="control-label" for="inputSmall">Sexo:</label>
     <select class="form-control" name="selectsexo">
		  <option value="1">Masculino</option>
		  <option value="2">Feminino</option>
		</select>
	  </div>

		
    <div class="form-group">
      <div class="col-lg-5 col-lg-offset">
        <button type="submit" class="btn btn-default">Calcular</button>
      </div>
    </div>



	<%

		String pesoStr = request.getParameter("peso");
		if(pesoStr == null) {
			pesoStr = "0";
		}
		Double pesoD = Double.parseDouble(pesoStr);
		
		String alturaStr = request.getParameter("altura");
		if(alturaStr == null) {
			alturaStr = "0";
		}
		Double alturaD = Double.parseDouble(alturaStr);
		
		String sexoStr = request.getParameter("selectsexo");
		if(sexoStr == null) {
			sexoStr = "1";
		}
		int sexo = Integer.parseInt(sexoStr);
		
		
		
		Double imc=pesoD/((alturaD*alturaD)/10000);
		
	%>


     <div class="form-group">
     <h2>Resustado: 
     
     <% if(sexo==1) {
				if(imc<20.7){
					out.println("Abaixo do peso ideal!\nIMC: "+imc);
				} else if(imc>20.8&&imc<26.4) {
					out.println("Peso normal!\nIMC: "+imc);
				} else if(imc>26.4&&imc<27.8) {
					out.println("Marginalmente acima do peso!\nIMC: "+imc);
				} else if(imc>=27.8&&imc<=31.1) {
					out.println("Acima do peso ideal!\nIMC: "+imc);
				} else if(imc>31.1) {
					out.println("Obeso!\nIMC: "+imc);
				}
			}else if(sexo==2) {
				if(imc<19.1){
					out.println("Abaixo do peso ideal!\nIMC: "+imc);
				} else if(imc>=19.1&&imc<=25.8) {
					out.println("Peso normal!\nIMC: "+imc);
				} else if(imc>=25.9&&imc<=27.3) {
					out.println("Marginalmente acima do peso!\nIMC: "+imc);
				} else if(imc>=27.4&&imc<=32.3) {
					out.println("Acima do peso ideal!\nIMC: "+imc);
				} else if(imc>32.3) {
					out.println("Obeso!\nIMC: "+imc);
				}
			}
	%>
	
	 </h2>     
     </div>
    
  </fieldset>
</form>

	<table class="table table-striped table-hover">
				<tbody>
				<tr ><th>Condição</th><th>IMC em Mulheres</th><th>IMC em Homens</th></tr>
				<tr><td>abaixo do peso</td><td>&lt; 19,1</td><td>&lt; 20,7</td></tr>
				<tr><td>no peso normal</td><td>19,1 - 25,8</td><td>20,7 - 26,4</td></tr>
				<tr><td>marginalmente acima do peso</td><td>25,8 - 27,3</td><td>26,4 - 27,8</td></tr>
				<tr><td>acima do peso ideal</td><td>27,3 - 32,3</td><td>27,8 - 31,1</td></tr>
				<tr><td>obeso</td><td>&gt; 32,3</td><td>&gt; 31,1</td></tr>
				</tbody>
	</table>

</div>
</div>
</body>

</html>
