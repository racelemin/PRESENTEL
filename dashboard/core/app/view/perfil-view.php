

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Perfil del usuario   <?php echo Core::$user->lastname;?></a></h1>

    <form class="form-horizontal" method="post" id="addproduct" action="./?action=users&sa=update" role="form">
	<input type="hidden" name="id_prof" value="<?php echo Core::$user->id;?>">
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Nombre*</label>
    <div class="col-md-6">
      <input type="text" readonly="readonly" value="<?php echo Core::$user->name;?>" name="name" class="form-control" id="name" placeholder="Nombre">
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Apellido*</label>
    <div class="col-md-6">
      <input type="text" readonly="readonly" value="<?php echo Core::$user->lastname;?>" name="lastname" required class="form-control" id="lastname" placeholder="Apellido">
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Nombre de usuario(DNI)</label>
    <div class="col-md-6">
      <input type="text" readonly="readonly" value="<?php echo Core::$user->username;?>" name="username" class="form-control" required id="username" placeholder="Nombre de usuario">
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Email</label>
    <div class="col-md-6">
      <input type="text" readonly="readonly" value="<?php echo Core::$user->email;?>" name="email" class="form-control" id="email" placeholder="Email">
    </div>
  </div>
  <div class="form-group">
    <div class="col-md-6">
    </div>
  </div>
  <input type="hidden" name="kind" value="0">
  <div class="form-group">
    <div class="col-lg-offset-2 col-lg-10">
    <div class="form-group">
   
      <button type="button" onclick = "location='./?view=home'" class="btn btn-warning">Volver</button>
    </div>
  </div>
</form>
    
    
</body>
</html>