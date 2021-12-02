<div class="row">
	<div class="col-md-12">
<div class="btn-group pull-right">
  <!-- Button trigger modal -->
<button type="button" class="btn btn-info" data-toggle="modal" data-target="#exampleModalCenter">
  <i class="fa fa-question-circle"></i> Ayuda
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-body">
        En esta pagina se muestra todos las grados que se te a sido asignado en el cual podras: <br>
        <li>Registrar la asistencia de alumnos</li>
        	<b>Para entar a estas opciones haga click en </b></li><span class="btn btn-success btn-xs">Opciones<i class="fa fa-arrow-right"></i></span> en la lista de fichas
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Entendido</button>
      </div>
    </div>
  </div>
</div>
</div>
		<h1>Todas mis Fichas</h1>
<br>
		<?php

		$grados = GradData::getFavoritesByUserId($_SESSION["user_id"]);
		if(count($grados)>0){
			// si hay usuarios
			?>

			<table class="table table-bordered table-hover">
			<thead>
			<th></th>
			<th>Fichas</th>
			<th>Trimestre</th>
			</thead>
			<?php
			foreach($grados as $grado){
				?>
				<tr>
				<td style="width:130px;"><a href="index.php?action=selectteam&id=<?php echo $grado->id_grado;?>" class="btn btn-success btn-xs">Opciones <i class="fa fa-arrow-right"></i></a></td>
				<td><a href="./?view=grado&id=<?php echo $grado->id;?>"><?php echo $grado->nombre; ?></a></td>
				<td><a href="./?view=grado&id=<?php echo $grado->id;?>"><?php echo $grado->nivel; ?></a></td>
				
				</tr>
				<?php

			}
			echo "</table>";

		}else{
			echo "<p class='alert alert-danger'>No hay Fichas</p>";
		}


		?>


	</div>
</div>