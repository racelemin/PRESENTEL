<?php
require "consulta-asistencia.php";
$usuario = new Consulta();
$salida = "";
$salida.="<table>";
$salida.="<thead> <th>ID</th><th>tipo</th><th>fecha</th><th>id_estudiante</th><th>id_grado</th></thead>";
foreach($usuario->buscar()as $a){
$salida.="<tr> <td>".$a->id."</td> <td>".$a->tipo."</td><td>".$a->fecha."</td><td>".$a->id_estudiante."</td><td>".$a->id_grado.".</tr>";    
}
$salida.="</table>";

header("Content-type: application/vnd.ms-excel");
header("Content-Disposition: attachment; filename=aprendices".time().".xls");
header("Pragma: no-cache");
header("Expires:0");
echo $salida;