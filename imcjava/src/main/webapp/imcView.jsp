<!DOCTYPE html>

<head>
	<title>IMC</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/bots.css"/>
</head>

<body>
<br>
<br>
<div class="col-lg-6">
<div class="well bs-component">	
<form class="form-horizontal">
  <fieldset>
    <legend><h1>IMC</h1></legend>
    
    <div class="form-group col-lg-12">
		<label class="control-label" for="inputSmall">Peso(kg):</label>
		<input class="form-control input-sm col-lg-5" type="text" id="peso" name="peso">
	</div>

	<div class="form-group col-lg-12">
		<label class="control-label" for="inputSmall">Altura(cm):</label>
		<input class="form-control input-sm" type="text" id="altura" name="altura">
	</div>
    
    
    <div class="form-group col-lg-12">
      <label class="control-label" for="inputSmall">Sexo:</label>
     <select class="form-control" name="selectsexo">
		  <option value="0">Masculino</option>
		  <option value="1">Feminino</option>
		</select>
	  </div>

		
    <div class="form-group">
      <div class="col-lg-5 col-lg-offset">
        <button type="submit" class="btn btn-default">Calcular</button>
      </div>
    </div>

     <div class="form-group col-lg-12">
     <h2>Resustado: </h2> <h2>${resultado}</h2>    
     </div>
    
  </fieldset>
</form>

	<table class="table table-striped table-hover">
				<tbody>
				<tr ><th>Condicao</th><th>IMC em Mulheres</th><th>IMC em Homens</th></tr>
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
