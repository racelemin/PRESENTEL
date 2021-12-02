<?php
require "consulta-aprendiz.php";
$usuario = new Consulta();
$salida = "";
$salida.="<table>";
$salida.="<thead> <th>ID</th> <th>DNI</th><th>APELLIDO PATERNO</th><th>APELLIDO MATERNO</th><th>NOMBRE</th><th>GENERO</th><th>FECHA NACIMIENTO</th><th>APODERADO</th><th>CELULAR</th><th>DIRECCION</th><th>ESTADO</th><th>FECHA REGISTRO</th></thead>";
foreach($usuario->buscar()as $r){
$salida.="<tr> <td>".$r->id_estudiante."</td> <td>".$r->dni."</td><td>".$r->apellido_paterno."</td><td>".$r->apellido_materno."</td><td>".$r->nombre."</td><td>".$r->genero."</td><td>".$r->fecha_nac."</td><td>".$r->apoderado."</td><td>".$r->num_cel."</td><td>".$r->direccion."</td><td>".$r->estado."</td><td>".$r->fecha_reg."</td></tr>";    
}
$salida.="</table>";

header("Content-type: application/vnd.ms-excel");
header("Content-Disposition: attachment; filename=aprendices".time().".xls");
header("Pragma: no-cache");
header("Expires:0");
echo $salida;