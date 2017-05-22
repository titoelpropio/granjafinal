@extends('layouts.admin')
@section('content')
@include('alerts.cargando')
@include('alerts.errors')
@include('alerts.request')
@include('alerts.success')

@include('controlalimento.modal')

<style type="text/css">
    table{
        border-spacing: 0px;
        border-collapse: separate;
    }
    td{
        padding: 5px;
    }
</style>
<input type="hidden" name="_token" value="{{csrf_token()}}" id="token">

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	<div class="panel panel-green">
	    <div class="panel-heading">
	         <ul class="nav nav-pills">
	            <li class="active"><a href="{!!URL::to('controlalimento')!!}">CONTROL ALIMENTO</a></li>   
	            <li class=""><a href="{!!URL::to('rango')!!}">AGREGAR RANGOS</a></li>    	                             
	        </ul>
	    </div> 
	</div> 
</div> 

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">


	<!--table class="table table-striped table-bordered table-condensed table-hover"-->
    <div class="table-responsive">
<h1>CONTROL DE ALIMENTO</h1> 
    <button class="btn btn-success" data-toggle='modal' data-target='#myModalReplicar'>Replicar</button>
<div class="pull-right"></div>
     <table id="detalles" class="table table-striped table-bordered table-condensed table-hover">
                     
	    <thead bgcolor=black style="color: white; font-size: 16px">
			<th width="150"><CENTER>Grupo Numero</CENTER></th>
			<th width="180"><CENTER>Fecha de Creacion</CENTER></th>
			<th width="180"><CENTER>Galpon</CENTER></th>
			<th width="445"><CENTER>OPCION</CENTER></th>	
		</thead>
		<tbody>
			 @foreach ($grupo as $cons)
		<tr style="text-align: center" onmouseover="this.style.backgroundColor='#F6CED8'" onmouseout="this.style.backgroundColor='white'">
			<td width="150"><CENTER>{{$cons->nro_grupo}} </CENTER></td>
			<td width="150"><CENTER>{{$cons->fecha}}</CENTER></td>		
			<td>sin galpon</td>
		
			<td>
			<button onclick="actualizar_control({{$cons->id}})" data-toggle='modal' data-target='#myModal' class="btn btn-primary">ACTUALIZAR</button>				
			<button onclick="eliminar_control()" class="btn btn-danger">ELIMINAR</button>
			</CENTER></td>
		</tr>
		@endforeach 

		</tbody>
    </table>
   
	
</div>
  {!!Html::script('js/control_alimento.js')!!} 
  <script src="{{asset('js/bootstrap-select.min.js')}}"></script> 
@endsection

 