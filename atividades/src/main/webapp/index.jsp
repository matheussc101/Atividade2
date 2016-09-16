<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cálculo IMC</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
  <div class="container">
      <form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Gestão Acadêmica</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="frequencia">Frequência</label>  
  <div class="col-md-4">
  <input id="frequencia" name="frequencia" type="text" placeholder="Digite a frequência" class="form-control input-md">
  <span class="help-block">Ex.: 75.0</span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="nota">Nota</label>  
  <div class="col-md-4">
  <input id="nota" name="nota" type="text" placeholder="Digite a nota" class="form-control input-md" required="">
  <span class="help-block">Ex.: 7.6</span>  
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="validar"></label>
  <div class="col-md-4">
    <button id="validar" name="validar" class="btn btn-primary">Validar</button>
  </div>
</div>

</fieldset>
</form>

  </div>
</body>
</html>
