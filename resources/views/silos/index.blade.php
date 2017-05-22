@extends('layouts.admin')
@section('content')
@include('alerts.success')
@include('alerts.request')
@include('silos.modal')
@include('alerts.cargando') 
<input type="hidden" name="_token" value="{{ csrf_token()}}" id="token">

<div class="row">	
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	<div class="table-responsive">
	<div class="pull-left"><h1> SILOS </h1></div>
	<div class="pull-right"><button class='btn btn-success' data-toggle='modal' data-target='#myModal' >AGREGAR</button></div>
	<table class="table table-striped table-bordered table-condensed table-hover">
	<thead bgcolor=black style="color: white">	
		<th><center>ORDEN</center></th>	
		<th><center>NOMBRE</center></th>
		<th><center>CAPACIDAD TOTAL</center></th>
		<th><center>CANTIDAD ACTUAL</center></th>
		<th><center>CANTIDAD DE ALERTA</center></th>
		<th><center>TIPO ALIMENTO</center></th>
		<th><center>OPCION</center></th>
	</thead>
		 @foreach ($silo as $sil)
		<?php if ($sil->cantidad <= $sil->cantidad_minima): ?>
		 <TR align="center" style="background: MistyRose; color:red">				
		<?php else: ?>
		 <TR align="center">							
		<?php endif ?>
				<td>{{$sil->numero}}</td>		
				<td>{{$sil->nombre}}</td>
				<td >{{$sil->capacidad}} Kg.</td>
				<td >{{$sil->cantidad}} Kg.</td>
				<td >{{$sil->cantidad_minima}} Kg.</td>				
				<td >{{$sil->tipo}}</td>
				<td >
				<?php 
                if ($sil->estado == 1) {
                     echo '<button value="'. $sil->id .'" id="btnestado" onclick="estado_silo(0,this)" class="btn btn-success">ACTIVO</button>'; } 
                else{ echo '<button value="'. $sil->id .'" id="btnestado" onclick="estado_silo(1,this)" class="btn btn-warning">INACTIVO</button>'; }
				?>
				{!!link_to_route('silo.edit', $title = 'ACTUALIZAR', $parameters = $sil->id, $attributes = ['class'=>'btn btn-primary'])!!}					
				<button class="btn btn-danger" data-toggle='modal' data-target='#ModalEliminarSilo' onclick="eliminar_silo({{$sil->id}},'{{$sil->nombre}}')">ELIMINAR</button>
				</td>	
		</TR>
		@endforeach 
	</table>

	</div>
</div>

</div>

{!!Html::script('js/silo.js')!!} 
@endsection
