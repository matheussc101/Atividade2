<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cálculo IMC</title>
<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
  <div class="container">
      <form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Gestão Acadêmica</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="frequencia">Aluno</label>  
  <div class="col-md-4">
  <input id="aluno" name="aluno" type="text" placeholder="Digite a frequência" class="form-control input-md" value="${param.aluno}">
  <span class="help-block">Ex.: João Antônio</span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="frequencia">Frequência</label>  
  <div class="col-md-4">
  <input id="frequencia" name="frequencia" type="number" placeholder="Digite a frequência" class="form-control input-md" value="${param.frequencia}">
  <span class="help-block">Ex.: 75.0</span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="nota">Nota</label>  
  <div class="col-md-4">
  <input id="nota" name="nota" type="number" placeholder="Digite a nota" class="form-control input-md" required="" value="${param.nota}">
  <span class="help-block">Ex.: 7.6</span>  
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="validar"></label>
  <div class="col-md-4">
    <button class="btn btn-primary">Validar</button>
  </div>
</div>
<b> ${resultado} </b>
</form>

  </div>
  
</body>
</html>
