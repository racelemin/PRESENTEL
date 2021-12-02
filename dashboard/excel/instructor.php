<?php
require "consulta-instructor.php";
$usuario = new Consulta();
$salida = "";
$salida.="<table>";
$salida.="<thead> <th>ID</th> <th>DNI</th><th>NOMBRES</th><th>APELLIDOS</th><th>CELULAR</th><th>ESPECIALIDAD</th><th>EMAIL</th><th>DIRECCION</th></thead>";
foreach($usuario->buscar()as $r){
$salida.="<tr> <td>".$r->id_prof."</td> <td>".$r->dni."</td><td>".$r->nombres."</td><td>".$r->apellidos."</td><td>".$r->num_cel."</td><td>".$r->especialidad."</td><td>".$r->email."</td><td>".$r->direccion."</td></tr>";    
}
$salida.="</table>";

header("Content-type: application/vnd.ms-excel");
header("Content-Disposition: attachment; filename=instructores".time().".xls");
header("Pragma: no-cache");
header("Expires:0");
echo $salida;